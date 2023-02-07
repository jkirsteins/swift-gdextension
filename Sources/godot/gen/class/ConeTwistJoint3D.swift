import godot_native

fileprivate var __godot_name_ConeTwistJoint3D: StringName! = nil

/// A twist joint between two 3D PhysicsBodies.
/// 
/// The joint can rotate the bodies across an axis defined by the local x-axes of the [Joint3D].
///  
/// The twist axis is initiated as the X axis of the [Joint3D].
///  
/// Once the Bodies swing, the twist axis is calculated as the middle of the x-axes of the Joint3D in the local space of the two Bodies. See also [Generic6DOFJoint3D].
public class ConeTwistJoint3D : Joint3D {

    public enum Param : Int32 {
        case PARAM_SWING_SPAN = 0
        case PARAM_TWIST_SPAN = 1
        case PARAM_BIAS = 2
        case PARAM_SOFTNESS = 3
        case PARAM_RELAXATION = 4
        case PARAM_MAX = 5
    }

    public override class var __godot_name: StringName { __godot_name_ConeTwistJoint3D }

    static var _method_set_param_1062470226: GDExtensionMethodBindPtr! = nil
    static var _method_get_param_2928790850: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ConeTwistJoint3D = StringName(from: "ConeTwistJoint3D")

        let _method_set_param_1062470226_name = StringName(from: "set_param")
        self._method_set_param_1062470226 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_param_1062470226_name._native_ptr(), 1062470226)
        assert(ConeTwistJoint3D._method_set_param_1062470226 != nil)
        let _method_get_param_2928790850_name = StringName(from: "get_param")
        self._method_get_param_2928790850 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_param_2928790850_name._native_ptr(), 2928790850)
        assert(ConeTwistJoint3D._method_get_param_2928790850 != nil)
    }

    public func set_param(param: ConeTwistJoint3D.Param, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_param_1062470226,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param(param: ConeTwistJoint3D.Param) -> Float64 {
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
                    Self._method_get_param_2928790850,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
}