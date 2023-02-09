import godot_native

fileprivate var __godot_name_WebXRInterface: StringName! = nil

/// MISSING
/// 
/// MISSING
open class WebXRInterface : XRInterface {

    public enum TargetRayMode : Int32 {
        case TARGET_RAY_MODE_UNKNOWN = 0
        case TARGET_RAY_MODE_GAZE = 1
        case TARGET_RAY_MODE_TRACKED_POINTER = 2
        case TARGET_RAY_MODE_SCREEN = 3
    }

    public override class var __godot_name: StringName { __godot_name_WebXRInterface }

    static var _method_is_session_supported_83702148: StringName! = nil
    static var _method_set_session_mode_83702148: StringName! = nil
    static var _method_get_session_mode_201670096: StringName! = nil
    static var _method_set_required_features_83702148: StringName! = nil
    static var _method_get_required_features_201670096: StringName! = nil
    static var _method_set_optional_features_83702148: StringName! = nil
    static var _method_get_optional_features_201670096: StringName! = nil
    static var _method_get_reference_space_type_201670096: StringName! = nil
    static var _method_set_requested_reference_space_types_83702148: StringName! = nil
    static var _method_get_requested_reference_space_types_201670096: StringName! = nil
    static var _method_is_input_source_active_1116898809: StringName! = nil
    static var _method_get_input_source_tracker_636011756: StringName! = nil
    static var _method_get_input_source_target_ray_mode_2852387453: StringName! = nil
    static var _method_get_visibility_state_201670096: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_WebXRInterface == nil)
        __godot_name_WebXRInterface = StringName(from: "WebXRInterface")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_is_session_supported_83702148 = StringName(from: "is_session_supported")
        assert(self._method_is_session_supported_83702148 != nil)
        self._method_set_session_mode_83702148 = StringName(from: "set_session_mode")
        assert(self._method_set_session_mode_83702148 != nil)
        self._method_get_session_mode_201670096 = StringName(from: "get_session_mode")
        assert(self._method_get_session_mode_201670096 != nil)
        self._method_set_required_features_83702148 = StringName(from: "set_required_features")
        assert(self._method_set_required_features_83702148 != nil)
        self._method_get_required_features_201670096 = StringName(from: "get_required_features")
        assert(self._method_get_required_features_201670096 != nil)
        self._method_set_optional_features_83702148 = StringName(from: "set_optional_features")
        assert(self._method_set_optional_features_83702148 != nil)
        self._method_get_optional_features_201670096 = StringName(from: "get_optional_features")
        assert(self._method_get_optional_features_201670096 != nil)
        self._method_get_reference_space_type_201670096 = StringName(from: "get_reference_space_type")
        assert(self._method_get_reference_space_type_201670096 != nil)
        self._method_set_requested_reference_space_types_83702148 = StringName(from: "set_requested_reference_space_types")
        assert(self._method_set_requested_reference_space_types_83702148 != nil)
        self._method_get_requested_reference_space_types_201670096 = StringName(from: "get_requested_reference_space_types")
        assert(self._method_get_requested_reference_space_types_201670096 != nil)
        self._method_is_input_source_active_1116898809 = StringName(from: "is_input_source_active")
        assert(self._method_is_input_source_active_1116898809 != nil)
        self._method_get_input_source_tracker_636011756 = StringName(from: "get_input_source_tracker")
        assert(self._method_get_input_source_tracker_636011756 != nil)
        self._method_get_input_source_target_ray_mode_2852387453 = StringName(from: "get_input_source_target_ray_mode")
        assert(self._method_get_input_source_target_ray_mode_2852387453 != nil)
        self._method_get_visibility_state_201670096 = StringName(from: "get_visibility_state")
        assert(self._method_get_visibility_state_201670096 != nil)
    }

    public func is_session_supported(session_mode: godot.String)  {
        let session_mode_native = session_mode._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(session_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_session_supported_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_session_mode(session_mode: godot.String)  {
        let session_mode_native = session_mode._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(session_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_session_mode_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_session_mode() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_session_mode_201670096._native_ptr(),
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
    public func set_required_features(required_features: godot.String)  {
        let required_features_native = required_features._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(required_features_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_required_features_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_required_features() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_required_features_201670096._native_ptr(),
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
    public func set_optional_features(optional_features: godot.String)  {
        let optional_features_native = optional_features._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(optional_features_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_optional_features_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_optional_features() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_optional_features_201670096._native_ptr(),
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
    public func get_reference_space_type() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_reference_space_type_201670096._native_ptr(),
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
    public func set_requested_reference_space_types(requested_reference_space_types: godot.String)  {
        let requested_reference_space_types_native = requested_reference_space_types._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(requested_reference_space_types_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_requested_reference_space_types_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_requested_reference_space_types() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_requested_reference_space_types_201670096._native_ptr(),
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
    public func is_input_source_active(input_source_id: Int64) -> UInt8 {
        withUnsafePointer(to: input_source_id) { input_source_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_source_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_input_source_active_1116898809._native_ptr(),
                    1116898809)
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
    public func get_input_source_tracker(input_source_id: Int64) -> XRPositionalTracker {
        withUnsafePointer(to: input_source_id) { input_source_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_source_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_input_source_tracker_636011756._native_ptr(),
                    636011756)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return XRPositionalTracker(godot: __resPtr.pointee)
        }
    }
    public func get_input_source_target_ray_mode(input_source_id: Int64) -> WebXRInterface.TargetRayMode {
        withUnsafePointer(to: input_source_id) { input_source_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_source_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_input_source_target_ray_mode_2852387453._native_ptr(),
                    2852387453)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return WebXRInterface.TargetRayMode(godot: __resPtr.pointee)
        }
    }
    public func get_visibility_state() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visibility_state_201670096._native_ptr(),
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
}