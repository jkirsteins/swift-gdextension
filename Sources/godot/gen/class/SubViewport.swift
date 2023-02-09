import godot_native

fileprivate var __godot_name_SubViewport: StringName! = nil

/// Creates a sub-view into the screen.
/// 
/// [SubViewport] is a [Viewport] that isn't a [Window], i.e. it doesn't draw anything by itself. To display something, [SubViewport]'s [member size] must be non-zero and it should be either put inside a [SubViewportContainer] or assigned to a [ViewportTexture].
open class SubViewport : Viewport {

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

    static var _method_set_size_1130785943: StringName! = nil
    static var _method_get_size_3690982128: StringName! = nil
    static var _method_set_size_2d_override_1130785943: StringName! = nil
    static var _method_get_size_2d_override_3690982128: StringName! = nil
    static var _method_set_size_2d_override_stretch_2586408642: StringName! = nil
    static var _method_is_size_2d_override_stretch_enabled_36873697: StringName! = nil
    static var _method_set_update_mode_1295690030: StringName! = nil
    static var _method_get_update_mode_2980171553: StringName! = nil
    static var _method_set_clear_mode_2834454712: StringName! = nil
    static var _method_get_clear_mode_331324495: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SubViewport == nil)
        __godot_name_SubViewport = StringName(from: "SubViewport")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_size_1130785943 = StringName(from: "set_size")
        assert(self._method_set_size_1130785943 != nil)
        self._method_get_size_3690982128 = StringName(from: "get_size")
        assert(self._method_get_size_3690982128 != nil)
        self._method_set_size_2d_override_1130785943 = StringName(from: "set_size_2d_override")
        assert(self._method_set_size_2d_override_1130785943 != nil)
        self._method_get_size_2d_override_3690982128 = StringName(from: "get_size_2d_override")
        assert(self._method_get_size_2d_override_3690982128 != nil)
        self._method_set_size_2d_override_stretch_2586408642 = StringName(from: "set_size_2d_override_stretch")
        assert(self._method_set_size_2d_override_stretch_2586408642 != nil)
        self._method_is_size_2d_override_stretch_enabled_36873697 = StringName(from: "is_size_2d_override_stretch_enabled")
        assert(self._method_is_size_2d_override_stretch_enabled_36873697 != nil)
        self._method_set_update_mode_1295690030 = StringName(from: "set_update_mode")
        assert(self._method_set_update_mode_1295690030 != nil)
        self._method_get_update_mode_2980171553 = StringName(from: "get_update_mode")
        assert(self._method_get_update_mode_2980171553 != nil)
        self._method_set_clear_mode_2834454712 = StringName(from: "set_clear_mode")
        assert(self._method_set_clear_mode_2834454712 != nil)
        self._method_get_clear_mode_331324495 = StringName(from: "get_clear_mode")
        assert(self._method_get_clear_mode_331324495 != nil)
    }

    public func set_size(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_size_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_3690982128._native_ptr(),
                    3690982128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_size_2d_override(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_size_2d_override_1130785943._native_ptr(),
                    1130785943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_2d_override_3690982128._native_ptr(),
                    3690982128)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(godot: __resPtr.pointee)
    }
    public func set_size_2d_override_stretch(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_size_2d_override_stretch_2586408642._native_ptr(),
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
    public func is_size_2d_override_stretch_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_size_2d_override_stretch_enabled_36873697._native_ptr(),
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
    public func set_update_mode(mode: SubViewport.UpdateMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_update_mode_1295690030._native_ptr(),
                    1295690030)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_update_mode_2980171553._native_ptr(),
                    2980171553)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SubViewport.UpdateMode(godot: __resPtr.pointee)
    }
    public func set_clear_mode(mode: SubViewport.ClearMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_clear_mode_2834454712._native_ptr(),
                    2834454712)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_clear_mode_331324495._native_ptr(),
                    331324495)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SubViewport.ClearMode(godot: __resPtr.pointee)
    }
}