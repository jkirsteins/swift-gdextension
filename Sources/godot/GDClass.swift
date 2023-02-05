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

public protocol BuiltinClass : Class { }

public protocol Class {
    static var SIZE: Int { get }
    
    var opaque: UnsafeMutableBufferPointer<UInt8> { get }
    
    func _native_ptr() -> GDExtensionTypePtr
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
        return .init(opaque.baseAddress!)
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
