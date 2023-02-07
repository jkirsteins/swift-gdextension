import godot_native

fileprivate var __godot_name_PinJoint3D: StringName! = nil

/// Pin joint for 3D PhysicsBodies.
/// 
/// Pin joint for 3D rigid bodies. It pins 2 bodies (dynamic or static) together. See also [Generic6DOFJoint3D].
public class PinJoint3D : Joint3D {

    public enum Param : Int32 {
        case PARAM_BIAS = 0
        case PARAM_DAMPING = 1
        case PARAM_IMPULSE_CLAMP = 2
    }

    public override class var __godot_name: StringName { __godot_name_PinJoint3D }

    static var _method_set_param_2059913726: GDExtensionMethodBindPtr! = nil
    static var _method_get_param_1758438771: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PinJoint3D = StringName(from: "PinJoint3D")

        let _method_set_param_2059913726_name = StringName(from: "set_param")
        self._method_set_param_2059913726 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_param_2059913726_name._native_ptr(), 2059913726)
        assert(PinJoint3D._method_set_param_2059913726 != nil)
        let _method_get_param_1758438771_name = StringName(from: "get_param")
        self._method_get_param_1758438771 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_param_1758438771_name._native_ptr(), 1758438771)
        assert(PinJoint3D._method_get_param_1758438771 != nil)
    }

    public func set_param(param: PinJoint3D.Param, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_param_2059913726,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param(param: PinJoint3D.Param) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_param_1758438771,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
}