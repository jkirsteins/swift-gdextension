import godot_native

fileprivate var __godot_name_Joint2D: StringName! = nil

/// Base node for all joint constraints in 2D physics.
/// 
/// Base node for all joint constraints in 2D physics. Joints take 2 bodies and apply a custom constraint.
public class Joint2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_Joint2D }

    static var _method_set_node_a_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_a_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_node_b_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_node_b_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_bias_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_bias_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_exclude_nodes_from_collision_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_exclude_nodes_from_collision_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Joint2D = StringName(from: "Joint2D")

        let _method_set_node_a_1348162250_name = StringName(from: "set_node_a")
        self._method_set_node_a_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_node_a_1348162250_name._native_ptr(), 1348162250)
        assert(Joint2D._method_set_node_a_1348162250 != nil)
        let _method_get_node_a_4075236667_name = StringName(from: "get_node_a")
        self._method_get_node_a_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_node_a_4075236667_name._native_ptr(), 4075236667)
        assert(Joint2D._method_get_node_a_4075236667 != nil)
        let _method_set_node_b_1348162250_name = StringName(from: "set_node_b")
        self._method_set_node_b_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_node_b_1348162250_name._native_ptr(), 1348162250)
        assert(Joint2D._method_set_node_b_1348162250 != nil)
        let _method_get_node_b_4075236667_name = StringName(from: "get_node_b")
        self._method_get_node_b_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_node_b_4075236667_name._native_ptr(), 4075236667)
        assert(Joint2D._method_get_node_b_4075236667 != nil)
        let _method_set_bias_373806689_name = StringName(from: "set_bias")
        self._method_set_bias_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bias_373806689_name._native_ptr(), 373806689)
        assert(Joint2D._method_set_bias_373806689 != nil)
        let _method_get_bias_1740695150_name = StringName(from: "get_bias")
        self._method_get_bias_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bias_1740695150_name._native_ptr(), 1740695150)
        assert(Joint2D._method_get_bias_1740695150 != nil)
        let _method_set_exclude_nodes_from_collision_2586408642_name = StringName(from: "set_exclude_nodes_from_collision")
        self._method_set_exclude_nodes_from_collision_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_exclude_nodes_from_collision_2586408642_name._native_ptr(), 2586408642)
        assert(Joint2D._method_set_exclude_nodes_from_collision_2586408642 != nil)
        let _method_get_exclude_nodes_from_collision_36873697_name = StringName(from: "get_exclude_nodes_from_collision")
        self._method_get_exclude_nodes_from_collision_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_exclude_nodes_from_collision_36873697_name._native_ptr(), 36873697)
        assert(Joint2D._method_get_exclude_nodes_from_collision_36873697 != nil)
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
    public func set_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bias_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bias_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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