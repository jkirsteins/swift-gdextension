import godot_native

fileprivate var __godot_name_VisualShaderNodeVec3Constant: StringName! = nil

/// A [Vector3] constant to be used within the visual shader graph.
/// 
/// A constant [Vector3], which can be used as an input node.
open class VisualShaderNodeVec3Constant : VisualShaderNodeConstant {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVec3Constant }

    static var _method_set_constant_3460891852: StringName! = nil
    static var _method_get_constant_3360562783: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeVec3Constant == nil)
        __godot_name_VisualShaderNodeVec3Constant = StringName(from: "VisualShaderNodeVec3Constant")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_constant_3460891852 = StringName(from: "set_constant")
        assert(self._method_set_constant_3460891852 != nil)
        self._method_get_constant_3360562783 = StringName(from: "get_constant")
        assert(self._method_get_constant_3360562783 != nil)
    }

    public func set_constant(constant: Vector3)  {
        let constant_native = constant._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_constant_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_constant() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_constant_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
}