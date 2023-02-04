//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 04/02/2023.
//

import Foundation
import godot

class StringName {
    static let SIZE = 8;
    
    static var interface = {
        return ensure_interface()
    }()
    
    let opaque: UnsafeMutableBufferPointer<UInt8> = .allocate(capacity: SIZE)
    
    static var _method_bindings__constructor_2: GDExtensionPtrConstructor? = nil
    
    func _native_ptr() -> GDExtensionTypePtr {
        return .init(opaque.baseAddress!)
    }
    
    static func initialize_class() {
        print("Initializing StringName")
        Self._method_bindings__constructor_2 =  Self.interface.pointee.variant_get_ptr_constructor(
            GDEXTENSION_VARIANT_TYPE_STRING_NAME,
            2
        )
        print("Initialized StringName")
    }
    
    init(_ from: String) {
//        internal::_call_builtin_constructor(_method_bindings.constructor_2, &opaque, &from);
//        _call_builtin_constructor(Self._method_bindings__constructor_2, opaque, from._native_ptr())
        
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
        defer { args.deallocate() }
        
        _ = args.initialize(from: [ .init(from._native_ptr()) ])
        print("Calling stringname constructor")
        Self._method_bindings__constructor_2!(opaque.baseAddress, .init(args.baseAddress!))
        print("Created stringname from string")
    }

    deinit {
        print("Deallocating opaque")
        opaque.deallocate()
    }
    
};
