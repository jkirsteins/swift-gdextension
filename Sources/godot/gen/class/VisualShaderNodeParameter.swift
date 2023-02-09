import godot_native

fileprivate var __godot_name_VisualShaderNodeParameter: StringName! = nil

/// A base type for the parameters within the visual shader graph.
/// 
/// A parameter represents a variable in the shader which is set externally, i.e. from the [ShaderMaterial]. Parameters are exposed as properties in the [ShaderMaterial] and can be assigned from the Inspector or from a script.
open class VisualShaderNodeParameter : VisualShaderNode {

    public enum Qualifier : Int32 {
        case QUAL_NONE = 0
        case QUAL_GLOBAL = 1
        case QUAL_INSTANCE = 2
        case QUAL_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParameter }

    static var _method_set_parameter_name_83702148: StringName! = nil
    static var _method_get_parameter_name_201670096: StringName! = nil
    static var _method_set_qualifier_1276489447: StringName! = nil
    static var _method_get_qualifier_3558406205: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeParameter == nil)
        __godot_name_VisualShaderNodeParameter = StringName(from: "VisualShaderNodeParameter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_parameter_name_83702148 = StringName(from: "set_parameter_name")
        assert(self._method_set_parameter_name_83702148 != nil)
        self._method_get_parameter_name_201670096 = StringName(from: "get_parameter_name")
        assert(self._method_get_parameter_name_201670096 != nil)
        self._method_set_qualifier_1276489447 = StringName(from: "set_qualifier")
        assert(self._method_set_qualifier_1276489447 != nil)
        self._method_get_qualifier_3558406205 = StringName(from: "get_qualifier")
        assert(self._method_get_qualifier_3558406205 != nil)
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
    public func set_qualifier(qualifier: VisualShaderNodeParameter.Qualifier)  {
        withUnsafePointer(to: qualifier.rawValue) { qualifier_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(qualifier_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_qualifier_1276489447._native_ptr(),
                    1276489447)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_qualifier() -> VisualShaderNodeParameter.Qualifier {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_qualifier_3558406205._native_ptr(),
                    3558406205)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeParameter.Qualifier(godot: __resPtr.pointee)
    }
}