import godot_native

fileprivate var __godot_name_XRNode3D: StringName! = nil

/// A spatial node that has its position automatically updated by the [XRServer].
/// 
/// This node can be bound to a specific pose of a [XRPositionalTracker] and will automatically have its [member Node3D.transform] updated by the [XRServer]. Nodes of this type must be added as children of the [XROrigin3D] node.
public class XRNode3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_XRNode3D }

    static var _method_set_tracker_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_tracker_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_pose_name_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_pose_name_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_get_is_active_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_has_tracking_data_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_pose_2806551826: GDExtensionMethodBindPtr! = nil
    static var _method_trigger_haptic_pulse_508576839: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_XRNode3D = StringName(from: "XRNode3D")

        let _method_set_tracker_3304788590_name = StringName(from: "set_tracker")
        self._method_set_tracker_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tracker_3304788590_name._native_ptr(), 3304788590)
        assert(XRNode3D._method_set_tracker_3304788590 != nil)
        let _method_get_tracker_2002593661_name = StringName(from: "get_tracker")
        self._method_get_tracker_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tracker_2002593661_name._native_ptr(), 2002593661)
        assert(XRNode3D._method_get_tracker_2002593661 != nil)
        let _method_set_pose_name_3304788590_name = StringName(from: "set_pose_name")
        self._method_set_pose_name_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pose_name_3304788590_name._native_ptr(), 3304788590)
        assert(XRNode3D._method_set_pose_name_3304788590 != nil)
        let _method_get_pose_name_2002593661_name = StringName(from: "get_pose_name")
        self._method_get_pose_name_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pose_name_2002593661_name._native_ptr(), 2002593661)
        assert(XRNode3D._method_get_pose_name_2002593661 != nil)
        let _method_get_is_active_36873697_name = StringName(from: "get_is_active")
        self._method_get_is_active_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_is_active_36873697_name._native_ptr(), 36873697)
        assert(XRNode3D._method_get_is_active_36873697 != nil)
        let _method_get_has_tracking_data_36873697_name = StringName(from: "get_has_tracking_data")
        self._method_get_has_tracking_data_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_has_tracking_data_36873697_name._native_ptr(), 36873697)
        assert(XRNode3D._method_get_has_tracking_data_36873697 != nil)
        let _method_get_pose_2806551826_name = StringName(from: "get_pose")
        self._method_get_pose_2806551826 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pose_2806551826_name._native_ptr(), 2806551826)
        assert(XRNode3D._method_get_pose_2806551826 != nil)
        let _method_trigger_haptic_pulse_508576839_name = StringName(from: "trigger_haptic_pulse")
        self._method_trigger_haptic_pulse_508576839 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_trigger_haptic_pulse_508576839_name._native_ptr(), 508576839)
        assert(XRNode3D._method_trigger_haptic_pulse_508576839 != nil)
    }

    public func set_tracker(tracker_name: StringName)  {
        let tracker_name_native = tracker_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tracker_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tracker_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tracker() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tracker_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func set_pose_name(pose: StringName)  {
        let pose_native = pose._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pose_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pose_name_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_pose_name() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pose_name_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func get_is_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_is_active_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            return UInt8(from: __resPtr.pointee)
    }
    public func get_pose() -> XRPose {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pose_2806551826,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPose(from: __resPtr.pointee)
    }
    public func trigger_haptic_pulse(action_name: String, frequency: Float64, amplitude: Float64, duration_sec: Float64, delay_sec: Float64)  {
        withUnsafePointer(to: delay_sec) { delay_sec_native in
        withUnsafePointer(to: duration_sec) { duration_sec_native in
        withUnsafePointer(to: amplitude) { amplitude_native in
        withUnsafePointer(to: frequency) { frequency_native in
        withUnsafePointer(to: action_name) { action_name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_name_native), .init(frequency_native), .init(amplitude_native), .init(duration_sec_native), .init(delay_sec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_trigger_haptic_pulse_508576839,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
    }
}