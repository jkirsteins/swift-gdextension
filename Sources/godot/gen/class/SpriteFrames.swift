import godot_native

fileprivate var __godot_name_SpriteFrames: StringName! = nil

/// Sprite frame library for AnimatedSprite2D and AnimatedSprite3D.
/// 
/// Sprite frame library for an [AnimatedSprite2D] or [AnimatedSprite3D] node. Contains frames and animation data for playback.
open class SpriteFrames : Resource {

    

    public override class var __godot_name: StringName { __godot_name_SpriteFrames }

    static var _method_add_animation_3304788590: StringName! = nil
    static var _method_has_animation_2619796661: StringName! = nil
    static var _method_remove_animation_3304788590: StringName! = nil
    static var _method_rename_animation_3740211285: StringName! = nil
    static var _method_get_animation_names_1139954409: StringName! = nil
    static var _method_set_animation_speed_4135858297: StringName! = nil
    static var _method_get_animation_speed_2349060816: StringName! = nil
    static var _method_set_animation_loop_2524380260: StringName! = nil
    static var _method_get_animation_loop_2619796661: StringName! = nil
    static var _method_add_frame_407562921: StringName! = nil
    static var _method_set_frame_3155743884: StringName! = nil
    static var _method_remove_frame_2415702435: StringName! = nil
    static var _method_get_frame_count_2458036349: StringName! = nil
    static var _method_get_frame_texture_2900517879: StringName! = nil
    static var _method_get_frame_duration_1129309260: StringName! = nil
    static var _method_clear_3304788590: StringName! = nil
    static var _method_clear_all_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SpriteFrames == nil)
        __godot_name_SpriteFrames = StringName(from: "SpriteFrames")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_animation_3304788590 = StringName(from: "add_animation")
        assert(self._method_add_animation_3304788590 != nil)
        self._method_has_animation_2619796661 = StringName(from: "has_animation")
        assert(self._method_has_animation_2619796661 != nil)
        self._method_remove_animation_3304788590 = StringName(from: "remove_animation")
        assert(self._method_remove_animation_3304788590 != nil)
        self._method_rename_animation_3740211285 = StringName(from: "rename_animation")
        assert(self._method_rename_animation_3740211285 != nil)
        self._method_get_animation_names_1139954409 = StringName(from: "get_animation_names")
        assert(self._method_get_animation_names_1139954409 != nil)
        self._method_set_animation_speed_4135858297 = StringName(from: "set_animation_speed")
        assert(self._method_set_animation_speed_4135858297 != nil)
        self._method_get_animation_speed_2349060816 = StringName(from: "get_animation_speed")
        assert(self._method_get_animation_speed_2349060816 != nil)
        self._method_set_animation_loop_2524380260 = StringName(from: "set_animation_loop")
        assert(self._method_set_animation_loop_2524380260 != nil)
        self._method_get_animation_loop_2619796661 = StringName(from: "get_animation_loop")
        assert(self._method_get_animation_loop_2619796661 != nil)
        self._method_add_frame_407562921 = StringName(from: "add_frame")
        assert(self._method_add_frame_407562921 != nil)
        self._method_set_frame_3155743884 = StringName(from: "set_frame")
        assert(self._method_set_frame_3155743884 != nil)
        self._method_remove_frame_2415702435 = StringName(from: "remove_frame")
        assert(self._method_remove_frame_2415702435 != nil)
        self._method_get_frame_count_2458036349 = StringName(from: "get_frame_count")
        assert(self._method_get_frame_count_2458036349 != nil)
        self._method_get_frame_texture_2900517879 = StringName(from: "get_frame_texture")
        assert(self._method_get_frame_texture_2900517879 != nil)
        self._method_get_frame_duration_1129309260 = StringName(from: "get_frame_duration")
        assert(self._method_get_frame_duration_1129309260 != nil)
        self._method_clear_3304788590 = StringName(from: "clear")
        assert(self._method_clear_3304788590 != nil)
        self._method_clear_all_3218959716 = StringName(from: "clear_all")
        assert(self._method_clear_all_3218959716 != nil)
    }

    public func add_animation(anim: StringName)  {
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_animation_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_animation(anim: StringName) -> UInt8 {
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_animation_2619796661._native_ptr(),
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
    public func remove_animation(anim: StringName)  {
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_animation_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func rename_animation(anim: StringName, newname: StringName)  {
        let newname_native = newname._native_ptr()
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native), .init(newname_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_rename_animation_3740211285._native_ptr(),
                    3740211285)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_animation_names() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_animation_names_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func set_animation_speed(anim: StringName, fps: Float64)  {
        withUnsafePointer(to: fps) { fps_native in
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native), .init(fps_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_animation_speed_4135858297._native_ptr(),
                    4135858297)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_animation_speed(anim: StringName) -> Float64 {
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_animation_speed_2349060816._native_ptr(),
                    2349060816)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_animation_loop(anim: StringName, loop: UInt8)  {
        withUnsafePointer(to: loop) { loop_native in
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native), .init(loop_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_animation_loop_2524380260._native_ptr(),
                    2524380260)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_animation_loop(anim: StringName) -> UInt8 {
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_animation_loop_2619796661._native_ptr(),
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
    public func add_frame(anim: StringName, texture: Texture2D, duration: Float64, at_position: Int64)  {
        withUnsafePointer(to: at_position) { at_position_native in
        withUnsafePointer(to: duration) { duration_native in
        let texture_native = texture._native_ptr()
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native), .init(texture_native), .init(duration_native), .init(at_position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_frame_407562921._native_ptr(),
                    407562921)
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
    public func set_frame(anim: StringName, idx: Int64, texture: Texture2D, duration: Float64)  {
        withUnsafePointer(to: duration) { duration_native in
        withUnsafePointer(to: idx) { idx_native in
        let texture_native = texture._native_ptr()
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native), .init(idx_native), .init(texture_native), .init(duration_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_frame_3155743884._native_ptr(),
                    3155743884)
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
    public func remove_frame(anim: StringName, idx: Int64)  {
        withUnsafePointer(to: idx) { idx_native in
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native), .init(idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_frame_2415702435._native_ptr(),
                    2415702435)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_frame_count(anim: StringName) -> Int64 {
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_frame_count_2458036349._native_ptr(),
                    2458036349)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_frame_texture(anim: StringName, idx: Int64) -> Texture2D {
        withUnsafePointer(to: idx) { idx_native in
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_frame_texture_2900517879._native_ptr(),
                    2900517879)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
        }
    }
    public func get_frame_duration(anim: StringName, idx: Int64) -> Float64 {
        withUnsafePointer(to: idx) { idx_native in
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native), .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_frame_duration_1129309260._native_ptr(),
                    1129309260)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func clear(anim: StringName)  {
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_all()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_all_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}