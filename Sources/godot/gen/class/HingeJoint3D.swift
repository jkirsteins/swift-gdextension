import godot_native

fileprivate var __godot_name_HingeJoint3D: StringName! = nil

/// A hinge between two 3D PhysicsBodies.
/// 
/// A HingeJoint3D normally uses the Z axis of body A as the hinge axis, another axis can be specified when adding it manually though. See also [Generic6DOFJoint3D].
open class HingeJoint3D : Joint3D {

    public enum Param : Int32 {
        case PARAM_BIAS = 0
        case PARAM_LIMIT_UPPER = 1
        case PARAM_LIMIT_LOWER = 2
        case PARAM_LIMIT_BIAS = 3
        case PARAM_LIMIT_SOFTNESS = 4
        case PARAM_LIMIT_RELAXATION = 5
        case PARAM_MOTOR_TARGET_VELOCITY = 6
        case PARAM_MOTOR_MAX_IMPULSE = 7
        case PARAM_MAX = 8
    }
    public enum Flag : Int32 {
        case FLAG_USE_LIMIT = 0
        case FLAG_ENABLE_MOTOR = 1
        case FLAG_MAX = 2
    }

    public override class var __godot_name: StringName { __godot_name_HingeJoint3D }

    static var _method_set_param_3082977519: GDExtensionMethodBindPtr! = nil
    static var _method_get_param_4066002676: GDExtensionMethodBindPtr! = nil
    static var _method_set_flag_1083494620: GDExtensionMethodBindPtr! = nil
    static var _method_get_flag_2841369610: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_HingeJoint3D = StringName(from: "HingeJoint3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_param_3082977519_name = StringName(from: "set_param")
        self._method_set_param_3082977519 = self.interface.pointee.classdb_get_method_bind(__godot_name_HingeJoint3D._native_ptr(), _method_set_param_3082977519_name._native_ptr(), 3082977519)
        assert(HingeJoint3D._method_set_param_3082977519 != nil)
        let _method_get_param_4066002676_name = StringName(from: "get_param")
        self._method_get_param_4066002676 = self.interface.pointee.classdb_get_method_bind(__godot_name_HingeJoint3D._native_ptr(), _method_get_param_4066002676_name._native_ptr(), 4066002676)
        assert(HingeJoint3D._method_get_param_4066002676 != nil)
        let _method_set_flag_1083494620_name = StringName(from: "set_flag")
        self._method_set_flag_1083494620 = self.interface.pointee.classdb_get_method_bind(__godot_name_HingeJoint3D._native_ptr(), _method_set_flag_1083494620_name._native_ptr(), 1083494620)
        assert(HingeJoint3D._method_set_flag_1083494620 != nil)
        let _method_get_flag_2841369610_name = StringName(from: "get_flag")
        self._method_get_flag_2841369610 = self.interface.pointee.classdb_get_method_bind(__godot_name_HingeJoint3D._native_ptr(), _method_get_flag_2841369610_name._native_ptr(), 2841369610)
        assert(HingeJoint3D._method_get_flag_2841369610 != nil)
    }

    public func set_param(param: HingeJoint3D.Param, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_param_3082977519,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param(param: HingeJoint3D.Param) -> Float64 {
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
                    Self._method_get_param_4066002676,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_flag(flag: HingeJoint3D.Flag, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flag_1083494620,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_flag(flag: HingeJoint3D.Flag) -> UInt8 {
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_flag_2841369610,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
}