import godot_native

fileprivate var __godot_name_DirectionalLight3D: StringName! = nil

/// Directional light from a distance, as from the Sun.
/// 
/// A directional light is a type of [Light3D] node that models an infinite number of parallel rays covering the entire scene. It is used for lights with strong intensity that are located far away from the scene to model sunlight or moonlight. The worldspace location of the DirectionalLight3D transform (origin) is ignored. Only the basis is used to determine light direction.
open class DirectionalLight3D : Light3D {

    public enum ShadowMode : Int32 {
        case SHADOW_ORTHOGONAL = 0
        case SHADOW_PARALLEL_2_SPLITS = 1
        case SHADOW_PARALLEL_4_SPLITS = 2
    }
    public enum SkyMode : Int32 {
        case SKY_MODE_LIGHT_AND_SKY = 0
        case SKY_MODE_LIGHT_ONLY = 1
        case SKY_MODE_SKY_ONLY = 2
    }

    public override class var __godot_name: StringName { __godot_name_DirectionalLight3D }

    static var _method_set_shadow_mode_1261211726: StringName! = nil
    static var _method_get_shadow_mode_2765228544: StringName! = nil
    static var _method_set_blend_splits_2586408642: StringName! = nil
    static var _method_is_blend_splits_enabled_36873697: StringName! = nil
    static var _method_set_sky_mode_2691194817: StringName! = nil
    static var _method_get_sky_mode_3819982774: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_DirectionalLight3D == nil)
        __godot_name_DirectionalLight3D = StringName(from: "DirectionalLight3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_shadow_mode_1261211726 = StringName(from: "set_shadow_mode")
        assert(self._method_set_shadow_mode_1261211726 != nil)
        self._method_get_shadow_mode_2765228544 = StringName(from: "get_shadow_mode")
        assert(self._method_get_shadow_mode_2765228544 != nil)
        self._method_set_blend_splits_2586408642 = StringName(from: "set_blend_splits")
        assert(self._method_set_blend_splits_2586408642 != nil)
        self._method_is_blend_splits_enabled_36873697 = StringName(from: "is_blend_splits_enabled")
        assert(self._method_is_blend_splits_enabled_36873697 != nil)
        self._method_set_sky_mode_2691194817 = StringName(from: "set_sky_mode")
        assert(self._method_set_sky_mode_2691194817 != nil)
        self._method_get_sky_mode_3819982774 = StringName(from: "get_sky_mode")
        assert(self._method_get_sky_mode_3819982774 != nil)
    }

    public func set_shadow_mode(mode: DirectionalLight3D.ShadowMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shadow_mode_1261211726._native_ptr(),
                    1261211726)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_shadow_mode() -> DirectionalLight3D.ShadowMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_shadow_mode_2765228544._native_ptr(),
                    2765228544)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return DirectionalLight3D.ShadowMode(godot: __resPtr.pointee)
    }
    public func set_blend_splits(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_blend_splits_2586408642._native_ptr(),
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
    public func is_blend_splits_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_blend_splits_enabled_36873697._native_ptr(),
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
    public func set_sky_mode(mode: DirectionalLight3D.SkyMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sky_mode_2691194817._native_ptr(),
                    2691194817)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sky_mode() -> DirectionalLight3D.SkyMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sky_mode_3819982774._native_ptr(),
                    3819982774)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return DirectionalLight3D.SkyMode(godot: __resPtr.pointee)
    }
}