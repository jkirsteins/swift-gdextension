import godot_native

fileprivate var __godot_name_VisualShaderNodeVec2Constant: StringName! = nil

/// A [Vector2] constant to be used within the visual shader graph.
/// 
/// A constant [Vector2], which can be used as an input node.
open class VisualShaderNodeVec2Constant : VisualShaderNodeConstant {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVec2Constant }

    static var _method_set_constant_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_3341600327: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeVec2Constant = StringName(from: "VisualShaderNodeVec2Constant")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_constant_743155724_name = StringName(from: "set_constant")
        self._method_set_constant_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeVec2Constant._native_ptr(), _method_set_constant_743155724_name._native_ptr(), 743155724)
        assert(VisualShaderNodeVec2Constant._method_set_constant_743155724 != nil)
        let _method_get_constant_3341600327_name = StringName(from: "get_constant")
        self._method_get_constant_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeVec2Constant._native_ptr(), _method_get_constant_3341600327_name._native_ptr(), 3341600327)
        assert(VisualShaderNodeVec2Constant._method_get_constant_3341600327 != nil)
    }

    public func set_constant(constant: Vector2)  {
        let constant_native = constant._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_constant() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
}