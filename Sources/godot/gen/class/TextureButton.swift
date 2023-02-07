import godot_native

fileprivate var __godot_name_TextureButton: StringName! = nil

/// Texture-based button. Supports Pressed, Hover, Disabled and Focused states.
/// 
/// [TextureButton] has the same functionality as [Button], except it uses sprites instead of Godot's [Theme] resource. It is faster to create, but it doesn't support localization like more complex [Control]s.
///  
/// The "normal" state must contain a texture ([member texture_normal]); other textures are optional.
///  
/// See also [BaseButton] which contains common properties and methods associated with this node.
public class TextureButton : BaseButton {

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

    static var _method_set_texture_normal_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_pressed_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_hover_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_disabled_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_focused_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_set_click_mask_698588216: GDExtensionMethodBindPtr! = nil
    static var _method_set_ignore_texture_size_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_stretch_mode_252530840: GDExtensionMethodBindPtr! = nil
    static var _method_set_flip_h_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_flipped_h_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_flip_v_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_flipped_v_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_normal_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_pressed_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_hover_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_disabled_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_focused_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_get_click_mask_2459671998: GDExtensionMethodBindPtr! = nil
    static var _method_get_ignore_texture_size_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_stretch_mode_33815122: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TextureButton = StringName(from: "TextureButton")

        let _method_set_texture_normal_4051416890_name = StringName(from: "set_texture_normal")
        self._method_set_texture_normal_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_normal_4051416890_name._native_ptr(), 4051416890)
        assert(TextureButton._method_set_texture_normal_4051416890 != nil)
        let _method_set_texture_pressed_4051416890_name = StringName(from: "set_texture_pressed")
        self._method_set_texture_pressed_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_pressed_4051416890_name._native_ptr(), 4051416890)
        assert(TextureButton._method_set_texture_pressed_4051416890 != nil)
        let _method_set_texture_hover_4051416890_name = StringName(from: "set_texture_hover")
        self._method_set_texture_hover_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_hover_4051416890_name._native_ptr(), 4051416890)
        assert(TextureButton._method_set_texture_hover_4051416890 != nil)
        let _method_set_texture_disabled_4051416890_name = StringName(from: "set_texture_disabled")
        self._method_set_texture_disabled_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_disabled_4051416890_name._native_ptr(), 4051416890)
        assert(TextureButton._method_set_texture_disabled_4051416890 != nil)
        let _method_set_texture_focused_4051416890_name = StringName(from: "set_texture_focused")
        self._method_set_texture_focused_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_focused_4051416890_name._native_ptr(), 4051416890)
        assert(TextureButton._method_set_texture_focused_4051416890 != nil)
        let _method_set_click_mask_698588216_name = StringName(from: "set_click_mask")
        self._method_set_click_mask_698588216 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_click_mask_698588216_name._native_ptr(), 698588216)
        assert(TextureButton._method_set_click_mask_698588216 != nil)
        let _method_set_ignore_texture_size_2586408642_name = StringName(from: "set_ignore_texture_size")
        self._method_set_ignore_texture_size_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ignore_texture_size_2586408642_name._native_ptr(), 2586408642)
        assert(TextureButton._method_set_ignore_texture_size_2586408642 != nil)
        let _method_set_stretch_mode_252530840_name = StringName(from: "set_stretch_mode")
        self._method_set_stretch_mode_252530840 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stretch_mode_252530840_name._native_ptr(), 252530840)
        assert(TextureButton._method_set_stretch_mode_252530840 != nil)
        let _method_set_flip_h_2586408642_name = StringName(from: "set_flip_h")
        self._method_set_flip_h_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flip_h_2586408642_name._native_ptr(), 2586408642)
        assert(TextureButton._method_set_flip_h_2586408642 != nil)
        let _method_is_flipped_h_36873697_name = StringName(from: "is_flipped_h")
        self._method_is_flipped_h_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_flipped_h_36873697_name._native_ptr(), 36873697)
        assert(TextureButton._method_is_flipped_h_36873697 != nil)
        let _method_set_flip_v_2586408642_name = StringName(from: "set_flip_v")
        self._method_set_flip_v_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flip_v_2586408642_name._native_ptr(), 2586408642)
        assert(TextureButton._method_set_flip_v_2586408642 != nil)
        let _method_is_flipped_v_36873697_name = StringName(from: "is_flipped_v")
        self._method_is_flipped_v_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_flipped_v_36873697_name._native_ptr(), 36873697)
        assert(TextureButton._method_is_flipped_v_36873697 != nil)
        let _method_get_texture_normal_3635182373_name = StringName(from: "get_texture_normal")
        self._method_get_texture_normal_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_normal_3635182373_name._native_ptr(), 3635182373)
        assert(TextureButton._method_get_texture_normal_3635182373 != nil)
        let _method_get_texture_pressed_3635182373_name = StringName(from: "get_texture_pressed")
        self._method_get_texture_pressed_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_pressed_3635182373_name._native_ptr(), 3635182373)
        assert(TextureButton._method_get_texture_pressed_3635182373 != nil)
        let _method_get_texture_hover_3635182373_name = StringName(from: "get_texture_hover")
        self._method_get_texture_hover_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_hover_3635182373_name._native_ptr(), 3635182373)
        assert(TextureButton._method_get_texture_hover_3635182373 != nil)
        let _method_get_texture_disabled_3635182373_name = StringName(from: "get_texture_disabled")
        self._method_get_texture_disabled_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_disabled_3635182373_name._native_ptr(), 3635182373)
        assert(TextureButton._method_get_texture_disabled_3635182373 != nil)
        let _method_get_texture_focused_3635182373_name = StringName(from: "get_texture_focused")
        self._method_get_texture_focused_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_focused_3635182373_name._native_ptr(), 3635182373)
        assert(TextureButton._method_get_texture_focused_3635182373 != nil)
        let _method_get_click_mask_2459671998_name = StringName(from: "get_click_mask")
        self._method_get_click_mask_2459671998 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_click_mask_2459671998_name._native_ptr(), 2459671998)
        assert(TextureButton._method_get_click_mask_2459671998 != nil)
        let _method_get_ignore_texture_size_36873697_name = StringName(from: "get_ignore_texture_size")
        self._method_get_ignore_texture_size_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ignore_texture_size_36873697_name._native_ptr(), 36873697)
        assert(TextureButton._method_get_ignore_texture_size_36873697 != nil)
        let _method_get_stretch_mode_33815122_name = StringName(from: "get_stretch_mode")
        self._method_get_stretch_mode_33815122 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stretch_mode_33815122_name._native_ptr(), 33815122)
        assert(TextureButton._method_get_stretch_mode_33815122 != nil)
    }

    public func set_texture_normal(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_normal_4051416890,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_pressed_4051416890,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_hover_4051416890,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_disabled_4051416890,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_focused_4051416890,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_click_mask_698588216,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ignore_texture_size_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stretch_mode_252530840,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flip_h_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_flipped_h_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_flip_v(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flip_v_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_flipped_v_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_texture_normal() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_normal_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func get_texture_pressed() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_pressed_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func get_texture_hover() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_hover_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func get_texture_disabled() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_disabled_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func get_texture_focused() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_focused_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func get_click_mask() -> BitMap {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_click_mask_2459671998,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BitMap(from: __resPtr.pointee)
    }
    public func get_ignore_texture_size() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ignore_texture_size_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_stretch_mode() -> TextureButton.StretchMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stretch_mode_33815122,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextureButton.StretchMode(from: __resPtr.pointee)
    }
}