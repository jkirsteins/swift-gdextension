//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 05/02/2023.
//

import Foundation
import XMLCoder

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

func get_docs(_ name: String) -> Doc? {
    let res = "docs/doc/classes/\(name)"
    guard let dataUrl = Bundle.module.url(forResource: res, withExtension: "xml") else {
        fatalError("\(res) not found")
        return nil
    }
    let xmlData = try! Data(contentsOf: dataUrl)
    
    let decoder = XMLDecoder()
//    decoder.s
    let s = String(decoding: xmlData, as: UTF8.self)
    
    let decodedData = try! XMLDecoder().decode(Doc.self, from: Data(s.utf8))
    
    return decodedData
}

struct Doc_Constructor_Return: Codable {
    let type: String
}

struct Doc_Constructor: Codable {
    let name: String
    let `return`: Doc_Constructor_Return
    let description: String
    let `params`: [Doc_Constructor_Param]
}

struct Doc_Methods: Codable {
    let method: [Doc_Method]
}

typealias Doc_Constructor_Param = Doc_Method_Param

typealias Doc_Method_Return = Doc_Constructor_Return

struct Doc_Method_Param: Codable {
    let index: Int
    let name: String
    let type: String
}

typealias Doc_Operator_Param = Doc_Method_Param

struct Doc_Method: Codable {
    let name: String
    let qualifiers: String
    let `param`: [Doc_Method_Param]
    let `return`: Doc_Method_Return
    let description: String
}

struct Doc_Operators: Codable {
    let `operator`: [Doc_Operator]
}

typealias Doc_Operator_Return = Doc_Constructor_Return

struct Doc_Operator: Codable {
    let name: String
    let `return`: Doc_Operator_Return
    let `param`: [Doc_Operator_Param]
    let description: String
}

struct Doc_Constructors: Codable {
    let constructor: [Doc_Constructor]
}

struct Doc: Codable {
    let brief_description: String
    let description: String
    let constructors: Doc_Constructors
    let methods: Doc_Methods
    let operators: Doc_Operators
}

extension String {
  
    /// A collection of all the words in the string by separating out any punctuation and spaces.
    var words: [String] {
        return components(separatedBy: CharacterSet.alphanumerics.inverted).filter { !$0.isEmpty }
    }
    
    func titlecasedWords() -> [String] {
        return self.replacingOccurrences(of: "([A-Z])", with: " $1", options: .regularExpression, range: self.range(of: self))
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .split(separator: " ")
            .map { String($0) }
    }

    /// Returns an uppercased copy of the string with punctuation removed and spaces replaced
    /// by a single underscore, e.g., "THE_QUICK_BROWN_FOX_JUMPS_OVER_THE_LAZY_DOG".
    ///
    /// *Upper snake case* (or, illustratively, *SNAKE_CASE*) is also known as
    /// *screaming snake case*.
    func upperSnakeCased() -> String {
        return self.titlecasedWords().map({ $0.uppercased() }).joined(separator: "_")
    }

}

