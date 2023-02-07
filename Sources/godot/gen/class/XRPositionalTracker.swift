import godot_native

fileprivate var __godot_name_XRPositionalTracker: StringName! = nil

/// A tracked object.
/// 
/// An instance of this object represents a device that is tracked, such as a controller or anchor point. HMDs aren't represented here as they are handled internally.
///  
/// As controllers are turned on and the [XRInterface] detects them, instances of this object are automatically added to this list of active tracking objects accessible through the [XRServer].
///  
/// The [XRController3D] and [XRAnchor3D] both consume objects of this type and should be used in your project. The positional trackers are just under-the-hood objects that make this all work. These are mostly exposed so that GDExtension-based interfaces can interact with them.
public class XRPositionalTracker : RefCounted {

    public enum TrackerHand : Int32 {
        case TRACKER_HAND_UNKNOWN = 0
        case TRACKER_HAND_LEFT = 1
        case TRACKER_HAND_RIGHT = 2
    }

    public override class var __godot_name: StringName { __godot_name_XRPositionalTracker }

    static var _method_get_tracker_type_2784508102: GDExtensionMethodBindPtr! = nil
    static var _method_set_tracker_type_3055763575: GDExtensionMethodBindPtr! = nil
    static var _method_get_tracker_name_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_tracker_name_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_tracker_desc_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_tracker_desc_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_tracker_profile_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_tracker_profile_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_tracker_hand_4181770860: GDExtensionMethodBindPtr! = nil
    static var _method_set_tracker_hand_3904108980: GDExtensionMethodBindPtr! = nil
    static var _method_has_pose_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_get_pose_4099720006: GDExtensionMethodBindPtr! = nil
    static var _method_invalidate_pose_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_set_pose_3451230163: GDExtensionMethodBindPtr! = nil
    static var _method_get_input_2760726917: GDExtensionMethodBindPtr! = nil
    static var _method_set_input_3776071444: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_XRPositionalTracker = StringName(from: "XRPositionalTracker")

        let _method_get_tracker_type_2784508102_name = StringName(from: "get_tracker_type")
        self._method_get_tracker_type_2784508102 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tracker_type_2784508102_name._native_ptr(), 2784508102)
        assert(XRPositionalTracker._method_get_tracker_type_2784508102 != nil)
        let _method_set_tracker_type_3055763575_name = StringName(from: "set_tracker_type")
        self._method_set_tracker_type_3055763575 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tracker_type_3055763575_name._native_ptr(), 3055763575)
        assert(XRPositionalTracker._method_set_tracker_type_3055763575 != nil)
        let _method_get_tracker_name_2002593661_name = StringName(from: "get_tracker_name")
        self._method_get_tracker_name_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tracker_name_2002593661_name._native_ptr(), 2002593661)
        assert(XRPositionalTracker._method_get_tracker_name_2002593661 != nil)
        let _method_set_tracker_name_3304788590_name = StringName(from: "set_tracker_name")
        self._method_set_tracker_name_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tracker_name_3304788590_name._native_ptr(), 3304788590)
        assert(XRPositionalTracker._method_set_tracker_name_3304788590 != nil)
        let _method_get_tracker_desc_201670096_name = StringName(from: "get_tracker_desc")
        self._method_get_tracker_desc_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tracker_desc_201670096_name._native_ptr(), 201670096)
        assert(XRPositionalTracker._method_get_tracker_desc_201670096 != nil)
        let _method_set_tracker_desc_83702148_name = StringName(from: "set_tracker_desc")
        self._method_set_tracker_desc_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tracker_desc_83702148_name._native_ptr(), 83702148)
        assert(XRPositionalTracker._method_set_tracker_desc_83702148 != nil)
        let _method_get_tracker_profile_201670096_name = StringName(from: "get_tracker_profile")
        self._method_get_tracker_profile_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tracker_profile_201670096_name._native_ptr(), 201670096)
        assert(XRPositionalTracker._method_get_tracker_profile_201670096 != nil)
        let _method_set_tracker_profile_83702148_name = StringName(from: "set_tracker_profile")
        self._method_set_tracker_profile_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tracker_profile_83702148_name._native_ptr(), 83702148)
        assert(XRPositionalTracker._method_set_tracker_profile_83702148 != nil)
        let _method_get_tracker_hand_4181770860_name = StringName(from: "get_tracker_hand")
        self._method_get_tracker_hand_4181770860 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tracker_hand_4181770860_name._native_ptr(), 4181770860)
        assert(XRPositionalTracker._method_get_tracker_hand_4181770860 != nil)
        let _method_set_tracker_hand_3904108980_name = StringName(from: "set_tracker_hand")
        self._method_set_tracker_hand_3904108980 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tracker_hand_3904108980_name._native_ptr(), 3904108980)
        assert(XRPositionalTracker._method_set_tracker_hand_3904108980 != nil)
        let _method_has_pose_2619796661_name = StringName(from: "has_pose")
        self._method_has_pose_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_pose_2619796661_name._native_ptr(), 2619796661)
        assert(XRPositionalTracker._method_has_pose_2619796661 != nil)
        let _method_get_pose_4099720006_name = StringName(from: "get_pose")
        self._method_get_pose_4099720006 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pose_4099720006_name._native_ptr(), 4099720006)
        assert(XRPositionalTracker._method_get_pose_4099720006 != nil)
        let _method_invalidate_pose_3304788590_name = StringName(from: "invalidate_pose")
        self._method_invalidate_pose_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_invalidate_pose_3304788590_name._native_ptr(), 3304788590)
        assert(XRPositionalTracker._method_invalidate_pose_3304788590 != nil)
        let _method_set_pose_3451230163_name = StringName(from: "set_pose")
        self._method_set_pose_3451230163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pose_3451230163_name._native_ptr(), 3451230163)
        assert(XRPositionalTracker._method_set_pose_3451230163 != nil)
        let _method_get_input_2760726917_name = StringName(from: "get_input")
        self._method_get_input_2760726917 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_input_2760726917_name._native_ptr(), 2760726917)
        assert(XRPositionalTracker._method_get_input_2760726917 != nil)
        let _method_set_input_3776071444_name = StringName(from: "set_input")
        self._method_set_input_3776071444 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_input_3776071444_name._native_ptr(), 3776071444)
        assert(XRPositionalTracker._method_set_input_3776071444 != nil)
    }

    public func get_tracker_type() -> XRServer.TrackerType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tracker_type_2784508102,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRServer.TrackerType(from: __resPtr.pointee)
    }
    public func set_tracker_type(`type`: XRServer.TrackerType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tracker_type_3055763575,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tracker_name_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func set_tracker_name(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tracker_name_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_tracker_desc() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tracker_desc_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_tracker_desc(description: String)  {
        withUnsafePointer(to: description) { description_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(description_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tracker_desc_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tracker_profile() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tracker_profile_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_tracker_profile(profile: String)  {
        withUnsafePointer(to: profile) { profile_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(profile_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tracker_profile_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tracker_hand() -> XRPositionalTracker.TrackerHand {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tracker_hand_4181770860,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPositionalTracker.TrackerHand(from: __resPtr.pointee)
    }
    public func set_tracker_hand(hand: XRPositionalTracker.TrackerHand)  {
        withUnsafePointer(to: hand.rawValue) { hand_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hand_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tracker_hand_3904108980,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_pose_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pose_4099720006,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPose(from: __resPtr.pointee)
    }
    public func invalidate_pose(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_invalidate_pose_3304788590,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pose_3451230163,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_input_2760726917,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_input_3776071444,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}