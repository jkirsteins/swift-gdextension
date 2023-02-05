//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 05/02/2023.
//

import godot_native

extension ClassInitializer {
    static func initializeMethodBindings_Node() {
        let _nameStr1 = String(Swift.String(describing: Node.self))
        let _name = StringName(from: _nameStr1)
        
        let _nameStr2 = String("\(Swift.String(describing: Node.self))\0")
        let _name2 = StringName(from: _nameStr2)
        
        let _addChild = StringName(from: "add_child")
        
        print("====== 1")
        Node._method_binding__add_child__3070154285 = Node.interface.pointee.classdb_get_method_bind(
            _name._native_ptr(),
            _addChild._native_ptr(),
            3070154285)
        print("Got binding", Node._method_binding__add_child__3070154285)
        assert(Node._method_binding__add_child__3070154285 != nil, "Node.add_child could not be bound")
        
    }
    
    static func initializeConstructorBindings_Node() {
        
    }
}

public class Node : Object {
    public override class var SIZE: Int { 8 + Object.SIZE }
    
    fileprivate static var _method_binding__add_child__3070154285: GDExtensionMethodBindPtr! = nil
    
    fileprivate static var _method_bindings__constructor_0: GDExtensionPtrConstructor! = nil
    
    deinit {
        opaque.deallocate()
    }
    
    enum InternalMode: Int {
        case INTERNAL_MODE_DISABLED = 0
        case INTERNAL_MODE_FRONT = 1
        case INTERNAL_MODE_BACK = 2
    }
    
    func add_node(node: Node, force_readable_name: Bool = false, internal: Node.InternalMode = .init(rawValue: 0)!) {
        
    }
};
