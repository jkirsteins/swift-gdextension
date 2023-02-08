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

    static var _method_set_has_tracking_data_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_has_tracking_data_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_name_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_name_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_transform_2952846383: GDExtensionMethodBindPtr! = nil
    static var _method_get_transform_3229777777: GDExtensionMethodBindPtr! = nil
    static var _method_get_adjusted_transform_3229777777: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_velocity_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_velocity_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_angular_velocity_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_angular_velocity_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_tracking_confidence_4171656666: GDExtensionMethodBindPtr! = nil
    static var _method_get_tracking_confidence_2064923680: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_XRPose = StringName(from: "XRPose")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_has_tracking_data_2586408642_name = StringName(from: "set_has_tracking_data")
        self._method_set_has_tracking_data_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_set_has_tracking_data_2586408642_name._native_ptr(), 2586408642)
        assert(XRPose._method_set_has_tracking_data_2586408642 != nil)
        let _method_get_has_tracking_data_36873697_name = StringName(from: "get_has_tracking_data")
        self._method_get_has_tracking_data_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_get_has_tracking_data_36873697_name._native_ptr(), 36873697)
        assert(XRPose._method_get_has_tracking_data_36873697 != nil)
        let _method_set_name_3304788590_name = StringName(from: "set_name")
        self._method_set_name_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_set_name_3304788590_name._native_ptr(), 3304788590)
        assert(XRPose._method_set_name_3304788590 != nil)
        let _method_get_name_2002593661_name = StringName(from: "get_name")
        self._method_get_name_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_get_name_2002593661_name._native_ptr(), 2002593661)
        assert(XRPose._method_get_name_2002593661 != nil)
        let _method_set_transform_2952846383_name = StringName(from: "set_transform")
        self._method_set_transform_2952846383 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_set_transform_2952846383_name._native_ptr(), 2952846383)
        assert(XRPose._method_set_transform_2952846383 != nil)
        let _method_get_transform_3229777777_name = StringName(from: "get_transform")
        self._method_get_transform_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_get_transform_3229777777_name._native_ptr(), 3229777777)
        assert(XRPose._method_get_transform_3229777777 != nil)
        let _method_get_adjusted_transform_3229777777_name = StringName(from: "get_adjusted_transform")
        self._method_get_adjusted_transform_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_get_adjusted_transform_3229777777_name._native_ptr(), 3229777777)
        assert(XRPose._method_get_adjusted_transform_3229777777 != nil)
        let _method_set_linear_velocity_3460891852_name = StringName(from: "set_linear_velocity")
        self._method_set_linear_velocity_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_set_linear_velocity_3460891852_name._native_ptr(), 3460891852)
        assert(XRPose._method_set_linear_velocity_3460891852 != nil)
        let _method_get_linear_velocity_3360562783_name = StringName(from: "get_linear_velocity")
        self._method_get_linear_velocity_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_get_linear_velocity_3360562783_name._native_ptr(), 3360562783)
        assert(XRPose._method_get_linear_velocity_3360562783 != nil)
        let _method_set_angular_velocity_3460891852_name = StringName(from: "set_angular_velocity")
        self._method_set_angular_velocity_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_set_angular_velocity_3460891852_name._native_ptr(), 3460891852)
        assert(XRPose._method_set_angular_velocity_3460891852 != nil)
        let _method_get_angular_velocity_3360562783_name = StringName(from: "get_angular_velocity")
        self._method_get_angular_velocity_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_get_angular_velocity_3360562783_name._native_ptr(), 3360562783)
        assert(XRPose._method_get_angular_velocity_3360562783 != nil)
        let _method_set_tracking_confidence_4171656666_name = StringName(from: "set_tracking_confidence")
        self._method_set_tracking_confidence_4171656666 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_set_tracking_confidence_4171656666_name._native_ptr(), 4171656666)
        assert(XRPose._method_set_tracking_confidence_4171656666 != nil)
        let _method_get_tracking_confidence_2064923680_name = StringName(from: "get_tracking_confidence")
        self._method_get_tracking_confidence_2064923680 = self.interface.pointee.classdb_get_method_bind(__godot_name_XRPose._native_ptr(), _method_get_tracking_confidence_2064923680_name._native_ptr(), 2064923680)
        assert(XRPose._method_get_tracking_confidence_2064923680 != nil)
    }

    public func set_has_tracking_data(has_tracking_data: UInt8)  {
        withUnsafePointer(to: has_tracking_data) { has_tracking_data_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(has_tracking_data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_has_tracking_data_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_has_tracking_data_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_name_3304788590,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_name_2002593661,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transform_2952846383,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transform_3229777777,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_adjusted_transform_3229777777,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_linear_velocity_3460891852,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_linear_velocity_3360562783,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_angular_velocity_3460891852,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_angular_velocity_3360562783,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tracking_confidence_4171656666,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tracking_confidence_2064923680,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPose.TrackingConfidence(godot: __resPtr.pointee)
    }
}