import godot_native

fileprivate var __godot_name_XRServer: StringName! = nil

/// Server for AR and VR features.
/// 
/// The AR/VR server is the heart of our Advanced and Virtual Reality solution and handles all the processing.
open class XRServer : Object {

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

    static var _method_get_world_scale_1740695150: StringName! = nil
    static var _method_set_world_scale_373806689: StringName! = nil
    static var _method_get_reference_frame_3229777777: StringName! = nil
    static var _method_center_on_hmd_1450904707: StringName! = nil
    static var _method_get_hmd_transform_4183770049: StringName! = nil
    static var _method_add_interface_1898711491: StringName! = nil
    static var _method_get_interface_count_3905245786: StringName! = nil
    static var _method_remove_interface_1898711491: StringName! = nil
    static var _method_get_interface_4237347919: StringName! = nil
    static var _method_get_interfaces_3995934104: StringName! = nil
    static var _method_find_interface_1395192955: StringName! = nil
    static var _method_add_tracker_2692800323: StringName! = nil
    static var _method_remove_tracker_2692800323: StringName! = nil
    static var _method_get_trackers_3554694381: StringName! = nil
    static var _method_get_tracker_2742084544: StringName! = nil
    static var _method_get_primary_interface_2143545064: StringName! = nil
    static var _method_set_primary_interface_1898711491: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_XRServer == nil)
        __godot_name_XRServer = StringName(from: "XRServer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_world_scale_1740695150 = StringName(from: "get_world_scale")
        assert(self._method_get_world_scale_1740695150 != nil)
        self._method_set_world_scale_373806689 = StringName(from: "set_world_scale")
        assert(self._method_set_world_scale_373806689 != nil)
        self._method_get_reference_frame_3229777777 = StringName(from: "get_reference_frame")
        assert(self._method_get_reference_frame_3229777777 != nil)
        self._method_center_on_hmd_1450904707 = StringName(from: "center_on_hmd")
        assert(self._method_center_on_hmd_1450904707 != nil)
        self._method_get_hmd_transform_4183770049 = StringName(from: "get_hmd_transform")
        assert(self._method_get_hmd_transform_4183770049 != nil)
        self._method_add_interface_1898711491 = StringName(from: "add_interface")
        assert(self._method_add_interface_1898711491 != nil)
        self._method_get_interface_count_3905245786 = StringName(from: "get_interface_count")
        assert(self._method_get_interface_count_3905245786 != nil)
        self._method_remove_interface_1898711491 = StringName(from: "remove_interface")
        assert(self._method_remove_interface_1898711491 != nil)
        self._method_get_interface_4237347919 = StringName(from: "get_interface")
        assert(self._method_get_interface_4237347919 != nil)
        self._method_get_interfaces_3995934104 = StringName(from: "get_interfaces")
        assert(self._method_get_interfaces_3995934104 != nil)
        self._method_find_interface_1395192955 = StringName(from: "find_interface")
        assert(self._method_find_interface_1395192955 != nil)
        self._method_add_tracker_2692800323 = StringName(from: "add_tracker")
        assert(self._method_add_tracker_2692800323 != nil)
        self._method_remove_tracker_2692800323 = StringName(from: "remove_tracker")
        assert(self._method_remove_tracker_2692800323 != nil)
        self._method_get_trackers_3554694381 = StringName(from: "get_trackers")
        assert(self._method_get_trackers_3554694381 != nil)
        self._method_get_tracker_2742084544 = StringName(from: "get_tracker")
        assert(self._method_get_tracker_2742084544 != nil)
        self._method_get_primary_interface_2143545064 = StringName(from: "get_primary_interface")
        assert(self._method_get_primary_interface_2143545064 != nil)
        self._method_set_primary_interface_1898711491 = StringName(from: "set_primary_interface")
        assert(self._method_set_primary_interface_1898711491 != nil)
    }

    public func get_world_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_world_scale_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_world_scale(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_world_scale_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_reference_frame_3229777777._native_ptr(),
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
    public func center_on_hmd(rotation_mode: XRServer.RotationMode, keep_height: UInt8)  {
        withUnsafePointer(to: keep_height) { keep_height_native in
        withUnsafePointer(to: rotation_mode.rawValue) { rotation_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rotation_mode_native), .init(keep_height_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_center_on_hmd_1450904707._native_ptr(),
                    1450904707)
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
    public func get_hmd_transform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_hmd_transform_4183770049._native_ptr(),
                    4183770049)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
    }
    public func add_interface(interface: XRInterface)  {
        let interface_native = interface._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_interface_1898711491._native_ptr(),
                    1898711491)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_interface_count_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func remove_interface(interface: XRInterface)  {
        let interface_native = interface._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_interface_1898711491._native_ptr(),
                    1898711491)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_interface_4237347919._native_ptr(),
                    4237347919)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRInterface(godot: __resPtr.pointee)
        }
    }
    public func get_interfaces() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_interfaces_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
    }
    public func find_interface(name: godot.String) -> XRInterface {
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
                    Self._method_find_interface_1395192955._native_ptr(),
                    1395192955)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRInterface(godot: __resPtr.pointee)
    }
    public func add_tracker(tracker: XRPositionalTracker)  {
        let tracker_native = tracker._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tracker_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_tracker_2692800323._native_ptr(),
                    2692800323)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_tracker_2692800323._native_ptr(),
                    2692800323)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_trackers_3554694381._native_ptr(),
                    3554694381)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tracker_2742084544._native_ptr(),
                    2742084544)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPositionalTracker(godot: __resPtr.pointee)
    }
    public func get_primary_interface() -> XRInterface {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_primary_interface_2143545064._native_ptr(),
                    2143545064)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRInterface(godot: __resPtr.pointee)
    }
    public func set_primary_interface(interface: XRInterface)  {
        let interface_native = interface._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_primary_interface_1898711491._native_ptr(),
                    1898711491)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}