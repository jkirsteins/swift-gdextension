import godot_native

fileprivate var __godot_name_VisualShaderNodeParameterRef: StringName! = nil

/// A reference to an existing [VisualShaderNodeParameter].
/// 
/// Creating a reference to a [VisualShaderNodeParameter] allows you to reuse this parameter in different shaders or shader stages easily.
public class VisualShaderNodeParameterRef : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParameterRef }

    static var _method_set_parameter_name_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_parameter_name_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeParameterRef = StringName(from: "VisualShaderNodeParameterRef")

        let _method_set_parameter_name_83702148_name = StringName(from: "set_parameter_name")
        self._method_set_parameter_name_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_parameter_name_83702148_name._native_ptr(), 83702148)
        assert(VisualShaderNodeParameterRef._method_set_parameter_name_83702148 != nil)
        let _method_get_parameter_name_201670096_name = StringName(from: "get_parameter_name")
        self._method_get_parameter_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_parameter_name_201670096_name._native_ptr(), 201670096)
        assert(VisualShaderNodeParameterRef._method_get_parameter_name_201670096 != nil)
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
}