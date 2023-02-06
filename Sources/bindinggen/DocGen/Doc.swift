import XMLCoder
import Foundation

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
    let qualifiers: String?
    let `params`: [Doc_Method_Param]
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
    let constructors: Doc_Constructors?
    let methods: Doc_Methods?
    let operators: Doc_Operators?
}
