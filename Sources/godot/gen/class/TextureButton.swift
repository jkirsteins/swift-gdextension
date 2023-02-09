import godot_native

fileprivate var __godot_name_TextureButton: StringName! = nil

/// Texture-based button. Supports Pressed, Hover, Disabled and Focused states.
/// 
/// [TextureButton] has the same functionality as [Button], except it uses sprites instead of Godot's [Theme] resource. It is faster to create, but it doesn't support localization like more complex [Control]s.
///  
/// The "normal" state must contain a texture ([member texture_normal]); other textures are optional.
///  
/// See also [BaseButton] which contains common properties and methods associated with this node.
open class TextureButton : BaseButton {

    public enum StretchMode : Int32 {
        case STRETCH_SCALE = 0
        case STRETCH_TILE = 1
        case STRETCH_KEEP = 2
        case STRETCH_KEEP_CENTERED = 3
        case STRETCH_KEEP_ASPECT = 4
        case STRETCH_KEEP_ASPECT_CENTERED = 5
        case STRETCH_KEEP_ASPECT_COVERED = 6
    }

    public override class var __godot_name: StringName { __godot_name_TextureButton }

    static var _method_set_texture_normal_4051416890: StringName! = nil
    static var _method_set_texture_pressed_4051416890: StringName! = nil
    static var _method_set_texture_hover_4051416890: StringName! = nil
    static var _method_set_texture_disabled_4051416890: StringName! = nil
    static var _method_set_texture_focused_4051416890: StringName! = nil
    static var _method_set_click_mask_698588216: StringName! = nil
    static var _method_set_ignore_texture_size_2586408642: StringName! = nil
    static var _method_set_stretch_mode_252530840: StringName! = nil
    static var _method_set_flip_h_2586408642: StringName! = nil
    static var _method_is_flipped_h_36873697: StringName! = nil
    static var _method_set_flip_v_2586408642: StringName! = nil
    static var _method_is_flipped_v_36873697: StringName! = nil
    static var _method_get_texture_normal_3635182373: StringName! = nil
    static var _method_get_texture_pressed_3635182373: StringName! = nil
    static var _method_get_texture_hover_3635182373: StringName! = nil
    static var _method_get_texture_disabled_3635182373: StringName! = nil
    static var _method_get_texture_focused_3635182373: StringName! = nil
    static var _method_get_click_mask_2459671998: StringName! = nil
    static var _method_get_ignore_texture_size_36873697: StringName! = nil
    static var _method_get_stretch_mode_33815122: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TextureButton == nil)
        __godot_name_TextureButton = StringName(from: "TextureButton")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_texture_normal_4051416890 = StringName(from: "set_texture_normal")
        assert(self._method_set_texture_normal_4051416890 != nil)
        self._method_set_texture_pressed_4051416890 = StringName(from: "set_texture_pressed")
        assert(self._method_set_texture_pressed_4051416890 != nil)
        self._method_set_texture_hover_4051416890 = StringName(from: "set_texture_hover")
        assert(self._method_set_texture_hover_4051416890 != nil)
        self._method_set_texture_disabled_4051416890 = StringName(from: "set_texture_disabled")
        assert(self._method_set_texture_disabled_4051416890 != nil)
        self._method_set_texture_focused_4051416890 = StringName(from: "set_texture_focused")
        assert(self._method_set_texture_focused_4051416890 != nil)
        self._method_set_click_mask_698588216 = StringName(from: "set_click_mask")
        assert(self._method_set_click_mask_698588216 != nil)
        self._method_set_ignore_texture_size_2586408642 = StringName(from: "set_ignore_texture_size")
        assert(self._method_set_ignore_texture_size_2586408642 != nil)
        self._method_set_stretch_mode_252530840 = StringName(from: "set_stretch_mode")
        assert(self._method_set_stretch_mode_252530840 != nil)
        self._method_set_flip_h_2586408642 = StringName(from: "set_flip_h")
        assert(self._method_set_flip_h_2586408642 != nil)
        self._method_is_flipped_h_36873697 = StringName(from: "is_flipped_h")
        assert(self._method_is_flipped_h_36873697 != nil)
        self._method_set_flip_v_2586408642 = StringName(from: "set_flip_v")
        assert(self._method_set_flip_v_2586408642 != nil)
        self._method_is_flipped_v_36873697 = StringName(from: "is_flipped_v")
        assert(self._method_is_flipped_v_36873697 != nil)
        self._method_get_texture_normal_3635182373 = StringName(from: "get_texture_normal")
        assert(self._method_get_texture_normal_3635182373 != nil)
        self._method_get_texture_pressed_3635182373 = StringName(from: "get_texture_pressed")
        assert(self._method_get_texture_pressed_3635182373 != nil)
        self._method_get_texture_hover_3635182373 = StringName(from: "get_texture_hover")
        assert(self._method_get_texture_hover_3635182373 != nil)
        self._method_get_texture_disabled_3635182373 = StringName(from: "get_texture_disabled")
        assert(self._method_get_texture_disabled_3635182373 != nil)
        self._method_get_texture_focused_3635182373 = StringName(from: "get_texture_focused")
        assert(self._method_get_texture_focused_3635182373 != nil)
        self._method_get_click_mask_2459671998 = StringName(from: "get_click_mask")
        assert(self._method_get_click_mask_2459671998 != nil)
        self._method_get_ignore_texture_size_36873697 = StringName(from: "get_ignore_texture_size")
        assert(self._method_get_ignore_texture_size_36873697 != nil)
        self._method_get_stretch_mode_33815122 = StringName(from: "get_stretch_mode")
        assert(self._method_get_stretch_mode_33815122 != nil)
    }

    public func set_texture_normal(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_normal_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_texture_pressed(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_pressed_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_texture_hover(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_hover_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_texture_disabled(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_disabled_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_texture_focused(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_focused_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_click_mask(mask: BitMap)  {
        let mask_native = mask._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_click_mask_698588216._native_ptr(),
                    698588216)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_ignore_texture_size(ignore: UInt8)  {
        withUnsafePointer(to: ignore) { ignore_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ignore_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ignore_texture_size_2586408642._native_ptr(),
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
    public func set_stretch_mode(mode: TextureButton.StretchMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stretch_mode_252530840._native_ptr(),
                    252530840)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_flip_h(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_flip_h_2586408642._native_ptr(),
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
    public func is_flipped_h() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_flipped_h_36873697._native_ptr(),
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
    public func set_flip_v(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_flip_v_2586408642._native_ptr(),
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
    public func is_flipped_v() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_flipped_v_36873697._native_ptr(),
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
    public func get_texture_normal() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_normal_3635182373._native_ptr(),
                    3635182373)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func get_texture_pressed() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_pressed_3635182373._native_ptr(),
                    3635182373)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func get_texture_hover() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_hover_3635182373._native_ptr(),
                    3635182373)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func get_texture_disabled() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_disabled_3635182373._native_ptr(),
                    3635182373)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func get_texture_focused() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_focused_3635182373._native_ptr(),
                    3635182373)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func get_click_mask() -> BitMap {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_click_mask_2459671998._native_ptr(),
                    2459671998)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BitMap(godot: __resPtr.pointee)
    }
    public func get_ignore_texture_size() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ignore_texture_size_36873697._native_ptr(),
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
    public func get_stretch_mode() -> TextureButton.StretchMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_stretch_mode_33815122._native_ptr(),
                    33815122)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextureButton.StretchMode(godot: __resPtr.pointee)
    }
}