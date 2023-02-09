import godot_native

fileprivate var __godot_name_OmniLight3D: StringName! = nil

/// Omnidirectional light, such as a light bulb or a candle.
/// 
/// An Omnidirectional light is a type of [Light3D] that emits light in all directions. The light is attenuated by distance and this attenuation can be configured by changing its energy, radius, and attenuation parameters.
open class OmniLight3D : Light3D {

    public enum ShadowMode : Int32 {
        case SHADOW_DUAL_PARABOLOID = 0
        case SHADOW_CUBE = 1
    }

    public override class var __godot_name: StringName { __godot_name_OmniLight3D }

    static var _method_set_shadow_mode_121862228: StringName! = nil
    static var _method_get_shadow_mode_4181586331: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_OmniLight3D == nil)
        __godot_name_OmniLight3D = StringName(from: "OmniLight3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_shadow_mode_121862228 = StringName(from: "set_shadow_mode")
        assert(self._method_set_shadow_mode_121862228 != nil)
        self._method_get_shadow_mode_4181586331 = StringName(from: "get_shadow_mode")
        assert(self._method_get_shadow_mode_4181586331 != nil)
    }

    public func set_shadow_mode(mode: OmniLight3D.ShadowMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shadow_mode_121862228._native_ptr(),
                    121862228)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_shadow_mode() -> OmniLight3D.ShadowMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_shadow_mode_4181586331._native_ptr(),
                    4181586331)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return OmniLight3D.ShadowMode(godot: __resPtr.pointee)
    }
}