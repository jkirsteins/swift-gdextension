import godot_native

fileprivate var __godot_name_XRServer: StringName! = nil

/// Server for AR and VR features.
/// 
/// The AR/VR server is the heart of our Advanced and Virtual Reality solution and handles all the processing.
public class XRServer : Object {

    public enum TrackerType : Int32 {
        case TRACKER_HEAD = 1
        case TRACKER_CONTROLLER = 2
        case TRACKER_BASESTATION = 4
        case TRACKER_ANCHOR = 8
        case TRACKER_ANY_KNOWN = 127
        case TRACKER_UNKNOWN = 128
        case TRACKER_ANY = 255
    }
    public enum RotationMode : Int32 {
        case RESET_FULL_ROTATION = 0
        case RESET_BUT_KEEP_TILT = 1
        case DONT_RESET_ROTATION = 2
    }

    public override class var __godot_name: StringName { __godot_name_XRServer }

    static var _method_get_world_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_world_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_reference_frame_3229777777: GDExtensionMethodBindPtr! = nil
    static var _method_center_on_hmd_1450904707: GDExtensionMethodBindPtr! = nil
    static var _method_get_hmd_transform_4183770049: GDExtensionMethodBindPtr! = nil
    static var _method_add_interface_1898711491: GDExtensionMethodBindPtr! = nil
    static var _method_get_interface_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_remove_interface_1898711491: GDExtensionMethodBindPtr! = nil
    static var _method_get_interface_4237347919: GDExtensionMethodBindPtr! = nil
    static var _method_get_interfaces_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_find_interface_1395192955: GDExtensionMethodBindPtr! = nil
    static var _method_add_tracker_2692800323: GDExtensionMethodBindPtr! = nil
    static var _method_remove_tracker_2692800323: GDExtensionMethodBindPtr! = nil
    static var _method_get_trackers_3554694381: GDExtensionMethodBindPtr! = nil
    static var _method_get_tracker_2742084544: GDExtensionMethodBindPtr! = nil
    static var _method_get_primary_interface_2143545064: GDExtensionMethodBindPtr! = nil
    static var _method_set_primary_interface_1898711491: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_XRServer = StringName(from: "XRServer")

