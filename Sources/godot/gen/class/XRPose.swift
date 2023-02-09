import godot_native

fileprivate var __godot_name_XRPose: StringName! = nil

/// This object contains all data related to a pose on a tracked object.
/// 
/// XR runtimes often identify multiple locations on devices such as controllers that are spatially tracked.
///  
/// Orientation, location, linear velocity and angular velocity are all provided for each pose by the XR runtime. This object contains this state of a pose.
open class XRPose : RefCounted {

    public enum TrackingConfidence : Int32 {
        case XR_TRACKING_CONFIDENCE_NONE = 0
        case XR_TRACKING_CONFIDENCE_LOW = 1
        case XR_TRACKING_CONFIDENCE_HIGH = 2
    }

    public override class var __godot_name: StringName { __godot_name_XRPose }

    static var _method_set_has_tracking_data_2586408642: StringName! = nil
    static var _method_get_has_tracking_data_36873697: StringName! = nil
    static var _method_set_name_3304788590: StringName! = nil
    static var _method_get_name_2002593661: StringName! = nil
    static var _method_set_transform_2952846383: StringName! = nil
    static var _method_get_transform_3229777777: StringName! = nil
    static var _method_get_adjusted_transform_3229777777: StringName! = nil
    static var _method_set_linear_velocity_3460891852: StringName! = nil
    static var _method_get_linear_velocity_3360562783: StringName! = nil
    static var _method_set_angular_velocity_3460891852: StringName! = nil
    static var _method_get_angular_velocity_3360562783: StringName! = nil
    static var _method_set_tracking_confidence_4171656666: StringName! = nil
    static var _method_get_tracking_confidence_2064923680: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_XRPose == nil)
        __godot_name_XRPose = StringName(from: "XRPose")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_has_tracking_data_2586408642 = StringName(from: "set_has_tracking_data")
        assert(self._method_set_has_tracking_data_2586408642 != nil)
        self._method_get_has_tracking_data_36873697 = StringName(from: "get_has_tracking_data")
        assert(self._method_get_has_tracking_data_36873697 != nil)
        self._method_set_name_3304788590 = StringName(from: "set_name")
        assert(self._method_set_name_3304788590 != nil)
        self._method_get_name_2002593661 = StringName(from: "get_name")
        assert(self._method_get_name_2002593661 != nil)
        self._method_set_transform_2952846383 = StringName(from: "set_transform")
        assert(self._method_set_transform_2952846383 != nil)
        self._method_get_transform_3229777777 = StringName(from: "get_transform")
        assert(self._method_get_transform_3229777777 != nil)
        self._method_get_adjusted_transform_3229777777 = StringName(from: "get_adjusted_transform")
        assert(self._method_get_adjusted_transform_3229777777 != nil)
        self._method_set_linear_velocity_3460891852 = StringName(from: "set_linear_velocity")
        assert(self._method_set_linear_velocity_3460891852 != nil)
        self._method_get_linear_velocity_3360562783 = StringName(from: "get_linear_velocity")
        assert(self._method_get_linear_velocity_3360562783 != nil)
        self._method_set_angular_velocity_3460891852 = StringName(from: "set_angular_velocity")
        assert(self._method_set_angular_velocity_3460891852 != nil)
        self._method_get_angular_velocity_3360562783 = StringName(from: "get_angular_velocity")
        assert(self._method_get_angular_velocity_3360562783 != nil)
        self._method_set_tracking_confidence_4171656666 = StringName(from: "set_tracking_confidence")
        assert(self._method_set_tracking_confidence_4171656666 != nil)
        self._method_get_tracking_confidence_2064923680 = StringName(from: "get_tracking_confidence")
        assert(self._method_get_tracking_confidence_2064923680 != nil)
    }

    public func set_has_tracking_data(has_tracking_data: UInt8)  {
        withUnsafePointer(to: has_tracking_data) { has_tracking_data_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(has_tracking_data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_has_tracking_data_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_has_tracking_data() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_has_tracking_data_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_name(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_name_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_name() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_name_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func set_transform(transform: Transform3D)  {
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transform_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_transform_2952846383._native_ptr(),
                    2952846383)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_transform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_transform_3229777777._native_ptr(),
                    3229777777)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
    }
    public func get_adjusted_transform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_adjusted_transform_3229777777._native_ptr(),
                    3229777777)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
    }
    public func set_linear_velocity(velocity: Vector3)  {
        let velocity_native = velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(velocity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_linear_velocity_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_linear_velocity() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_linear_velocity_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_angular_velocity(velocity: Vector3)  {
        let velocity_native = velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(velocity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_angular_velocity_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_angular_velocity() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_angular_velocity_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_tracking_confidence(tracking_confidence: XRPose.TrackingConfidence)  {
        withUnsafePointer(to: tracking_confidence.rawValue) { tracking_confidence_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tracking_confidence_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tracking_confidence_4171656666._native_ptr(),
                    4171656666)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tracking_confidence() -> XRPose.TrackingConfidence {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tracking_confidence_2064923680._native_ptr(),
                    2064923680)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPose.TrackingConfidence(godot: __resPtr.pointee)
    }
}