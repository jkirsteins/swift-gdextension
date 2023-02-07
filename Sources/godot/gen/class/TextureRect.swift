import godot_native

fileprivate var __godot_name_TextureRect: StringName! = nil

/// Control for drawing textures.
/// 
/// Used to draw icons and sprites in a user interface. The texture's placement can be controlled with the [member stretch_mode] property. It can scale, tile, or stay centered inside its bounding rectangle.
public class TextureRect : Control {

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

    static var _method_set_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_set_expand_mode_1870766882: GDExtensionMethodBindPtr! = nil
    static var _method_get_expand_mode_3863824733: GDExtensionMethodBindPtr! = nil
    static var _method_set_flip_h_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_flipped_h_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_flip_v_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_flipped_v_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_stretch_mode_58788729: GDExtensionMethodBindPtr! = nil
    static var _method_get_stretch_mode_346396079: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_TextureRect = StringName(from: "TextureRect")

        let _method_set_texture_4051416890_name = StringName(from: "set_texture")
        self._method_set_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_4051416890_name._native_ptr(), 4051416890)
        assert(TextureRect._method_set_texture_4051416890 != nil)
        let _method_get_texture_3635182373_name = StringName(from: "get_texture")
        self._method_get_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_3635182373_name._native_ptr(), 3635182373)
        assert(TextureRect._method_get_texture_3635182373 != nil)
        let _method_set_expand_mode_1870766882_name = StringName(from: "set_expand_mode")
        self._method_set_expand_mode_1870766882 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_expand_mode_1870766882_name._native_ptr(), 1870766882)
        assert(TextureRect._method_set_expand_mode_1870766882 != nil)
        let _method_get_expand_mode_3863824733_name = StringName(from: "get_expand_mode")
        self._method_get_expand_mode_3863824733 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_expand_mode_3863824733_name._native_ptr(), 3863824733)
        assert(TextureRect._method_get_expand_mode_3863824733 != nil)
        let _method_set_flip_h_2586408642_name = StringName(from: "set_flip_h")
        self._method_set_flip_h_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flip_h_2586408642_name._native_ptr(), 2586408642)
        assert(TextureRect._method_set_flip_h_2586408642 != nil)
        let _method_is_flipped_h_36873697_name = StringName(from: "is_flipped_h")
        self._method_is_flipped_h_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_flipped_h_36873697_name._native_ptr(), 36873697)
        assert(TextureRect._method_is_flipped_h_36873697 != nil)
        let _method_set_flip_v_2586408642_name = StringName(from: "set_flip_v")
        self._method_set_flip_v_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flip_v_2586408642_name._native_ptr(), 2586408642)
        assert(TextureRect._method_set_flip_v_2586408642 != nil)
        let _method_is_flipped_v_36873697_name = StringName(from: "is_flipped_v")
        self._method_is_flipped_v_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_flipped_v_36873697_name._native_ptr(), 36873697)
        assert(TextureRect._method_is_flipped_v_36873697 != nil)
        let _method_set_stretch_mode_58788729_name = StringName(from: "set_stretch_mode")
        self._method_set_stretch_mode_58788729 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stretch_mode_58788729_name._native_ptr(), 58788729)
        assert(TextureRect._method_set_stretch_mode_58788729 != nil)
        let _method_get_stretch_mode_346396079_name = StringName(from: "get_stretch_mode")
        self._method_get_stretch_mode_346396079 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stretch_mode_346396079_name._native_ptr(), 346396079)
        assert(TextureRect._method_get_stretch_mode_346396079 != nil)
    }

    public func set_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_4051416890,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
    public func set_expand_mode(expand_mode: TextureRect.ExpandMode)  {
        withUnsafePointer(to: expand_mode.rawValue) { expand_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(expand_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_expand_mode_1870766882,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_expand_mode_3863824733,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextureRect.ExpandMode(from: __resPtr.pointee)
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
    public func set_stretch_mode(stretch_mode: TextureRect.StretchMode)  {
        withUnsafePointer(to: stretch_mode.rawValue) { stretch_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stretch_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stretch_mode_58788729,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stretch_mode_346396079,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextureRect.StretchMode(from: __resPtr.pointee)
    }
}