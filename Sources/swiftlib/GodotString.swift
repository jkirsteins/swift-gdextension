//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 04/02/2023.
//

import Foundation
import godot

func ensure_interface() -> UnsafeMutablePointer<GDExtensionInterface> {
    guard let i = gde_interface else {
        fatalError("Interface unavailable")
    }
    return i
}

typealias NativeString = Swift.String
typealias GString = String

class String {
    static let SIZE = 8;
    
    static var interface = {
        return ensure_interface()
    }()
    
    let opaque: UnsafeMutableBufferPointer<UInt8> = .allocate(capacity: SIZE)
    
//    static struct _MethodBindings {
//        GDExtensionPtrConstructor constructor_0;
//
//    } _method_bindings;
    
    static var _method_bindings__constructor_0: GDExtensionPtrConstructor? = nil
    
    func _native_ptr() -> GDExtensionTypePtr {
        return .init(opaque.baseAddress!)
    }
    
    init(_ from: NativeString) {
        from.withCString { ptr in
            Self.interface.pointee.string_new_with_utf8_chars_and_len(_native_ptr(), ptr, GDExtensionInt(from.count))
        }
    }

    deinit {
        opaque.deallocate()
    }
    
};
