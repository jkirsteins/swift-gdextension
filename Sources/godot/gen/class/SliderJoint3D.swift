import godot_native

fileprivate var __godot_name_SliderJoint3D: StringName! = nil

/// Slider between two PhysicsBodies in 3D.
/// 
/// Slides across the X axis of the pivot object. See also [Generic6DOFJoint3D].
open class SliderJoint3D : Joint3D {

    public enum Param : Int32 {
        case PARAM_LINEAR_LIMIT_UPPER = 0
        case PARAM_LINEAR_LIMIT_LOWER = 1
        case PARAM_LINEAR_LIMIT_SOFTNESS = 2
        case PARAM_LINEAR_LIMIT_RESTITUTION = 3
        case PARAM_LINEAR_LIMIT_DAMPING = 4
        case PARAM_LINEAR_MOTION_SOFTNESS = 5
        case PARAM_LINEAR_MOTION_RESTITUTION = 6
        case PARAM_LINEAR_MOTION_DAMPING = 7
        case PARAM_LINEAR_ORTHOGONAL_SOFTNESS = 8
        case PARAM_LINEAR_ORTHOGONAL_RESTITUTION = 9
        case PARAM_LINEAR_ORTHOGONAL_DAMPING = 10
        case PARAM_ANGULAR_LIMIT_UPPER = 11
        case PARAM_ANGULAR_LIMIT_LOWER = 12
        case PARAM_ANGULAR_LIMIT_SOFTNESS = 13
        case PARAM_ANGULAR_LIMIT_RESTITUTION = 14
        case PARAM_ANGULAR_LIMIT_DAMPING = 15
        case PARAM_ANGULAR_MOTION_SOFTNESS = 16
        case PARAM_ANGULAR_MOTION_RESTITUTION = 17
        case PARAM_ANGULAR_MOTION_DAMPING = 18
        case PARAM_ANGULAR_ORTHOGONAL_SOFTNESS = 19
        case PARAM_ANGULAR_ORTHOGONAL_RESTITUTION = 20
        case PARAM_ANGULAR_ORTHOGONAL_DAMPING = 21
        case PARAM_MAX = 22
    }

    public override class var __godot_name: StringName { __godot_name_SliderJoint3D }

    static var _method_set_param_918243683: GDExtensionMethodBindPtr! = nil
    static var _method_get_param_959925627: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SliderJoint3D = StringName(from: "SliderJoint3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_param_918243683_name = StringName(from: "set_param")
        self._method_set_param_918243683 = self.interface.pointee.classdb_get_method_bind(__godot_name_SliderJoint3D._native_ptr(), _method_set_param_918243683_name._native_ptr(), 918243683)
        assert(SliderJoint3D._method_set_param_918243683 != nil)
        let _method_get_param_959925627_name = StringName(from: "get_param")
        self._method_get_param_959925627 = self.interface.pointee.classdb_get_method_bind(__godot_name_SliderJoint3D._native_ptr(), _method_get_param_959925627_name._native_ptr(), 959925627)
        assert(SliderJoint3D._method_get_param_959925627 != nil)
    }

    public func set_param(param: SliderJoint3D.Param, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_param_918243683,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param(param: SliderJoint3D.Param) -> Float64 {
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
                    Self._method_get_param_959925627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
}