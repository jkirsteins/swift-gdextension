import godot_native

fileprivate var __godot_name_VisualShaderNodeColorConstant: StringName! = nil

/// A [Color] constant to be used within the visual shader graph.
/// 
/// Has two output ports representing RGB and alpha channels of [Color].
///  
/// Translated to [code]vec3 rgb[/code] and [code]float alpha[/code] in the shader language.
open class VisualShaderNodeColorConstant : VisualShaderNodeConstant {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeColorConstant }

    static var _method_set_constant_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_3444240500: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeColorConstant = StringName(from: "VisualShaderNodeColorConstant")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_constant_2920490490_name = StringName(from: "set_constant")
        self._method_set_constant_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeColorConstant._native_ptr(), _method_set_constant_2920490490_name._native_ptr(), 2920490490)
        assert(VisualShaderNodeColorConstant._method_set_constant_2920490490 != nil)
        let _method_get_constant_3444240500_name = StringName(from: "get_constant")
        self._method_get_constant_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeColorConstant._native_ptr(), _method_get_constant_3444240500_name._native_ptr(), 3444240500)
        assert(VisualShaderNodeColorConstant._method_get_constant_3444240500 != nil)
    }

    public func set_constant(constant: Color)  {
        let constant_native = constant._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
}