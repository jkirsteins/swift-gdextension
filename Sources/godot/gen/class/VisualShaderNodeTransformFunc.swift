import godot_native

fileprivate var __godot_name_VisualShaderNodeTransformFunc: StringName! = nil

/// Computes a [Transform3D] function within the visual shader graph.
/// 
/// Computes an inverse or transpose function on the provided [Transform3D].
open class VisualShaderNodeTransformFunc : VisualShaderNode {

    public enum Function : Int32 {
        case FUNC_INVERSE = 0
        case FUNC_TRANSPOSE = 1
        case FUNC_MAX = 2
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTransformFunc }

    static var _method_set_function_2900990409: GDExtensionMethodBindPtr! = nil
    static var _method_get_function_2839926569: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeTransformFunc = StringName(from: "VisualShaderNodeTransformFunc")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_function_2900990409_name = StringName(from: "set_function")
        self._method_set_function_2900990409 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTransformFunc._native_ptr(), _method_set_function_2900990409_name._native_ptr(), 2900990409)
        assert(VisualShaderNodeTransformFunc._method_set_function_2900990409 != nil)
        let _method_get_function_2839926569_name = StringName(from: "get_function")
        self._method_get_function_2839926569 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeTransformFunc._native_ptr(), _method_get_function_2839926569_name._native_ptr(), 2839926569)
        assert(VisualShaderNodeTransformFunc._method_get_function_2839926569 != nil)
    }

    public func set_function(`func`: VisualShaderNodeTransformFunc.Function)  {
        withUnsafePointer(to: `func`.rawValue) { func_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(func_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_function_2900990409,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_function() -> VisualShaderNodeTransformFunc.Function {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_function_2839926569,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeTransformFunc.Function(godot: __resPtr.pointee)
    }
}