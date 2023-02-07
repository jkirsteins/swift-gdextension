import godot_native

fileprivate var __godot_name_VisualShaderNodeVec3Constant: StringName! = nil

/// A [Vector3] constant to be used within the visual shader graph.
/// 
/// A constant [Vector3], which can be used as an input node.
public class VisualShaderNodeVec3Constant : VisualShaderNodeConstant {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeVec3Constant }

    static var _method_set_constant_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_3360562783: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeVec3Constant = StringName(from: "VisualShaderNodeVec3Constant")

        let _method_set_constant_3460891852_name = StringName(from: "set_constant")
        self._method_set_constant_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_constant_3460891852_name._native_ptr(), 3460891852)
        assert(VisualShaderNodeVec3Constant._method_set_constant_3460891852 != nil)
        let _method_get_constant_3360562783_name = StringName(from: "get_constant")
        self._method_get_constant_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_constant_3360562783_name._native_ptr(), 3360562783)
        assert(VisualShaderNodeVec3Constant._method_get_constant_3360562783 != nil)
    }

    public func set_constant(constant: Vector3)  {
        let constant_native = constant._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_constant() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
}