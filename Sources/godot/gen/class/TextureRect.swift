import godot_native

fileprivate var __godot_name_TextureRect: StringName! = nil

/// Control for drawing textures.
/// 
/// Used to draw icons and sprites in a user interface. The texture's placement can be controlled with the [member stretch_mode] property. It can scale, tile, or stay centered inside its bounding rectangle.
open class TextureRect : Control {

    public enum ExpandMode : Int32 {
        case EXPAND_KEEP_SIZE = 0
        case EXPAND_IGNORE_SIZE = 1
        case EXPAND_FIT_WIDTH = 2
        case EXPAND_FIT_WIDTH_PROPORTIONAL = 3
        case EXPAND_FIT_HEIGHT = 4
        case EXPAND_FIT_HEIGHT_PROPORTIONAL = 5
    }
    public enum StretchMode : Int32 {
        case STRETCH_SCALE = 0
        case STRETCH_TILE = 1
        case STRETCH_KEEP = 2
        case STRETCH_KEEP_CENTERED = 3
        case STRETCH_KEEP_ASPECT = 4
        case STRETCH_KEEP_ASPECT_CENTERED = 5
        case STRETCH_KEEP_ASPECT_COVERED = 6
    }

    public override class var __godot_name: StringName { __godot_name_TextureRect }

    static var _method_set_texture_4051416890: StringName! = nil
    static var _method_get_texture_3635182373: StringName! = nil
    static var _method_set_expand_mode_1870766882: StringName! = nil
    static var _method_get_expand_mode_3863824733: StringName! = nil
    static var _method_set_flip_h_2586408642: StringName! = nil
    static var _method_is_flipped_h_36873697: StringName! = nil
    static var _method_set_flip_v_2586408642: StringName! = nil
    static var _method_is_flipped_v_36873697: StringName! = nil
    static var _method_set_stretch_mode_58788729: StringName! = nil
    static var _method_get_stretch_mode_346396079: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TextureRect == nil)
        __godot_name_TextureRect = StringName(from: "TextureRect")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_texture_4051416890 = StringName(from: "set_texture")
        assert(self._method_set_texture_4051416890 != nil)
        self._method_get_texture_3635182373 = StringName(from: "get_texture")
        assert(self._method_get_texture_3635182373 != nil)
        self._method_set_expand_mode_1870766882 = StringName(from: "set_expand_mode")
        assert(self._method_set_expand_mode_1870766882 != nil)
        self._method_get_expand_mode_3863824733 = StringName(from: "get_expand_mode")
        assert(self._method_get_expand_mode_3863824733 != nil)
        self._method_set_flip_h_2586408642 = StringName(from: "set_flip_h")
        assert(self._method_set_flip_h_2586408642 != nil)
        self._method_is_flipped_h_36873697 = StringName(from: "is_flipped_h")
        assert(self._method_is_flipped_h_36873697 != nil)
        self._method_set_flip_v_2586408642 = StringName(from: "set_flip_v")
        assert(self._method_set_flip_v_2586408642 != nil)
        self._method_is_flipped_v_36873697 = StringName(from: "is_flipped_v")
        assert(self._method_is_flipped_v_36873697 != nil)
        self._method_set_stretch_mode_58788729 = StringName(from: "set_stretch_mode")
        assert(self._method_set_stretch_mode_58788729 != nil)
        self._method_get_stretch_mode_346396079 = StringName(from: "get_stretch_mode")
        assert(self._method_get_stretch_mode_346396079 != nil)
    }

    public func set_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_3635182373._native_ptr(),
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
    public func set_expand_mode(expand_mode: TextureRect.ExpandMode)  {
        withUnsafePointer(to: expand_mode.rawValue) { expand_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(expand_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_expand_mode_1870766882._native_ptr(),
                    1870766882)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_expand_mode() -> TextureRect.ExpandMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_expand_mode_3863824733._native_ptr(),
                    3863824733)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextureRect.ExpandMode(godot: __resPtr.pointee)
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
    public func set_stretch_mode(stretch_mode: TextureRect.StretchMode)  {
        withUnsafePointer(to: stretch_mode.rawValue) { stretch_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stretch_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stretch_mode_58788729._native_ptr(),
                    58788729)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_stretch_mode() -> TextureRect.StretchMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_stretch_mode_346396079._native_ptr(),
                    346396079)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextureRect.StretchMode(godot: __resPtr.pointee)
    }
}