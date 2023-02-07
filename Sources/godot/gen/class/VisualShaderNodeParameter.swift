import godot_native

fileprivate var __godot_name_VisualShaderNodeParameter: StringName! = nil

/// A base type for the parameters within the visual shader graph.
/// 
/// A parameter represents a variable in the shader which is set externally, i.e. from the [ShaderMaterial]. Parameters are exposed as properties in the [ShaderMaterial] and can be assigned from the Inspector or from a script.
public class VisualShaderNodeParameter : VisualShaderNode {

    public enum Qualifier : Int32 {
        case QUAL_NONE = 0
        case QUAL_GLOBAL = 1
        case QUAL_INSTANCE = 2
        case QUAL_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParameter }

    static var _method_set_parameter_name_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_parameter_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_qualifier_1276489447: GDExtensionMethodBindPtr! = nil
    static var _method_get_qualifier_3558406205: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeParameter = StringName(from: "VisualShaderNodeParameter")

        let _method_set_parameter_name_83702148_name = StringName(from: "set_parameter_name")
        self._method_set_parameter_name_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_parameter_name_83702148_name._native_ptr(), 83702148)
        assert(VisualShaderNodeParameter._method_set_parameter_name_83702148 != nil)
        let _method_get_parameter_name_201670096_name = StringName(from: "get_parameter_name")
        self._method_get_parameter_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_parameter_name_201670096_name._native_ptr(), 201670096)
        assert(VisualShaderNodeParameter._method_get_parameter_name_201670096 != nil)
        let _method_set_qualifier_1276489447_name = StringName(from: "set_qualifier")
        self._method_set_qualifier_1276489447 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_qualifier_1276489447_name._native_ptr(), 1276489447)
        assert(VisualShaderNodeParameter._method_set_qualifier_1276489447 != nil)
        let _method_get_qualifier_3558406205_name = StringName(from: "get_qualifier")
        self._method_get_qualifier_3558406205 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_qualifier_3558406205_name._native_ptr(), 3558406205)
        assert(VisualShaderNodeParameter._method_get_qualifier_3558406205 != nil)
    }

    public func set_parameter_name(name: String)  {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_parameter_name_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_parameter_name() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parameter_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_qualifier(qualifier: VisualShaderNodeParameter.Qualifier)  {
        withUnsafePointer(to: qualifier.rawValue) { qualifier_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(qualifier_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_qualifier_1276489447,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_qualifier_3558406205,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeParameter.Qualifier(from: __resPtr.pointee)
    }
}