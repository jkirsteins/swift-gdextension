import Foundation
import XMLCoder

protocol GodotEnumValue {
    var name: Swift.String { get }
    var value: Int { get }
}

protocol GodotEnum {
    associatedtype EnumValue: GodotEnumValue
    
    var name: Swift.String { get }
    var is_bitfield: Bool? { get }
    var values: [EnumValue] { get }
}

extension GodotEnum {
    var areValuesUnique: Bool {
        let values = values.map { $0.value }
        let valueSet = Set(values)
        return values.count == valueSet.count
    }
}

struct EnumCaseRenderable: Renderable {
    let en: any GodotEnum
    let areValuesUnique: Bool
    let indent: Int
    
    static let BITFIELD_VALUE_CASE_TEMPLATE = "static let ${name} = ${enumName}(rawValue: ${value})"
    static let BITFIELD_EMPTY_CASE_TEMPLATE = "static let ${name}: ${enumName} = []"
    static let NORMAL_CASE_TEMPLATE = "case ${name} = ${value}"
    
    func render() -> String {
        let cases = en.values.map { _case in
            let template: String
            if en.is_bitfield == true {
                if _case.value == 0 {
                    template = Self.BITFIELD_EMPTY_CASE_TEMPLATE
                } else {
                    template = Self.BITFIELD_VALUE_CASE_TEMPLATE
                }
            } else if !areValuesUnique {
                // some enums have duplicated values. Don't use enum for this
                template = Self.BITFIELD_VALUE_CASE_TEMPLATE
            } else {
                template = Self.NORMAL_CASE_TEMPLATE
            }
            
            return TemplatedRenderable(variables: [
                "name": _case.name,
                "value": _case.value,
                "enumName": en.name,
            ], template: template, indent: 0)
        }
        return MultiLineRenderable(lines: cases, indent: indent, prefix: nil).render()
    }
}

struct EnumRenderable: Renderable {
    let en: any GodotEnum
    
    // Global enums can be wrapped in extensions
    let isGlobal: Bool
    
    static let OPT_GLOBAL_WRAPPER = """
extension ${wrappedName} {
    ${body}
}
"""
    
    static let BITFIELD_TEMPLATE_WRAPPER = """
public struct ${name}: OptionSet {
    public let rawValue: Int32

    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }

    ${body}
}
"""
    
    static let ENUM_WITH_DUPES_WRAPPER = """
public struct ${name}: RawRepresentable {
    public let rawValue: Int32

    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }

    ${body}
}
"""
    
    static let NORMAL_TEMPLATE_WRAPPER = """
public enum ${name} : Int32 {
    ${body}
}
"""
    
    func render() -> String {
        
        let nameParts = self.en.name.split(separator: ".").map { String($0) }
        guard nameParts.count == 1 || nameParts.count == 2 else {
            fatalError("Unsupported name for \(en.name)")
        }
        
        guard nameParts.count == 1 || isGlobal else {
            fatalError("Only global enums are allowed to have multiple name parts (\(en.name))")
        }
        
        let shouldWrap = nameParts.count == 2
        let enumName = nameParts.last!
        let wrappedName = !shouldWrap ? "" : nameParts.first!
        
        let areValuesUnique = en.areValuesUnique
        let template = en.is_bitfield == true ? Self.BITFIELD_TEMPLATE_WRAPPER : (areValuesUnique ? Self.NORMAL_TEMPLATE_WRAPPER : Self.ENUM_WITH_DUPES_WRAPPER)
        let wrapper = TemplatedRenderable(
            variables: [
                "name": enumName.sanitizedName,
                "body": EnumCaseRenderable(en: self.en, areValuesUnique: areValuesUnique, indent: 4)
            ],
            template: template,
            indent: shouldWrap ? 4 : 0)
        
        guard shouldWrap else {
            return wrapper.render()
        }
        
        let globalWrapper = TemplatedRenderable(
            variables: ["wrappedName": wrappedName, "body": wrapper],
            template: Self.OPT_GLOBAL_WRAPPER,
            indent: 0)
        return globalWrapper.render()
    }
}

struct DocRenderable_Header: Renderable {
    let doc: Doc?
    let indent: Int
    
    func render() -> String {
        DocMultiLineRenderable(lines: [
            doc?.brief_description ?? "MISSING GODOT DOCUMENTATION",
            SKIP_LINE,
            doc?.description ?? ""
        ], indent: indent, prefix: "/// ").render()
    }
}

func export_godot_enum(
    _ sut: ExtensionApi_GlobalEnum,
    _ sizes: ExtensionApi_BuiltinClassSizeConfiguration,
    _ full: ExtensionApi
) {
    let doc = get_docs(sut.name)
    
    let enumOutput = EnumRenderable(en: sut, isGlobal: true)
    let docOutput = DocRenderable_Header(doc: doc, indent: 0)
    
    let combined = MultiLineRenderable(lines: [
        docOutput,
        enumOutput
    ], indent: 0, prefix: nil)
    
    let output = combined.render()
    
    
    print("    generated \(_store(output, "global_enum", sut.name).path)")
}
