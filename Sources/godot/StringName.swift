//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 04/02/2023.
//

import Foundation
import godot_native

extension ClassInitializer {
    static func initializeMethodBindings_StringName() {
        
        
    }
    
    static func initializeConstructorBindings_StringName() {
        StringName._method_bindings__constructor_2 =  StringName.interface.pointee.variant_get_ptr_constructor(
            GDEXTENSION_VARIANT_TYPE_STRING_NAME,
            2
        )
        StringName._method_bindings__destructor =  StringName.interface.pointee.variant_get_ptr_destructor(
            GDEXTENSION_VARIANT_TYPE_STRING_NAME
        )
    }
}

public class StringName : BuiltinClass {
    public static let SIZE = 8;
    
    public let opaque: UnsafeMutableBufferPointer<UInt8> = .allocate(capacity: SIZE)
    
    static var _method_bindings__constructor_2: GDExtensionPtrConstructor? = nil
    static var _method_bindings__destructor: GDExtensionPtrDestructor? = nil
    
    public func _native_ptr() -> GDExtensionTypePtr {
        return .init(opaque.baseAddress!)
    }
    
    public init(_ from: String) {
//        internal::_call_builtin_constructor(_method_bindings.constructor_2, &opaque, &from);
//        _call_builtin_constructor(Self._method_bindings__constructor_2, opaque, from._native_ptr())
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        
        _ = args.initialize(from: [ .init(from._native_ptr()) ])
        print("Calling stringname constructor")
        Self._method_bindings__constructor_2!(self._native_ptr(), .init(args.baseAddress!))
        print("Created stringname from string")
    }

    deinit {
        Self._method_bindings__destructor?(self._native_ptr())
        opaque.deallocate()
    }
    
};
