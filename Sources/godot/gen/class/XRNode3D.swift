import godot_native

fileprivate var __godot_name_XRNode3D: StringName! = nil

/// A spatial node that has its position automatically updated by the [XRServer].
/// 
/// This node can be bound to a specific pose of a [XRPositionalTracker] and will automatically have its [member Node3D.transform] updated by the [XRServer]. Nodes of this type must be added as children of the [XROrigin3D] node.
open class XRNode3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_XRNode3D }

    static var _method_set_tracker_3304788590: StringName! = nil
    static var _method_get_tracker_2002593661: StringName! = nil
    static var _method_set_pose_name_3304788590: StringName! = nil
    static var _method_get_pose_name_2002593661: StringName! = nil
    static var _method_get_is_active_36873697: StringName! = nil
    static var _method_get_has_tracking_data_36873697: StringName! = nil
    static var _method_get_pose_2806551826: StringName! = nil
    static var _method_trigger_haptic_pulse_508576839: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_XRNode3D == nil)
        __godot_name_XRNode3D = StringName(from: "XRNode3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_tracker_3304788590 = StringName(from: "set_tracker")
        assert(self._method_set_tracker_3304788590 != nil)
        self._method_get_tracker_2002593661 = StringName(from: "get_tracker")
        assert(self._method_get_tracker_2002593661 != nil)
        self._method_set_pose_name_3304788590 = StringName(from: "set_pose_name")
        assert(self._method_set_pose_name_3304788590 != nil)
        self._method_get_pose_name_2002593661 = StringName(from: "get_pose_name")
        assert(self._method_get_pose_name_2002593661 != nil)
        self._method_get_is_active_36873697 = StringName(from: "get_is_active")
        assert(self._method_get_is_active_36873697 != nil)
        self._method_get_has_tracking_data_36873697 = StringName(from: "get_has_tracking_data")
        assert(self._method_get_has_tracking_data_36873697 != nil)
        self._method_get_pose_2806551826 = StringName(from: "get_pose")
        assert(self._method_get_pose_2806551826 != nil)
        self._method_trigger_haptic_pulse_508576839 = StringName(from: "trigger_haptic_pulse")
        assert(self._method_trigger_haptic_pulse_508576839 != nil)
    }

    public func set_tracker(tracker_name: StringName)  {
        let tracker_name_native = tracker_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tracker_name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tracker_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tracker_2002593661._native_ptr(),
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
    public func set_pose_name(pose: StringName)  {
        let pose_native = pose._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pose_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_pose_name_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pose_name_2002593661._native_ptr(),
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
    public func get_is_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_is_active_36873697._native_ptr(),
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
    public func get_pose() -> XRPose {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pose_2806551826._native_ptr(),
                    2806551826)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPose(godot: __resPtr.pointee)
    }
    public func trigger_haptic_pulse(action_name: godot.String, frequency: Float64, amplitude: Float64, duration_sec: Float64, delay_sec: Float64)  {
        withUnsafePointer(to: delay_sec) { delay_sec_native in
        withUnsafePointer(to: duration_sec) { duration_sec_native in
        withUnsafePointer(to: amplitude) { amplitude_native in
        withUnsafePointer(to: frequency) { frequency_native in
        let action_name_native = action_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_name_native), .init(frequency_native), .init(amplitude_native), .init(duration_sec_native), .init(delay_sec_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_trigger_haptic_pulse_508576839._native_ptr(),
                    508576839)
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
        }
    }
}