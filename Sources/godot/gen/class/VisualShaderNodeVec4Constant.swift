import godot_native

fileprivate var __godot_name_VisualShaderNodeVec4Constant: StringName! = nil

/// A 4D vector constant to be used within the visual shader graph.
/// 
/// A constant 4D vector, which can be used as an input node.
open class VisualShaderNodeVec4Constant : VisualShaderNodeConstant {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVec4Constant }

    static var _method_set_constant_1727505552: StringName! = nil
    static var _method_get_constant_1222331677: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeVec4Constant == nil)
        __godot_name_VisualShaderNodeVec4Constant = StringName(from: "VisualShaderNodeVec4Constant")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_constant_1727505552 = StringName(from: "set_constant")
        assert(self._method_set_constant_1727505552 != nil)
        self._method_get_constant_1222331677 = StringName(from: "get_constant")
        assert(self._method_get_constant_1222331677 != nil)
    }

    public func set_constant(constant: Quaternion)  {
        let constant_native = constant._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_constant_1727505552._native_ptr(),
                    1727505552)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_constant_1222331677._native_ptr(),
                    1222331677)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Quaternion(godot: __resPtr.pointee)
    }
}