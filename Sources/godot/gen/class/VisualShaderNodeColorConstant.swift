import godot_native

fileprivate var __godot_name_VisualShaderNodeColorConstant: StringName! = nil

/// A [Color] constant to be used within the visual shader graph.
/// 
/// Has two output ports representing RGB and alpha channels of [Color].
///  
/// Translated to [code]vec3 rgb[/code] and [code]float alpha[/code] in the shader language.
open class VisualShaderNodeColorConstant : VisualShaderNodeConstant {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeColorConstant }

    static var _method_set_constant_2920490490: StringName! = nil
    static var _method_get_constant_3444240500: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeColorConstant == nil)
        __godot_name_VisualShaderNodeColorConstant = StringName(from: "VisualShaderNodeColorConstant")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_constant_2920490490 = StringName(from: "set_constant")
        assert(self._method_set_constant_2920490490 != nil)
        self._method_get_constant_3444240500 = StringName(from: "get_constant")
        assert(self._method_get_constant_3444240500 != nil)
    }

    public func set_constant(constant: Color)  {
        let constant_native = constant._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_constant_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_constant() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_constant_3444240500._native_ptr(),
                    3444240500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
}