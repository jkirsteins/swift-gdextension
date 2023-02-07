import godot_native

fileprivate var __godot_name_SpriteFrames: StringName! = nil

/// Sprite frame library for AnimatedSprite2D and AnimatedSprite3D.
/// 
/// Sprite frame library for an [AnimatedSprite2D] or [AnimatedSprite3D] node. Contains frames and animation data for playback.
public class SpriteFrames : Resource {

    

    public override class var __godot_name: StringName { __godot_name_SpriteFrames }

    static var _method_add_animation_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_has_animation_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_remove_animation_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_rename_animation_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_names_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_animation_speed_4135858297: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_speed_2349060816: GDExtensionMethodBindPtr! = nil
    static var _method_set_animation_loop_2524380260: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_loop_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_add_frame_407562921: GDExtensionMethodBindPtr! = nil
    static var _method_set_frame_3155743884: GDExtensionMethodBindPtr! = nil
    static var _method_remove_frame_2415702435: GDExtensionMethodBindPtr! = nil
    static var _method_get_frame_count_2458036349: GDExtensionMethodBindPtr! = nil
    static var _method_get_frame_texture_2900517879: GDExtensionMethodBindPtr! = nil
    static var _method_get_frame_duration_1129309260: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_clear_all_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SpriteFrames = StringName(from: "SpriteFrames")

        let _method_add_animation_3304788590_name = StringName(from: "add_animation")
        self._method_add_animation_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_animation_3304788590_name._native_ptr(), 3304788590)
        assert(SpriteFrames._method_add_animation_3304788590 != nil)
        let _method_has_animation_2619796661_name = StringName(from: "has_animation")
        self._method_has_animation_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_animation_2619796661_name._native_ptr(), 2619796661)
        assert(SpriteFrames._method_has_animation_2619796661 != nil)
        let _method_remove_animation_3304788590_name = StringName(from: "remove_animation")
        self._method_remove_animation_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_animation_3304788590_name._native_ptr(), 3304788590)
        assert(SpriteFrames._method_remove_animation_3304788590 != nil)
        let _method_rename_animation_3740211285_name = StringName(from: "rename_animation")
        self._method_rename_animation_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_animation_3740211285_name._native_ptr(), 3740211285)
        assert(SpriteFrames._method_rename_animation_3740211285 != nil)
        let _method_get_animation_names_1139954409_name = StringName(from: "get_animation_names")
        self._method_get_animation_names_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_animation_names_1139954409_name._native_ptr(), 1139954409)
        assert(SpriteFrames._method_get_animation_names_1139954409 != nil)
        let _method_set_animation_speed_4135858297_name = StringName(from: "set_animation_speed")
        self._method_set_animation_speed_4135858297 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_animation_speed_4135858297_name._native_ptr(), 4135858297)
        assert(SpriteFrames._method_set_animation_speed_4135858297 != nil)
        let _method_get_animation_speed_2349060816_name = StringName(from: "get_animation_speed")
        self._method_get_animation_speed_2349060816 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_animation_speed_2349060816_name._native_ptr(), 2349060816)
        assert(SpriteFrames._method_get_animation_speed_2349060816 != nil)
        let _method_set_animation_loop_2524380260_name = StringName(from: "set_animation_loop")
        self._method_set_animation_loop_2524380260 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_animation_loop_2524380260_name._native_ptr(), 2524380260)
        assert(SpriteFrames._method_set_animation_loop_2524380260 != nil)
        let _method_get_animation_loop_2619796661_name = StringName(from: "get_animation_loop")
        self._method_get_animation_loop_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_animation_loop_2619796661_name._native_ptr(), 2619796661)
        assert(SpriteFrames._method_get_animation_loop_2619796661 != nil)
        let _method_add_frame_407562921_name = StringName(from: "add_frame")
        self._method_add_frame_407562921 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_frame_407562921_name._native_ptr(), 407562921)
        assert(SpriteFrames._method_add_frame_407562921 != nil)
        let _method_set_frame_3155743884_name = StringName(from: "set_frame")
        self._method_set_frame_3155743884 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_frame_3155743884_name._native_ptr(), 3155743884)
        assert(SpriteFrames._method_set_frame_3155743884 != nil)
        let _method_remove_frame_2415702435_name = StringName(from: "remove_frame")
        self._method_remove_frame_2415702435 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_frame_2415702435_name._native_ptr(), 2415702435)
        assert(SpriteFrames._method_remove_frame_2415702435 != nil)
        let _method_get_frame_count_2458036349_name = StringName(from: "get_frame_count")
        self._method_get_frame_count_2458036349 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_frame_count_2458036349_name._native_ptr(), 2458036349)
        assert(SpriteFrames._method_get_frame_count_2458036349 != nil)
        let _method_get_frame_texture_2900517879_name = StringName(from: "get_frame_texture")
        self._method_get_frame_texture_2900517879 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_frame_texture_2900517879_name._native_ptr(), 2900517879)
        assert(SpriteFrames._method_get_frame_texture_2900517879 != nil)
        let _method_get_frame_duration_1129309260_name = StringName(from: "get_frame_duration")
        self._method_get_frame_duration_1129309260 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_frame_duration_1129309260_name._native_ptr(), 1129309260)
        assert(SpriteFrames._method_get_frame_duration_1129309260 != nil)
        let _method_clear_3304788590_name = StringName(from: "clear")
        self._method_clear_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3304788590_name._native_ptr(), 3304788590)
        assert(SpriteFrames._method_clear_3304788590 != nil)
        let _method_clear_all_3218959716_name = StringName(from: "clear_all")
        self._method_clear_all_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_all_3218959716_name._native_ptr(), 3218959716)
        assert(SpriteFrames._method_clear_all_3218959716 != nil)
    }

    public func add_animation(anim: StringName)  {
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_animation_3304788590,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_animation_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func remove_animation(anim: StringName)  {
        let anim_native = anim._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anim_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_animation_3304788590,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_animation_3740211285,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animation_names_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_animation_speed_4135858297,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animation_speed_2349060816,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_animation_loop_2524380260,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animation_loop_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_frame_407562921,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_frame_3155743884,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_frame_2415702435,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frame_count_2458036349,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frame_texture_2900517879,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frame_duration_1129309260,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3304788590,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_all_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}