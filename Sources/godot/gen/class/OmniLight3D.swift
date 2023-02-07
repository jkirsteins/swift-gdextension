import godot_native

fileprivate var __godot_name_OmniLight3D: StringName! = nil

/// Omnidirectional light, such as a light bulb or a candle.
/// 
/// An Omnidirectional light is a type of [Light3D] that emits light in all directions. The light is attenuated by distance and this attenuation can be configured by changing its energy, radius, and attenuation parameters.
public class OmniLight3D : Light3D {

    public enum ShadowMode : Int32 {
        case SHADOW_DUAL_PARABOLOID = 0
        case SHADOW_CUBE = 1
    }

    public override class var __godot_name: StringName { __godot_name_OmniLight3D }

    static var _method_set_shadow_mode_121862228: GDExtensionMethodBindPtr! = nil
    static var _method_get_shadow_mode_4181586331: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_OmniLight3D = StringName(from: "OmniLight3D")

        let _method_set_shadow_mode_121862228_name = StringName(from: "set_shadow_mode")
        self._method_set_shadow_mode_121862228 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_mode_121862228_name._native_ptr(), 121862228)
        assert(OmniLight3D._method_set_shadow_mode_121862228 != nil)
        let _method_get_shadow_mode_4181586331_name = StringName(from: "get_shadow_mode")
        self._method_get_shadow_mode_4181586331 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shadow_mode_4181586331_name._native_ptr(), 4181586331)
        assert(OmniLight3D._method_get_shadow_mode_4181586331 != nil)
    }

    public func set_shadow_mode(mode: OmniLight3D.ShadowMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_mode_121862228,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shadow_mode_4181586331,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return OmniLight3D.ShadowMode(from: __resPtr.pointee)
    }
}