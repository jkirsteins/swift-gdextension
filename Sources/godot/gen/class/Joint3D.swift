import godot_native

fileprivate var __godot_name_Joint3D: StringName! = nil

/// Base class for all 3D joints.
/// 
/// Joints are used to bind together two physics bodies. They have a solver priority and can define if the bodies of the two attached nodes should be able to collide with each other. See also [Generic6DOFJoint3D].
public class Joint3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_Joint3D }

    static var _method_set_node_a_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_a_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_node_b_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_b_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_solver_priority_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_solver_priority_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_exclude_nodes_from_collision_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_exclude_nodes_from_collision_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Joint3D = StringName(from: "Joint3D")

        let _method_set_node_a_1348162250_name = StringName(from: "set_node_a")
        self._method_set_node_a_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_node_a_1348162250_name._native_ptr(), 1348162250)
        assert(Joint3D._method_set_node_a_1348162250 != nil)
        let _method_get_node_a_4075236667_name = StringName(from: "get_node_a")
        self._method_get_node_a_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_node_a_4075236667_name._native_ptr(), 4075236667)
        assert(Joint3D._method_get_node_a_4075236667 != nil)
        let _method_set_node_b_1348162250_name = StringName(from: "set_node_b")
        self._method_set_node_b_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_node_b_1348162250_name._native_ptr(), 1348162250)
        assert(Joint3D._method_set_node_b_1348162250 != nil)
        let _method_get_node_b_4075236667_name = StringName(from: "get_node_b")
        self._method_get_node_b_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_node_b_4075236667_name._native_ptr(), 4075236667)
        assert(Joint3D._method_get_node_b_4075236667 != nil)
        let _method_set_solver_priority_1286410249_name = StringName(from: "set_solver_priority")
        self._method_set_solver_priority_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_solver_priority_1286410249_name._native_ptr(), 1286410249)
        assert(Joint3D._method_set_solver_priority_1286410249 != nil)
        let _method_get_solver_priority_3905245786_name = StringName(from: "get_solver_priority")
        self._method_get_solver_priority_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_solver_priority_3905245786_name._native_ptr(), 3905245786)
        assert(Joint3D._method_get_solver_priority_3905245786 != nil)
        let _method_set_exclude_nodes_from_collision_2586408642_name = StringName(from: "set_exclude_nodes_from_collision")
        self._method_set_exclude_nodes_from_collision_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_exclude_nodes_from_collision_2586408642_name._native_ptr(), 2586408642)
        assert(Joint3D._method_set_exclude_nodes_from_collision_2586408642 != nil)
        let _method_get_exclude_nodes_from_collision_36873697_name = StringName(from: "get_exclude_nodes_from_collision")
        self._method_get_exclude_nodes_from_collision_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_exclude_nodes_from_collision_36873697_name._native_ptr(), 36873697)
        assert(Joint3D._method_get_exclude_nodes_from_collision_36873697 != nil)
    }

    public func set_node_a(node: NodePath)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_node_a_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_node_a() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_a_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
    public func set_node_b(node: NodePath)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_node_b_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_node_b() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_node_b_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
    public func set_solver_priority(priority: Int64)  {
        withUnsafePointer(to: priority) { priority_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_solver_priority_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_solver_priority() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_solver_priority_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_exclude_nodes_from_collision(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_exclude_nodes_from_collision_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_exclude_nodes_from_collision() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_exclude_nodes_from_collision_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}