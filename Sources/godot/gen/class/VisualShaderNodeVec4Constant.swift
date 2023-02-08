import godot_native

fileprivate var __godot_name_VisualShaderNodeVec4Constant: StringName! = nil

/// A 4D vector constant to be used within the visual shader graph.
/// 
/// A constant 4D vector, which can be used as an input node.
open class VisualShaderNodeVec4Constant : VisualShaderNodeConstant {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVec4Constant }

    static var _method_set_constant_1727505552: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_1222331677: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeVec4Constant = StringName(from: "VisualShaderNodeVec4Constant")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_constant_1727505552_name = StringName(from: "set_constant")
        self._method_set_constant_1727505552 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeVec4Constant._native_ptr(), _method_set_constant_1727505552_name._native_ptr(), 1727505552)
        assert(VisualShaderNodeVec4Constant._method_set_constant_1727505552 != nil)
        let _method_get_constant_1222331677_name = StringName(from: "get_constant")
        self._method_get_constant_1222331677 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeVec4Constant._native_ptr(), _method_get_constant_1222331677_name._native_ptr(), 1222331677)
        assert(VisualShaderNodeVec4Constant._method_get_constant_1222331677 != nil)
    }

    public func set_constant(constant: Quaternion)  {
        let constant_native = constant._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_1727505552,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_constant() -> Quaternion {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_1222331677,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Quaternion(godot: __resPtr.pointee)
    }
}