        let _method_get_world_scale_1740695150_name = StringName(from: "get_world_scale")
        self._method_get_world_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_world_scale_1740695150_name._native_ptr(), 1740695150)
        assert(XRServer._method_get_world_scale_1740695150 != nil)
        let _method_set_world_scale_373806689_name = StringName(from: "set_world_scale")
        self._method_set_world_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_world_scale_373806689_name._native_ptr(), 373806689)
        assert(XRServer._method_set_world_scale_373806689 != nil)
        let _method_get_reference_frame_3229777777_name = StringName(from: "get_reference_frame")
        self._method_get_reference_frame_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_reference_frame_3229777777_name._native_ptr(), 3229777777)
        assert(XRServer._method_get_reference_frame_3229777777 != nil)
        let _method_center_on_hmd_1450904707_name = StringName(from: "center_on_hmd")
        self._method_center_on_hmd_1450904707 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_center_on_hmd_1450904707_name._native_ptr(), 1450904707)
        assert(XRServer._method_center_on_hmd_1450904707 != nil)
        let _method_get_hmd_transform_4183770049_name = StringName(from: "get_hmd_transform")
        self._method_get_hmd_transform_4183770049 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_hmd_transform_4183770049_name._native_ptr(), 4183770049)
        assert(XRServer._method_get_hmd_transform_4183770049 != nil)
        let _method_add_interface_1898711491_name = StringName(from: "add_interface")
        self._method_add_interface_1898711491 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_interface_1898711491_name._native_ptr(), 1898711491)
        assert(XRServer._method_add_interface_1898711491 != nil)
        let _method_get_interface_count_3905245786_name = StringName(from: "get_interface_count")
        self._method_get_interface_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_interface_count_3905245786_name._native_ptr(), 3905245786)
        assert(XRServer._method_get_interface_count_3905245786 != nil)
        let _method_remove_interface_1898711491_name = StringName(from: "remove_interface")
        self._method_remove_interface_1898711491 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_interface_1898711491_name._native_ptr(), 1898711491)
        assert(XRServer._method_remove_interface_1898711491 != nil)
        let _method_get_interface_4237347919_name = StringName(from: "get_interface")
        self._method_get_interface_4237347919 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_interface_4237347919_name._native_ptr(), 4237347919)
        assert(XRServer._method_get_interface_4237347919 != nil)
        let _method_get_interfaces_3995934104_name = StringName(from: "get_interfaces")
        self._method_get_interfaces_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_interfaces_3995934104_name._native_ptr(), 3995934104)
        assert(XRServer._method_get_interfaces_3995934104 != nil)
        let _method_find_interface_1395192955_name = StringName(from: "find_interface")
        self._method_find_interface_1395192955 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_find_interface_1395192955_name._native_ptr(), 1395192955)
        assert(XRServer._method_find_interface_1395192955 != nil)
        let _method_add_tracker_2692800323_name = StringName(from: "add_tracker")
        self._method_add_tracker_2692800323 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_tracker_2692800323_name._native_ptr(), 2692800323)
        assert(XRServer._method_add_tracker_2692800323 != nil)
        let _method_remove_tracker_2692800323_name = StringName(from: "remove_tracker")
        self._method_remove_tracker_2692800323 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_tracker_2692800323_name._native_ptr(), 2692800323)
        assert(XRServer._method_remove_tracker_2692800323 != nil)
        let _method_get_trackers_3554694381_name = StringName(from: "get_trackers")
        self._method_get_trackers_3554694381 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_trackers_3554694381_name._native_ptr(), 3554694381)
        assert(XRServer._method_get_trackers_3554694381 != nil)
        let _method_get_tracker_2742084544_name = StringName(from: "get_tracker")
        self._method_get_tracker_2742084544 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tracker_2742084544_name._native_ptr(), 2742084544)
        assert(XRServer._method_get_tracker_2742084544 != nil)
        let _method_get_primary_interface_2143545064_name = StringName(from: "get_primary_interface")
        self._method_get_primary_interface_2143545064 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_primary_interface_2143545064_name._native_ptr(), 2143545064)
        assert(XRServer._method_get_primary_interface_2143545064 != nil)
        let _method_set_primary_interface_1898711491_name = StringName(from: "set_primary_interface")
        self._method_set_primary_interface_1898711491 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_primary_interface_1898711491_name._native_ptr(), 1898711491)
        assert(XRServer._method_set_primary_interface_1898711491 != nil)
    }

    public func get_world_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_world_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_world_scale(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_world_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_reference_frame() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_reference_frame_3229777777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func center_on_hmd(rotation_mode: XRServer.RotationMode, keep_height: UInt8)  {
        withUnsafePointer(to: keep_height) { keep_height_native in
        withUnsafePointer(to: rotation_mode.rawValue) { rotation_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rotation_mode_native), .init(keep_height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_center_on_hmd_1450904707,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_hmd_transform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_hmd_transform_4183770049,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func add_interface(interface: XRInterface)  {
        let interface_native = interface._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_interface_1898711491,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_interface_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_interface_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func remove_interface(interface: XRInterface)  {
        let interface_native = interface._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_interface_1898711491,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_interface(idx: Int64) -> XRInterface {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_interface_4237347919,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRInterface(from: __resPtr.pointee)
        }
    }
    public func get_interfaces() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_interfaces_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func find_interface(name: String) -> XRInterface {
        withUnsafePointer(to: name) { name_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_interface_1395192955,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRInterface(from: __resPtr.pointee)
        }
    }
    public func add_tracker(tracker: XRPositionalTracker)  {
        let tracker_native = tracker._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tracker_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_tracker_2692800323,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_tracker(tracker: XRPositionalTracker)  {
        let tracker_native = tracker._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tracker_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_tracker_2692800323,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_trackers(tracker_types: Int64) -> Dictionary {
        withUnsafePointer(to: tracker_types) { tracker_types_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tracker_types_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_trackers_3554694381,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
    }
    public func get_tracker(tracker_name: StringName) -> XRPositionalTracker {
        let tracker_name_native = tracker_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tracker_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tracker_2742084544,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPositionalTracker(from: __resPtr.pointee)
    }
    public func get_primary_interface() -> XRInterface {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_primary_interface_2143545064,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRInterface(from: __resPtr.pointee)
    }
    public func set_primary_interface(interface: XRInterface)  {
        let interface_native = interface._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_primary_interface_1898711491,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}