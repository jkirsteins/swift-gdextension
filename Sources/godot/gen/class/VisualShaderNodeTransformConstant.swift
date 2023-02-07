import godot_native

fileprivate var __godot_name_VisualShaderNodeTransformConstant: StringName! = nil

/// A [Transform3D] constant for use within the visual shader graph.
/// 
/// A constant [Transform3D], which can be used as an input node.
public class VisualShaderNodeTransformConstant : VisualShaderNodeConstant {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeTransformConstant }

    static var _method_set_constant_2952846383: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_3229777777: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeTransformConstant = StringName(from: "VisualShaderNodeTransformConstant")

        let _method_set_constant_2952846383_name = StringName(from: "set_constant")
        self._method_set_constant_2952846383 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_constant_2952846383_name._native_ptr(), 2952846383)
        assert(VisualShaderNodeTransformConstant._method_set_constant_2952846383 != nil)
        let _method_get_constant_3229777777_name = StringName(from: "get_constant")
        self._method_get_constant_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_constant_3229777777_name._native_ptr(), 3229777777)
        assert(VisualShaderNodeTransformConstant._method_get_constant_3229777777 != nil)
    }

    public func set_constant(constant: Transform3D)  {
        let constant_native = constant._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_2952846383,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_constant() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_3229777777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
}