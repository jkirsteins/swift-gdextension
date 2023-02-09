import godot_native

fileprivate var __godot_name_VisualShaderNodeTransformConstant: StringName! = nil

/// A [Transform3D] constant for use within the visual shader graph.
/// 
/// A constant [Transform3D], which can be used as an input node.
open class VisualShaderNodeTransformConstant : VisualShaderNodeConstant {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTransformConstant }

    static var _method_set_constant_2952846383: StringName! = nil
    static var _method_get_constant_3229777777: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeTransformConstant == nil)
        __godot_name_VisualShaderNodeTransformConstant = StringName(from: "VisualShaderNodeTransformConstant")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_constant_2952846383 = StringName(from: "set_constant")
        assert(self._method_set_constant_2952846383 != nil)
        self._method_get_constant_3229777777 = StringName(from: "get_constant")
        assert(self._method_get_constant_3229777777 != nil)
    }

    public func set_constant(constant: Transform3D)  {
        let constant_native = constant._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_constant_2952846383._native_ptr(),
                    2952846383)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_constant() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_constant_3229777777._native_ptr(),
                    3229777777)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
    }
}