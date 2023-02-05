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
        let _name = StringName(_nameStr1)
        
        let _nameStr2 = String("\(Swift.String(describing: Node.self))\0")
        let _name2 = StringName(_nameStr2)
        
        let _addChild = StringName(String("add_child"))
        let _addChild2 = StringName(String("add_child_2"))
        print("Testing add_child native backing", _nameStr1.toNative().count, _nameStr2.toNative().count,  String("add_child").toNative())
        
        print("====== 1")
        Node._method_binding__add_child__3070154285 = Node.interface.pointee.classdb_get_method_bind(
            _name._native_ptr(),
            _addChild._native_ptr(),
            3070154285)
        print("Got binding", Node._method_binding__add_child__3070154285)
        assert(Node._method_binding__add_child__3070154285 != nil, "Node.add_child could not be bound")
        print("====== 2")
        var t2 = Node.interface.pointee.classdb_get_method_bind(
            _name._native_ptr(),
            _addChild2._native_ptr(),
            3070154285)
        var t = Node.interface.pointee.classdb_get_method_bind(
            _name._native_ptr(),
            _addChild._native_ptr(),
            30701)
        
        print(t2, t, Node._method_binding__add_child__3070154285)
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
