//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 04/02/2023.
//

import Foundation
import godot_native

typealias GString = String

extension String {
    /// Create a native Swift `String` based on the Godot string's backing data
    /// - Returns: `Swift.String`
    public func toNative() -> Swift.String {
        let length = self.interface.pointee.string_to_utf8_chars(
            self._native_ptr(),
            nil,
            0)
        
        let buf: UnsafeMutableBufferPointer<CChar> = .allocate(capacity: Int(length + 1))
        buf.initialize(repeating: 0)
        defer { buf.deallocate() }
        
        _ = self.interface.pointee.string_to_utf8_chars(
            self._native_ptr(),
            buf.baseAddress,
            length)
        
        return Swift.String(cString: buf.baseAddress!)
    }
    
    public convenience init(_ from: Swift.String) {
        self.init()
        from.withCString { ptr in
            interface.pointee.string_new_with_utf8_chars_and_len(_native_ptr(), ptr, GDExtensionInt(from.count))
        }
    }
}

extension ClassInitializer {
    static func initializeMethodBindings_String() {
        
        
    }
    
    static func initializeConstructorBindings_String() {
        String._method_bindings__destructor =  String.interface.pointee.variant_get_ptr_destructor(
            GDEXTENSION_VARIANT_TYPE_STRING
        )
    }
}

public class String : BuiltinClass {
    
    public static let SIZE = 8;
    
    public let opaque: UnsafeMutableBufferPointer<UInt8> = .allocate(capacity: SIZE)
    
//    static struct _MethodBindings {
//        GDExtensionPtrConstructor constructor_0;
//
//    } _method_bindings;
    
    static var _method_bindings__constructor_0: GDExtensionPtrConstructor? = nil
    static var _method_bindings__destructor: GDExtensionPtrDestructor? = nil

//    public func _native_ptr() -> GDExtensionTypePtr {
//        return .init(opaque.baseAddress!)
//    }
    
    
    deinit {
        print("Deallocating String")
        Self._method_bindings__destructor?(self._native_ptr())
        opaque.deallocate()
    }
    
};
