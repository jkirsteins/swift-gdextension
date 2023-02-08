//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 05/02/2023.
//

import godot_native

public protocol GDClass: Class {
//    static var __godot_name: StringName { get }
    
    static var __godot_name: StringName { get }

    static func setup_class()
}

public extension GDClass {
    static func initialize_gd_class() {
//        Self.initialize_class()
//        self.setup_class()
    }
}

public protocol BuiltinClass : Class {
    static var SIZE: Int { get }
}

public protocol Class {
    static var __godot_name: StringName { get }
    
    var opaque: UnsafeMutableRawPointer { get }
    
    func _native_ptr() -> GDExtensionTypePtr
    
    static func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel)
    
    init(godot: UnsafeRawPointer)
    
    static var interface: UnsafePointer<GDExtensionInterface>! { get }
    static var library: GDExtensionClassLibraryPtr! { get }
}

extension Class {
    var interface: UnsafePointer<GDExtensionInterface> {
        Self.interface
    }
    
    public func _native_ptr() -> GDExtensionTypePtr {
        return opaque
    }
}

extension GDClass {
    
}