func export_builtin_class(
    _ data: ExtensionApi_BuiltinClass,
    _ sizes: ExtensionApi_BuiltinClassSizeConfiguration,
    _ memberOffsets: ExtensionApi_BuiltinClassMemberOffsetsConfiguration,
    _ fullData: ExtensionApi
) {
    let doc = get_docs(data.name)
    
    guard let builtin_size = sizes.sizes.first(where: { $0.name == data.name }) else {
        fatalError("Couldn't determine size for \(data.name)")
    }
    
    func _init_constructor_bindings() -> String {
        var res: [String] = []
        let indent = "        "
        for c in data.constructors {
            res.append("\(indent)\(data.name)._constructor_\(c.index) = \(data.name).interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_\(data.name.upperSnakeCased()), \(c.index))")
            res.append("\(indent)assert(\(data.name)._constructor_\(c.index) != nil)")
        }
        if data.has_destructor {
            res.append("\(indent)\(data.name)._destructor = \(data.name).interface.pointee.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_\(data.name.upperSnakeCased()))")
            res.append("\(indent)assert(\(data.name)._destructor != nil)")
        }
        
        let result = res.joined(separator: "\n")
        return String(result[result.index(result.startIndex, offsetBy: indent.count)...])
    }
    
    func _init_constructor_fields() -> String {
        var res: [String] = []
        let indent = "    "
        for c in data.constructors {
            res.append(
"\(indent)static var _constructor_\(c.index): GDExtensionPtrConstructor? = nil")
        }
        
        let result = res.joined(separator: "\n")
        return String(result[result.index(result.startIndex, offsetBy: indent.count)...])
    }
    
    let _emptyDoc = "/// Godot documentation missing"
    
    func _add_class_doc() -> String {
        var res: [ [String] ] = []
        if let bd = doc?.brief_description {
            res.append(["\(bd)"])
        }
        if let desc = doc?.description {
            res.append([""])
            res.append(desc.split(separator: "\n").map { String($0) })
        }
        
        return res.flatMap({ $0 }).map { "/// \($0)" }.joined(separator: "\n")
    }
    
    func _init_constructors() -> String {
        var res: [ [String] ] = []
        let indent = "    "
        
        let stringDepth = 0
        
        // for marshalling string args
        var marshalled: [String] = []
        
        for c in data.constructors {
            let args = (c.arguments ?? [])
            
            marshalled = args.filter({ $0.type == "String" }).map { $0.name }
            
            func _prepMarshalledStrings() -> String {
                var res = [String]()
                let indent = "        "
                for marsh in marshalled {
                    res.append("\(indent)let \(marsh)_nativeStr = \(marsh)._create_native__kept()")
                    res.append("\(indent)defer { \(marsh)_nativeStr.deallocate() }")
                }
                guard res.count > 0 else { return "" }
                let result = res.joined(separator: "\n")
                return String(result[result.index(result.startIndex, offsetBy: indent.count)...])
            }
            
            let argSig = args.map { "\($0.name): \($0.type)" }
            let argInit = args.map { arg in
                if marshalled.contains(arg.name) {
                    return ".init(\(arg.name)_nativeStr.baseAddress!)"
                } else {
                    return ".init(\(arg.name)._native_ptr())"
                }
            }
            
            func _add_constructor_doc() -> String {
                let cdocs: [Doc_Constructor] = doc?.constructors.constructor ?? []
                let _empty = "/// Godot documentation missing"
                guard cdocs.count > c.index else {
                    return _empty
                }
                
                let cd = cdocs[c.index]
                
                var res: [String] = []
                if cd.description.isEmpty {
                    res.append(_empty)
                } else {
                    res.append("/// \(cd.description)")
                }
                for cdarg in cd.`params` {
                    res.append("/// - Parameter \(cdarg.name): \(cdarg.type)")
                }
                return res.joined(separator: ", ")
            }
                                                                                    
            let constructorLines =
"""

\(_add_constructor_doc())
public init(\(argSig.joined(separator: ", "))) {
    \(_prepMarshalledStrings())
    let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: \(args.count))
    defer { args.deallocate() }
    _ = args.initialize(from: [
        \(argInit.joined(separator: ", "))
    ])
    Self._constructor_\(c.index)!(self._native_ptr(), .init(args.baseAddress!))
}

""".split(separator: "\n").map { "\(indent)\($0)" }
            res.append(constructorLines)
        }
        
        let result = res.flatMap { $0 }.joined(separator: "\n")
        return String(result[result.index(result.startIndex, offsetBy: indent.count)...])
    }
    
    let output =
"""
// autogenerated

import godot_native

extension ClassInitializer {
    static func initializeMethodBindings_\(data.name)() {
        
    }
    
    static func initializeConstructorBindings_\(data.name)() {
        \(_init_constructor_bindings())
    }
}

\(_add_class_doc())
public class \(data.name) : BuiltinClass {
    public static let SIZE = \(builtin_size.size);

    public let opaque: UnsafeMutableBufferPointer<UInt8> = .allocate(capacity: SIZE)

    static var _destructor: GDExtensionPtrDestructor? = nil

    \(_init_constructor_fields())

    \(_init_constructors())
    
    deinit {
        Self._destructor?(self._native_ptr())
        opaque.deallocate()
    }
}

"""
    
    let dirurl = URL(filePath: "gen/builtin")
    let fileurl = dirurl.appending(component: "\(data.name).swift")
    
    try! FileManager.default.createDirectory(at: dirurl, withIntermediateDirectories: true)
    
    try! output.write(to: fileurl, atomically: true, encoding: String.Encoding.utf8)
    
    print("    generated \(fileurl.path)")
}
