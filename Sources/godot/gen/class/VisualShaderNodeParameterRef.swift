import godot_native

fileprivate var __godot_name_VisualShaderNodeParameterRef: StringName! = nil

/// A reference to an existing [VisualShaderNodeParameter].
/// 
/// Creating a reference to a [VisualShaderNodeParameter] allows you to reuse this parameter in different shaders or shader stages easily.
open class VisualShaderNodeParameterRef : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParameterRef }

    static var _method_set_parameter_name_83702148: StringName! = nil
    static var _method_get_parameter_name_201670096: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeParameterRef == nil)
        __godot_name_VisualShaderNodeParameterRef = StringName(from: "VisualShaderNodeParameterRef")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_parameter_name_83702148 = StringName(from: "set_parameter_name")
        assert(self._method_set_parameter_name_83702148 != nil)
        self._method_get_parameter_name_201670096 = StringName(from: "get_parameter_name")
        assert(self._method_get_parameter_name_201670096 != nil)
    }

    public func set_parameter_name(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_parameter_name_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_parameter_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_parameter_name_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}