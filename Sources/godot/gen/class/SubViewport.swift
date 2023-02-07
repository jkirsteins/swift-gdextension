import godot_native

fileprivate var __godot_name_SubViewport: StringName! = nil

/// Creates a sub-view into the screen.
/// 
/// [SubViewport] is a [Viewport] that isn't a [Window], i.e. it doesn't draw anything by itself. To display something, [SubViewport]'s [member size] must be non-zero and it should be either put inside a [SubViewportContainer] or assigned to a [ViewportTexture].
public class SubViewport : Viewport {

    public enum ClearMode : Int32 {
        case CLEAR_MODE_ALWAYS = 0
        case CLEAR_MODE_NEVER = 1
        case CLEAR_MODE_ONCE = 2
    }
    public enum UpdateMode : Int32 {
        case UPDATE_DISABLED = 0
        case UPDATE_ONCE = 1
        case UPDATE_WHEN_VISIBLE = 2
        case UPDATE_WHEN_PARENT_VISIBLE = 3
        case UPDATE_ALWAYS = 4
    }

    public override class var __godot_name: StringName { __godot_name_SubViewport }

    static var _method_set_size_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_set_size_2d_override_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_2d_override_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_set_size_2d_override_stretch_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_size_2d_override_stretch_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_update_mode_1295690030: GDExtensionMethodBindPtr! = nil
    static var _method_get_update_mode_2980171553: GDExtensionMethodBindPtr! = nil
    static var _method_set_clear_mode_2834454712: GDExtensionMethodBindPtr! = nil
    static var _method_get_clear_mode_331324495: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SubViewport = StringName(from: "SubViewport")

        let _method_set_size_1130785943_name = StringName(from: "set_size")
        self._method_set_size_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_1130785943_name._native_ptr(), 1130785943)
        assert(SubViewport._method_set_size_1130785943 != nil)
        let _method_get_size_3690982128_name = StringName(from: "get_size")
        self._method_get_size_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3690982128_name._native_ptr(), 3690982128)
        assert(SubViewport._method_get_size_3690982128 != nil)
        let _method_set_size_2d_override_1130785943_name = StringName(from: "set_size_2d_override")
        self._method_set_size_2d_override_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_2d_override_1130785943_name._native_ptr(), 1130785943)
        assert(SubViewport._method_set_size_2d_override_1130785943 != nil)
        let _method_get_size_2d_override_3690982128_name = StringName(from: "get_size_2d_override")
        self._method_get_size_2d_override_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_2d_override_3690982128_name._native_ptr(), 3690982128)
        assert(SubViewport._method_get_size_2d_override_3690982128 != nil)
        let _method_set_size_2d_override_stretch_2586408642_name = StringName(from: "set_size_2d_override_stretch")
        self._method_set_size_2d_override_stretch_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_2d_override_stretch_2586408642_name._native_ptr(), 2586408642)
        assert(SubViewport._method_set_size_2d_override_stretch_2586408642 != nil)
        let _method_is_size_2d_override_stretch_enabled_36873697_name = StringName(from: "is_size_2d_override_stretch_enabled")
        self._method_is_size_2d_override_stretch_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_size_2d_override_stretch_enabled_36873697_name._native_ptr(), 36873697)
        assert(SubViewport._method_is_size_2d_override_stretch_enabled_36873697 != nil)
        let _method_set_update_mode_1295690030_name = StringName(from: "set_update_mode")
        self._method_set_update_mode_1295690030 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_update_mode_1295690030_name._native_ptr(), 1295690030)
        assert(SubViewport._method_set_update_mode_1295690030 != nil)
        let _method_get_update_mode_2980171553_name = StringName(from: "get_update_mode")
        self._method_get_update_mode_2980171553 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_update_mode_2980171553_name._native_ptr(), 2980171553)
        assert(SubViewport._method_get_update_mode_2980171553 != nil)
        let _method_set_clear_mode_2834454712_name = StringName(from: "set_clear_mode")
        self._method_set_clear_mode_2834454712 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_clear_mode_2834454712_name._native_ptr(), 2834454712)
        assert(SubViewport._method_set_clear_mode_2834454712 != nil)
        let _method_get_clear_mode_331324495_name = StringName(from: "get_clear_mode")
        self._method_get_clear_mode_331324495 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_clear_mode_331324495_name._native_ptr(), 331324495)
        assert(SubViewport._method_get_clear_mode_331324495 != nil)
    }

    public func set_size(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func set_size_2d_override(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_2d_override_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size_2d_override() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_2d_override_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func set_size_2d_override_stretch(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_2d_override_stretch_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_size_2d_override_stretch_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_size_2d_override_stretch_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_update_mode(mode: SubViewport.UpdateMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_update_mode_1295690030,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_update_mode() -> SubViewport.UpdateMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_update_mode_2980171553,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SubViewport.UpdateMode(from: __resPtr.pointee)
    }
    public func set_clear_mode(mode: SubViewport.ClearMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_clear_mode_2834454712,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_clear_mode() -> SubViewport.ClearMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_clear_mode_331324495,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SubViewport.ClearMode(from: __resPtr.pointee)
    }
}