//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 05/02/2023.
//

import godot_native

public protocol GDClass {
    static var className: Swift.String { get }
    static var parentName: Swift.String { get }
    
    static var gClassName: StringName { get }
    static var gParentName: StringName { get }
    
    static func createInstance() -> Self
}

public protocol BuiltinClass : Class {
    static var SIZE: Int { get }
}

public protocol Class {
    static var __godot_name: StringName { get }
    
    var opaque: UnsafeMutableRawPointer { get }
    
    func _native_ptr() -> GDExtensionTypePtr
    
    static func initialize_class()
}

extension Class {
    var interface: UnsafeMutablePointer<GDExtensionInterface> {
        Self.interface
    }
    
    static var interface: UnsafeMutablePointer<GDExtensionInterface> {
        guard let i = gde_interface else {
            fatalError("Interface unavailable")
        }
        return i
    }
    
    public func _native_ptr() -> GDExtensionTypePtr {
        return opaque
    }
}

extension GDClass {
    var interface: UnsafeMutablePointer<GDExtensionInterface> {
        Self.interface
    }
    
    static var interface: UnsafeMutablePointer<GDExtensionInterface> {
        guard let i = gde_interface else {
            fatalError("Interface unavailable")
        }
        return i
    }
}
