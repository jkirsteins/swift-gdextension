import godot_native

fileprivate var __godot_name_Shape3D: StringName! = nil

/// Base class for all 3D shape resources.
/// 
/// Base class for all 3D shape resources. Nodes that inherit from this can be used as shapes for a [PhysicsBody3D] or [Area3D] objects.
open class Shape3D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Shape3D }

    static var _method_set_custom_solver_bias_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_solver_bias_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_margin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_margin_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_debug_mesh_1605880883: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Shape3D = StringName(from: "Shape3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_custom_solver_bias_373806689_name = StringName(from: "set_custom_solver_bias")
        self._method_set_custom_solver_bias_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Shape3D._native_ptr(), _method_set_custom_solver_bias_373806689_name._native_ptr(), 373806689)
        assert(Shape3D._method_set_custom_solver_bias_373806689 != nil)
        let _method_get_custom_solver_bias_1740695150_name = StringName(from: "get_custom_solver_bias")
        self._method_get_custom_solver_bias_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Shape3D._native_ptr(), _method_get_custom_solver_bias_1740695150_name._native_ptr(), 1740695150)
        assert(Shape3D._method_get_custom_solver_bias_1740695150 != nil)
        let _method_set_margin_373806689_name = StringName(from: "set_margin")
        self._method_set_margin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_Shape3D._native_ptr(), _method_set_margin_373806689_name._native_ptr(), 373806689)
        assert(Shape3D._method_set_margin_373806689 != nil)
        let _method_get_margin_1740695150_name = StringName(from: "get_margin")
        self._method_get_margin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Shape3D._native_ptr(), _method_get_margin_1740695150_name._native_ptr(), 1740695150)
        assert(Shape3D._method_get_margin_1740695150 != nil)
        let _method_get_debug_mesh_1605880883_name = StringName(from: "get_debug_mesh")
        self._method_get_debug_mesh_1605880883 = self.interface.pointee.classdb_get_method_bind(__godot_name_Shape3D._native_ptr(), _method_get_debug_mesh_1605880883_name._native_ptr(), 1605880883)
        assert(Shape3D._method_get_debug_mesh_1605880883 != nil)
    }

    public func set_custom_solver_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_solver_bias_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_custom_solver_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_solver_bias_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_margin(margin: Float64)  {
        withUnsafePointer(to: margin) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_margin_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_margin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_margin_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_debug_mesh() -> ArrayMesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_debug_mesh_1605880883,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ArrayMesh(godot: __resPtr.pointee)
    }
}