import godot_native

fileprivate var __godot_name_XRPositionalTracker: StringName! = nil

/// A tracked object.
/// 
/// An instance of this object represents a device that is tracked, such as a controller or anchor point. HMDs aren't represented here as they are handled internally.
///  
/// As controllers are turned on and the [XRInterface] detects them, instances of this object are automatically added to this list of active tracking objects accessible through the [XRServer].
///  
/// The [XRController3D] and [XRAnchor3D] both consume objects of this type and should be used in your project. The positional trackers are just under-the-hood objects that make this all work. These are mostly exposed so that GDExtension-based interfaces can interact with them.
open class XRPositionalTracker : RefCounted {

    public enum TrackerHand : Int32 {
        case TRACKER_HAND_UNKNOWN = 0
        case TRACKER_HAND_LEFT = 1
        case TRACKER_HAND_RIGHT = 2
    }

    public override class var __godot_name: StringName { __godot_name_XRPositionalTracker }

    static var _method_get_tracker_type_2784508102: StringName! = nil
    static var _method_set_tracker_type_3055763575: StringName! = nil
    static var _method_get_tracker_name_2002593661: StringName! = nil
    static var _method_set_tracker_name_3304788590: StringName! = nil
    static var _method_get_tracker_desc_201670096: StringName! = nil
    static var _method_set_tracker_desc_83702148: StringName! = nil
    static var _method_get_tracker_profile_201670096: StringName! = nil
    static var _method_set_tracker_profile_83702148: StringName! = nil
    static var _method_get_tracker_hand_4181770860: StringName! = nil
    static var _method_set_tracker_hand_3904108980: StringName! = nil
    static var _method_has_pose_2619796661: StringName! = nil
    static var _method_get_pose_4099720006: StringName! = nil
    static var _method_invalidate_pose_3304788590: StringName! = nil
    static var _method_set_pose_3451230163: StringName! = nil
    static var _method_get_input_2760726917: StringName! = nil
    static var _method_set_input_3776071444: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_XRPositionalTracker == nil)
        __godot_name_XRPositionalTracker = StringName(from: "XRPositionalTracker")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_tracker_type_2784508102 = StringName(from: "get_tracker_type")
        assert(self._method_get_tracker_type_2784508102 != nil)
        self._method_set_tracker_type_3055763575 = StringName(from: "set_tracker_type")
        assert(self._method_set_tracker_type_3055763575 != nil)
        self._method_get_tracker_name_2002593661 = StringName(from: "get_tracker_name")
        assert(self._method_get_tracker_name_2002593661 != nil)
        self._method_set_tracker_name_3304788590 = StringName(from: "set_tracker_name")
        assert(self._method_set_tracker_name_3304788590 != nil)
        self._method_get_tracker_desc_201670096 = StringName(from: "get_tracker_desc")
        assert(self._method_get_tracker_desc_201670096 != nil)
        self._method_set_tracker_desc_83702148 = StringName(from: "set_tracker_desc")
        assert(self._method_set_tracker_desc_83702148 != nil)
        self._method_get_tracker_profile_201670096 = StringName(from: "get_tracker_profile")
        assert(self._method_get_tracker_profile_201670096 != nil)
        self._method_set_tracker_profile_83702148 = StringName(from: "set_tracker_profile")
        assert(self._method_set_tracker_profile_83702148 != nil)
        self._method_get_tracker_hand_4181770860 = StringName(from: "get_tracker_hand")
        assert(self._method_get_tracker_hand_4181770860 != nil)
        self._method_set_tracker_hand_3904108980 = StringName(from: "set_tracker_hand")
        assert(self._method_set_tracker_hand_3904108980 != nil)
        self._method_has_pose_2619796661 = StringName(from: "has_pose")
        assert(self._method_has_pose_2619796661 != nil)
        self._method_get_pose_4099720006 = StringName(from: "get_pose")
        assert(self._method_get_pose_4099720006 != nil)
        self._method_invalidate_pose_3304788590 = StringName(from: "invalidate_pose")
        assert(self._method_invalidate_pose_3304788590 != nil)
        self._method_set_pose_3451230163 = StringName(from: "set_pose")
        assert(self._method_set_pose_3451230163 != nil)
        self._method_get_input_2760726917 = StringName(from: "get_input")
        assert(self._method_get_input_2760726917 != nil)
        self._method_set_input_3776071444 = StringName(from: "set_input")
        assert(self._method_set_input_3776071444 != nil)
    }

    public func get_tracker_type() -> XRServer.TrackerType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tracker_type_2784508102._native_ptr(),
                    2784508102)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRServer.TrackerType(godot: __resPtr.pointee)
    }
    public func set_tracker_type(`type`: XRServer.TrackerType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tracker_type_3055763575._native_ptr(),
                    3055763575)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tracker_name() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tracker_name_2002593661._native_ptr(),
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
    public func set_tracker_name(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tracker_name_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tracker_desc() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tracker_desc_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_tracker_desc(description: godot.String)  {
        let description_native = description._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(description_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tracker_desc_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tracker_profile() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tracker_profile_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_tracker_profile(profile: godot.String)  {
        let profile_native = profile._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(profile_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tracker_profile_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tracker_hand() -> XRPositionalTracker.TrackerHand {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tracker_hand_4181770860._native_ptr(),
                    4181770860)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPositionalTracker.TrackerHand(godot: __resPtr.pointee)
    }
    public func set_tracker_hand(hand: XRPositionalTracker.TrackerHand)  {
        withUnsafePointer(to: hand.rawValue) { hand_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hand_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tracker_hand_3904108980._native_ptr(),
                    3904108980)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_pose(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_pose_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_pose(name: StringName) -> XRPose {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_pose_4099720006._native_ptr(),
                    4099720006)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPose(godot: __resPtr.pointee)
    }
    public func invalidate_pose(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_invalidate_pose_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_pose(name: StringName, transform: Transform3D, linear_velocity: Vector3, angular_velocity: Vector3, tracking_confidence: XRPose.TrackingConfidence)  {
        withUnsafePointer(to: tracking_confidence.rawValue) { tracking_confidence_native in
        let angular_velocity_native = angular_velocity._native_ptr()
        let linear_velocity_native = linear_velocity._native_ptr()
        let transform_native = transform._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(transform_native), .init(linear_velocity_native), .init(angular_velocity_native), .init(tracking_confidence_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_pose_3451230163._native_ptr(),
                    3451230163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_input(name: StringName) -> Variant {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_input_2760726917._native_ptr(),
                    2760726917)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func set_input(name: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_input_3776071444._native_ptr(),
                    3776071444)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}