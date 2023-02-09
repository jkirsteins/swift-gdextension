import godot_native

fileprivate var __godot_name_VisualShaderNodeInput: StringName! = nil

/// Represents the input shader parameter within the visual shader graph.
/// 
/// Gives access to input variables (built-ins) available for the shader. See the shading reference for the list of available built-ins for each shader type (check [code]Tutorials[/code] section for link).
open class VisualShaderNodeInput : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeInput }

    static var _method_set_input_name_83702148: StringName! = nil
    static var _method_get_input_name_201670096: StringName! = nil
    static var _method_get_input_real_name_201670096: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeInput == nil)
        __godot_name_VisualShaderNodeInput = StringName(from: "VisualShaderNodeInput")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_input_name_83702148 = StringName(from: "set_input_name")
        assert(self._method_set_input_name_83702148 != nil)
        self._method_get_input_name_201670096 = StringName(from: "get_input_name")
        assert(self._method_get_input_name_201670096 != nil)
        self._method_get_input_real_name_201670096 = StringName(from: "get_input_real_name")
        assert(self._method_get_input_real_name_201670096 != nil)
    }

    public func set_input_name(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_input_name_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_input_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_input_name_201670096._native_ptr(),
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
    public func get_input_real_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_input_real_name_201670096._native_ptr(),
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