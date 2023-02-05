//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 04/02/2023.
//

import Foundation

guard let dataUrl = Bundle.module.url(forResource: "extension_api", withExtension: "json") else {
    fatalError("extension_api.json not found")
}
let data = try Data(contentsOf: dataUrl)
let decodedData = try JSONDecoder().decode(ExtensionApi.self, from: data)

let config = "double_64"

print("Generating bindings for version: ", decodedData.header.version_full_name)

guard let builtin_sizes = decodedData.builtin_class_sizes.first(where: { $0.build_configuration == config }) else {
    fatalError("Failed to fetch builtin sizes for config \(config)")
}

guard let builtin_member_offsets = decodedData.builtin_class_member_offsets.first(where: { $0.build_configuration == config }) else {
    fatalError("Failed to fetch builtin member offsets for config \(config)")
}

print("==> Builtin classes")
for builtin_class in decodedData.builtin_classes {
    guard !["int", "float", "bool", "String", "Nil"].contains(builtin_class.name) else {
        print("    skipping \(builtin_class.name)")
        continue
    }
    guard ["StringName"].contains(builtin_class.name) else {
        print("    skipping \(builtin_class.name)")
        continue
    }
    
    export_builtin_class(builtin_class, decodedData)
}

