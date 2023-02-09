import godot_native

fileprivate var __godot_name_VisualShaderNodeUIntConstant: StringName! = nil

/// An unsigned scalar integer constant to be used within the visual shader graph.
/// 
/// Translated to [code]uint[/code] in the shader language.
open class VisualShaderNodeUIntConstant : VisualShaderNodeConstant {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeUIntConstant }

    static var _method_set_constant_1286410249: StringName! = nil
    static var _method_get_constant_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeUIntConstant == nil)
        __godot_name_VisualShaderNodeUIntConstant = StringName(from: "VisualShaderNodeUIntConstant")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_constant_1286410249 = StringName(from: "set_constant")
        assert(self._method_set_constant_1286410249 != nil)
        self._method_get_constant_3905245786 = StringName(from: "get_constant")
        assert(self._method_get_constant_3905245786 != nil)
    }

    public func set_constant(constant: Int64)  {
        withUnsafePointer(to: constant) { constant_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_constant_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_constant() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_constant_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}