import godot_native

fileprivate var __godot_name_Generic6DOFJoint3D: StringName! = nil

/// The generic 6-degrees-of-freedom joint can implement a variety of joint types by locking certain axes' rotation or translation.
/// 
/// The first 3 DOF axes are linear axes, which represent translation of Bodies, and the latter 3 DOF axes represent the angular motion. Each axis can be either locked, or limited.
open class Generic6DOFJoint3D : Joint3D {

    public enum Param : Int32 {
        case PARAM_LINEAR_LOWER_LIMIT = 0
        case PARAM_LINEAR_UPPER_LIMIT = 1
        case PARAM_LINEAR_LIMIT_SOFTNESS = 2
        case PARAM_LINEAR_RESTITUTION = 3
        case PARAM_LINEAR_DAMPING = 4
        case PARAM_LINEAR_MOTOR_TARGET_VELOCITY = 5
        case PARAM_LINEAR_MOTOR_FORCE_LIMIT = 6
        case PARAM_LINEAR_SPRING_STIFFNESS = 7
        case PARAM_LINEAR_SPRING_DAMPING = 8
        case PARAM_LINEAR_SPRING_EQUILIBRIUM_POINT = 9
        case PARAM_ANGULAR_LOWER_LIMIT = 10
        case PARAM_ANGULAR_UPPER_LIMIT = 11
        case PARAM_ANGULAR_LIMIT_SOFTNESS = 12
        case PARAM_ANGULAR_DAMPING = 13
        case PARAM_ANGULAR_RESTITUTION = 14
        case PARAM_ANGULAR_FORCE_LIMIT = 15
        case PARAM_ANGULAR_ERP = 16
        case PARAM_ANGULAR_MOTOR_TARGET_VELOCITY = 17
        case PARAM_ANGULAR_MOTOR_FORCE_LIMIT = 18
        case PARAM_ANGULAR_SPRING_STIFFNESS = 19
        case PARAM_ANGULAR_SPRING_DAMPING = 20
        case PARAM_ANGULAR_SPRING_EQUILIBRIUM_POINT = 21
        case PARAM_MAX = 22
    }
    public enum Flag : Int32 {
        case FLAG_ENABLE_LINEAR_LIMIT = 0
        case FLAG_ENABLE_ANGULAR_LIMIT = 1
        case FLAG_ENABLE_LINEAR_SPRING = 3
        case FLAG_ENABLE_ANGULAR_SPRING = 2
        case FLAG_ENABLE_MOTOR = 4
        case FLAG_ENABLE_LINEAR_MOTOR = 5
        case FLAG_MAX = 6
    }

    public override class var __godot_name: StringName { __godot_name_Generic6DOFJoint3D }

    static var _method_set_param_x_2018184242: StringName! = nil
    static var _method_get_param_x_2599835054: StringName! = nil
    static var _method_set_param_y_2018184242: StringName! = nil
    static var _method_get_param_y_2599835054: StringName! = nil
    static var _method_set_param_z_2018184242: StringName! = nil
    static var _method_get_param_z_2599835054: StringName! = nil
    static var _method_set_flag_x_2451594564: StringName! = nil
    static var _method_get_flag_x_2122427807: StringName! = nil
    static var _method_set_flag_y_2451594564: StringName! = nil
    static var _method_get_flag_y_2122427807: StringName! = nil
    static var _method_set_flag_z_2451594564: StringName! = nil
    static var _method_get_flag_z_2122427807: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Generic6DOFJoint3D == nil)
        __godot_name_Generic6DOFJoint3D = StringName(from: "Generic6DOFJoint3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_param_x_2018184242 = StringName(from: "set_param_x")
        assert(self._method_set_param_x_2018184242 != nil)
        self._method_get_param_x_2599835054 = StringName(from: "get_param_x")
        assert(self._method_get_param_x_2599835054 != nil)
        self._method_set_param_y_2018184242 = StringName(from: "set_param_y")
        assert(self._method_set_param_y_2018184242 != nil)
        self._method_get_param_y_2599835054 = StringName(from: "get_param_y")
        assert(self._method_get_param_y_2599835054 != nil)
        self._method_set_param_z_2018184242 = StringName(from: "set_param_z")
        assert(self._method_set_param_z_2018184242 != nil)
        self._method_get_param_z_2599835054 = StringName(from: "get_param_z")
        assert(self._method_get_param_z_2599835054 != nil)
        self._method_set_flag_x_2451594564 = StringName(from: "set_flag_x")
        assert(self._method_set_flag_x_2451594564 != nil)
        self._method_get_flag_x_2122427807 = StringName(from: "get_flag_x")
        assert(self._method_get_flag_x_2122427807 != nil)
        self._method_set_flag_y_2451594564 = StringName(from: "set_flag_y")
        assert(self._method_set_flag_y_2451594564 != nil)
        self._method_get_flag_y_2122427807 = StringName(from: "get_flag_y")
        assert(self._method_get_flag_y_2122427807 != nil)
        self._method_set_flag_z_2451594564 = StringName(from: "set_flag_z")
        assert(self._method_set_flag_z_2451594564 != nil)
        self._method_get_flag_z_2122427807 = StringName(from: "get_flag_z")
        assert(self._method_get_flag_z_2122427807 != nil)
    }

    public func set_param_x(param: Generic6DOFJoint3D.Param, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_param_x_2018184242._native_ptr(),
                    2018184242)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param_x(param: Generic6DOFJoint3D.Param) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_param_x_2599835054._native_ptr(),
                    2599835054)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_param_y(param: Generic6DOFJoint3D.Param, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_param_y_2018184242._native_ptr(),
                    2018184242)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param_y(param: Generic6DOFJoint3D.Param) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_param_y_2599835054._native_ptr(),
                    2599835054)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_param_z(param: Generic6DOFJoint3D.Param, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_param_z_2018184242._native_ptr(),
                    2018184242)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param_z(param: Generic6DOFJoint3D.Param) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_param_z_2599835054._native_ptr(),
                    2599835054)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_flag_x(flag: Generic6DOFJoint3D.Flag, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_flag_x_2451594564._native_ptr(),
                    2451594564)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_flag_x(flag: Generic6DOFJoint3D.Flag) -> UInt8 {
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_flag_x_2122427807._native_ptr(),
                    2122427807)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_flag_y(flag: Generic6DOFJoint3D.Flag, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_flag_y_2451594564._native_ptr(),
                    2451594564)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_flag_y(flag: Generic6DOFJoint3D.Flag) -> UInt8 {
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_flag_y_2122427807._native_ptr(),
                    2122427807)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_flag_z(flag: Generic6DOFJoint3D.Flag, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_flag_z_2451594564._native_ptr(),
                    2451594564)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_flag_z(flag: Generic6DOFJoint3D.Flag) -> UInt8 {
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_flag_z_2122427807._native_ptr(),
                    2122427807)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
}