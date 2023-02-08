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

let globalAllowAll = false

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

print("==> Classes")

for godot_class in decodedData.classes {
    // allowlist
    let allowAll = globalAllowAll || false
    guard allowAll || [
        "EditorInspectorPlugin",
        "AESContext"
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
