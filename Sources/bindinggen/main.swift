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

let globalAllowAll = FileManager.default.fileExists(atPath: "/tmp/all") || false

print("==> Generating utility functions")
export_utility_functions(decodedData, builtin_sizes)

print("==> Generating Variant")
export_builtin_variant(builtin_sizes, builtin_member_offsets, decodedData)

print("==> Builtin classes")
for builtin_class in decodedData.builtin_classes {
    // denylist - use the native types for these
    guard !["int", "float", "bool", "Nil"].contains(builtin_class.name) else {
        print("    skipping \(builtin_class.name)")
        continue
    }
    
    // allowlist
    let allowAll = globalAllowAll || true
    guard allowAll || [
        "String"
    ].contains(builtin_class.name) else {
        print("    skipping \(builtin_class.name)")
        continue
    }
    
    export_builtin_class(
        builtin_class,
        builtin_sizes,
        builtin_member_offsets,
        decodedData)
}

// TODO: refactor typealias gen
//print("==> Typealiases")
//var _tals = """
//import godot_gen
//
//public typealias Wrapped = godot_gen.Wrapped
//public typealias Utility = godot_gen.Utility
//"""
//for godot_builtin in decodedData.builtin_classes {
//    _tals = "\(_tals)\npublic typealias \(godot_builtin.name) = godot_gen.\(godot_builtin.name)"
//}
//for godot_class in decodedData.classes {
//    _tals = "\(_tals)\npublic typealias \(godot_class.name) = godot_gen.\(godot_class.name)"
//}
//for godot_st in decodedData.native_structures {
//    _tals = "\(_tals)\npublic typealias \(godot_st.name) = godot_gen.\(godot_st.name)"
//}
//for godot_e in decodedData.global_enums {
//    _tals = "\(_tals)\npublic typealias \(godot_e.name) = godot_gen.\(godot_e.name)"
//}
//_store(_tals, "module", "Typealiases")
//exit(1)

print("==> Classes")

for godot_class in decodedData.classes {
    // allowlist
    let allowAll = globalAllowAll || false
    guard allowAll || [
        "AnimationNode",
        "ScriptLanguageExtension"
//        "InputEvent",
//        "SceneTree",
//        "Window",
//        "Tween",
//        "MultiplayerAPI",
//        "Resource",
//        "RefCounted",
//        "MultiplayerPeer",
//        "Viewport",
//        "MainLoop",
//        "PacketPeer",
//        "PackedScene",
//        "CallbackTweener",
//        "Tweener",
//        "SceneState",
//        "World2D",
//        "ViewportTexture"
//        "VisualShaderNodeMultiplyAdd"
    ].contains(godot_class.name) else {
        print("    skipping \(godot_class.name)")
        continue
    }
    
    export_godot_class(
        godot_class,
        builtin_sizes,
        decodedData)
}

print("==> Global enums")
for godot_enum in decodedData.global_enums {
    // allowlist
    let allowAll = globalAllowAll || false
    guard allowAll || [

    ].contains(godot_enum.name) else {
        print("    skipping \(godot_enum.name)")
        continue
    }
    
    export_godot_enum(
        godot_enum,
        builtin_sizes,
        decodedData)
}

print("==> Global structures")
for godot_struct in decodedData.native_structures {
    // allowlist
    let allowAll = globalAllowAll || false
    guard allowAll || [
        "PhysicsServer2DExtensionRayResult"
    ].contains(godot_struct.name) else {
        print("    skipping \(godot_struct.name)")
        continue
    }
    
    export_godot_struct(
        godot_struct,
        builtin_sizes,
        decodedData)
}

print("==> Misc.")
export_module_initializers(decodedData, builtin_sizes)
