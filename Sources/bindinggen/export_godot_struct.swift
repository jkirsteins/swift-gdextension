import Foundation
import XMLCoder

struct StructRenderable: Renderable {
    let config: ExtensionApi_BuiltinClassSizeConfiguration
    let st: ExtensionApi_NativeStructure
    
    static let STRUCT_WRAPPER = """
public struct ${structTypeName} {
    ${body}
}
"""
    
    static let STRUCT_MEMBER = """
var ${memberName}: ${memberType} ${optAssignment}
"""
    
    static let STRUCT_MEMBER_FIX_SIZE_ARRAY = """
var ${memberName}: UnsafeBufferPointer<${memberType}>
"""
    
    static let STRUCT_MEMBER_POINTER = """
var ${memberName}: UnsafePointer<${memberType}>
"""
    
    func render() -> String {
        
        // split into [type, name, [optional value]]
        let members = st.format.split(separator: ";").map({ $0.split(separator: "=") })
            .map { oneOrTwoValues in
                var result: [String?]
                if oneOrTwoValues.count == 1 {
                    result = oneOrTwoValues[0].split(separator: " ").map({ String($0) })
                    result.append(nil)
                } else {
                    result = oneOrTwoValues[0].split(separator: " ").map({ String($0) })
                    result.append(String(oneOrTwoValues[1]))
                }
                return result
            }
            //.map({ $0.split(separator: " ").map({String($0)}) })
        
        let memberLines = members.map { member in
            
            guard member.count == 3, let mname = member[1], let mtype = member[0] else {
                fatalError("Could not generate \(st.name)")
            }
            
            let mval: String? = member.last!
            
            // TODO: hack to detect pointers
            if mname.contains("*") {
                return TemplatedRenderable(
                    variables: [
                        "memberName": mname.sanitizedPointerName,
                        "memberType": ConfigurationSpecificType(config: config, type: mtype).sanitizedType
                    ],
                    template: Self.STRUCT_MEMBER_POINTER,
                    indent: 4)
            }
            
            // TODO: hack to detect fixed-size arrays
            if mname.contains("[") {
                return TemplatedRenderable(
                    variables: [
                        "memberName": mname.sanitizedArrayName,
                        "memberType": ConfigurationSpecificType(config: config, type: mtype).sanitizedType
                    ],
                    template: Self.STRUCT_MEMBER_FIX_SIZE_ARRAY,
                    indent: 4)
            }
            
            return TemplatedRenderable(
                variables: [
                    "memberName": mname.sanitizedName,
                    "memberType": ConfigurationSpecificType(config: config, type: mtype).sanitizedType,
                    "optAssignment": mval != nil ? "= \(mval!.sanitizedValue)" : ""
                ],
                template: Self.STRUCT_MEMBER,
                indent: 4)
        }
        
        return TemplatedRenderable(
            variables: [
                "body": MultiLineRenderable(lines: memberLines, indent: 4, prefix: nil),
                "structTypeName": "\(st.name.sanitizedName)"],
            template: Self.STRUCT_WRAPPER,
            indent: 0).render()
    }
}

func export_godot_struct(
    _ sut: ExtensionApi_NativeStructure,
    _ sizes: ExtensionApi_BuiltinClassSizeConfiguration,
    _ full: ExtensionApi
) {
    let doc = get_docs(sut.name)
    
    let enumOutput = StructRenderable(config: sizes, st: sut)
    let docOutput = DocRenderable_Header(doc: doc, indent: 0)
    
    let combined = MultiLineRenderable(lines: [
        docOutput,
        enumOutput
    ], indent: 0, prefix: nil)
    
    let output = combined.render()
    
    
    print("    generated \(_store(output, "native_struct", sut.name).path)")
}
