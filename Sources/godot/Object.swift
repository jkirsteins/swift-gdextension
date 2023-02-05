//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 05/02/2023.
//

import godot_native

public class Object : Class {
    public class var SIZE: Int { 8 }
    
    private static func _createOpaque() -> UnsafeMutableBufferPointer<UInt8> {
        return .allocate(capacity: Self.SIZE)
    }
    
    public let opaque: UnsafeMutableBufferPointer<UInt8>
    
    init() {
        print("Creating", Swift.String(describing: Self.self))
        self.opaque = .allocate(capacity: Self.SIZE)
    }

    public func _native_ptr() -> GDExtensionTypePtr {
        return .init(opaque.baseAddress!)
    }
}
