import godot_native

fileprivate var __godot_name_Font: StringName! = nil

/// Base class for fonts and font variations.
/// 
/// Font is the abstract base class for font, so it shouldn't be used directly. Other types of fonts inherit from it.
open class Font : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Font }

    static var _method_set_fallbacks_381264803: StringName! = nil
    static var _method_get_fallbacks_3995934104: StringName! = nil
    static var _method_find_variation_3705324482: StringName! = nil
    static var _method_get_rids_3995934104: StringName! = nil
    static var _method_get_height_378113874: StringName! = nil
    static var _method_get_ascent_378113874: StringName! = nil
    static var _method_get_descent_378113874: StringName! = nil
    static var _method_get_underline_position_378113874: StringName! = nil
    static var _method_get_underline_thickness_378113874: StringName! = nil
    static var _method_get_font_name_201670096: StringName! = nil
    static var _method_get_font_style_name_201670096: StringName! = nil
    static var _method_get_font_style_2520224254: StringName! = nil
    static var _method_get_font_weight_3905245786: StringName! = nil
    static var _method_get_font_stretch_3905245786: StringName! = nil
    static var _method_get_spacing_1310880908: StringName! = nil
    static var _method_get_opentype_features_3102165223: StringName! = nil
    static var _method_set_cache_capacity_3937882851: StringName! = nil
    static var _method_get_string_size_3678918099: StringName! = nil
    static var _method_get_multiline_string_size_2427690650: StringName! = nil
    static var _method_draw_string_2565402639: StringName! = nil
    static var _method_draw_multiline_string_348869189: StringName! = nil
    static var _method_draw_string_outline_657875837: StringName! = nil
    static var _method_draw_multiline_string_outline_1649790182: StringName! = nil
    static var _method_get_char_size_3016396712: StringName! = nil
    static var _method_draw_char_1462476057: StringName! = nil
    static var _method_draw_char_outline_4161008124: StringName! = nil
    static var _method_has_char_1116898809: StringName! = nil
    static var _method_get_supported_chars_201670096: StringName! = nil
    static var _method_is_language_supported_3927539163: StringName! = nil
    static var _method_is_script_supported_3927539163: StringName! = nil
    static var _method_get_supported_feature_list_3102165223: StringName! = nil
    static var _method_get_supported_variation_list_3102165223: StringName! = nil
    static var _method_get_face_count_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Font == nil)
        __godot_name_Font = StringName(from: "Font")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_fallbacks_381264803 = StringName(from: "set_fallbacks")
        assert(self._method_set_fallbacks_381264803 != nil)
        self._method_get_fallbacks_3995934104 = StringName(from: "get_fallbacks")
        assert(self._method_get_fallbacks_3995934104 != nil)
        self._method_find_variation_3705324482 = StringName(from: "find_variation")
        assert(self._method_find_variation_3705324482 != nil)
        self._method_get_rids_3995934104 = StringName(from: "get_rids")
        assert(self._method_get_rids_3995934104 != nil)
        self._method_get_height_378113874 = StringName(from: "get_height")
        assert(self._method_get_height_378113874 != nil)
        self._method_get_ascent_378113874 = StringName(from: "get_ascent")
        assert(self._method_get_ascent_378113874 != nil)
        self._method_get_descent_378113874 = StringName(from: "get_descent")
        assert(self._method_get_descent_378113874 != nil)
        self._method_get_underline_position_378113874 = StringName(from: "get_underline_position")
        assert(self._method_get_underline_position_378113874 != nil)
        self._method_get_underline_thickness_378113874 = StringName(from: "get_underline_thickness")
        assert(self._method_get_underline_thickness_378113874 != nil)
        self._method_get_font_name_201670096 = StringName(from: "get_font_name")
        assert(self._method_get_font_name_201670096 != nil)
        self._method_get_font_style_name_201670096 = StringName(from: "get_font_style_name")
        assert(self._method_get_font_style_name_201670096 != nil)
        self._method_get_font_style_2520224254 = StringName(from: "get_font_style")
        assert(self._method_get_font_style_2520224254 != nil)
        self._method_get_font_weight_3905245786 = StringName(from: "get_font_weight")
        assert(self._method_get_font_weight_3905245786 != nil)
        self._method_get_font_stretch_3905245786 = StringName(from: "get_font_stretch")
        assert(self._method_get_font_stretch_3905245786 != nil)
        self._method_get_spacing_1310880908 = StringName(from: "get_spacing")
        assert(self._method_get_spacing_1310880908 != nil)
        self._method_get_opentype_features_3102165223 = StringName(from: "get_opentype_features")
        assert(self._method_get_opentype_features_3102165223 != nil)
        self._method_set_cache_capacity_3937882851 = StringName(from: "set_cache_capacity")
        assert(self._method_set_cache_capacity_3937882851 != nil)
        self._method_get_string_size_3678918099 = StringName(from: "get_string_size")
        assert(self._method_get_string_size_3678918099 != nil)
        self._method_get_multiline_string_size_2427690650 = StringName(from: "get_multiline_string_size")
        assert(self._method_get_multiline_string_size_2427690650 != nil)
        self._method_draw_string_2565402639 = StringName(from: "draw_string")
        assert(self._method_draw_string_2565402639 != nil)
        self._method_draw_multiline_string_348869189 = StringName(from: "draw_multiline_string")
        assert(self._method_draw_multiline_string_348869189 != nil)
        self._method_draw_string_outline_657875837 = StringName(from: "draw_string_outline")
        assert(self._method_draw_string_outline_657875837 != nil)
        self._method_draw_multiline_string_outline_1649790182 = StringName(from: "draw_multiline_string_outline")
        assert(self._method_draw_multiline_string_outline_1649790182 != nil)
        self._method_get_char_size_3016396712 = StringName(from: "get_char_size")
        assert(self._method_get_char_size_3016396712 != nil)
        self._method_draw_char_1462476057 = StringName(from: "draw_char")
        assert(self._method_draw_char_1462476057 != nil)
        self._method_draw_char_outline_4161008124 = StringName(from: "draw_char_outline")
        assert(self._method_draw_char_outline_4161008124 != nil)
        self._method_has_char_1116898809 = StringName(from: "has_char")
        assert(self._method_has_char_1116898809 != nil)
        self._method_get_supported_chars_201670096 = StringName(from: "get_supported_chars")
        assert(self._method_get_supported_chars_201670096 != nil)
        self._method_is_language_supported_3927539163 = StringName(from: "is_language_supported")
        assert(self._method_is_language_supported_3927539163 != nil)
        self._method_is_script_supported_3927539163 = StringName(from: "is_script_supported")
        assert(self._method_is_script_supported_3927539163 != nil)
        self._method_get_supported_feature_list_3102165223 = StringName(from: "get_supported_feature_list")
        assert(self._method_get_supported_feature_list_3102165223 != nil)
        self._method_get_supported_variation_list_3102165223 = StringName(from: "get_supported_variation_list")
        assert(self._method_get_supported_variation_list_3102165223 != nil)
        self._method_get_face_count_3905245786 = StringName(from: "get_face_count")
        assert(self._method_get_face_count_3905245786 != nil)
    }

    public func set_fallbacks(fallbacks: [Font])  {
        let fallbacks_native = fallbacks._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fallbacks_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fallbacks_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_fallbacks() -> [Font] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fallbacks_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Font](godot: __resPtr.pointee)
    }
    public func find_variation(variation_coordinates: Dictionary, face_index: Int64, strength: Float64, transform: Transform2D) -> RID {
        withUnsafePointer(to: strength) { strength_native in
        withUnsafePointer(to: face_index) { face_index_native in
        let transform_native = transform._native_ptr()
        let variation_coordinates_native = variation_coordinates._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(variation_coordinates_native), .init(face_index_native), .init(strength_native), .init(transform_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_find_variation_3705324482._native_ptr(),
                    3705324482)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
    }
    public func get_rids() -> [RID] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_rids_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RID](godot: __resPtr.pointee)
    }
    public func get_height(font_size: Int64) -> Float64 {
        withUnsafePointer(to: font_size) { font_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_height_378113874._native_ptr(),
                    378113874)
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
    public func get_ascent(font_size: Int64) -> Float64 {
        withUnsafePointer(to: font_size) { font_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ascent_378113874._native_ptr(),
                    378113874)
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
    public func get_descent(font_size: Int64) -> Float64 {
        withUnsafePointer(to: font_size) { font_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_descent_378113874._native_ptr(),
                    378113874)
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
    public func get_underline_position(font_size: Int64) -> Float64 {
        withUnsafePointer(to: font_size) { font_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_underline_position_378113874._native_ptr(),
                    378113874)
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
    public func get_underline_thickness(font_size: Int64) -> Float64 {
        withUnsafePointer(to: font_size) { font_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_underline_thickness_378113874._native_ptr(),
                    378113874)
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
    public func get_font_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_font_name_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_font_style_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_font_style_name_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_font_style() -> TextServer.FontStyle {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_font_style_2520224254._native_ptr(),
                    2520224254)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer.FontStyle(godot: __resPtr.pointee)
    }
    public func get_font_weight() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_font_weight_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_font_stretch() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_font_stretch_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_spacing(spacing: TextServer.SpacingType) -> Int64 {
        withUnsafePointer(to: spacing.rawValue) { spacing_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(spacing_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_spacing_1310880908._native_ptr(),
                    1310880908)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_opentype_features() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_opentype_features_3102165223._native_ptr(),
                    3102165223)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func set_cache_capacity(single_line: Int64, multi_line: Int64)  {
        withUnsafePointer(to: multi_line) { multi_line_native in
        withUnsafePointer(to: single_line) { single_line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(single_line_native), .init(multi_line_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cache_capacity_3937882851._native_ptr(),
                    3937882851)
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
    public func get_string_size(text: godot.String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, jst_flags: TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation) -> Vector2 {
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        withUnsafePointer(to: jst_flags.rawValue) { jst_flags_native in
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native), .init(alignment_native), .init(width_native), .init(font_size_native), .init(jst_flags_native), .init(direction_native), .init(orientation_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_string_size_3678918099._native_ptr(),
                    3678918099)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
        }
    }
    public func get_multiline_string_size(text: godot.String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, max_lines: Int64, brk_flags: TextServer.LineBreakFlag, jst_flags: TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation) -> Vector2 {
        withUnsafePointer(to: max_lines) { max_lines_native in
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        withUnsafePointer(to: jst_flags.rawValue) { jst_flags_native in
        withUnsafePointer(to: brk_flags.rawValue) { brk_flags_native in
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 9)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native), .init(alignment_native), .init(width_native), .init(font_size_native), .init(max_lines_native), .init(brk_flags_native), .init(jst_flags_native), .init(direction_native), .init(orientation_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_multiline_string_size_2427690650._native_ptr(),
                    2427690650)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
        }
        }
        }
    }
    public func draw_string(canvas_item: RID, pos: Vector2, text: godot.String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, modulate: Color, jst_flags: TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation)  {
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        withUnsafePointer(to: jst_flags.rawValue) { jst_flags_native in
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let modulate_native = modulate._native_ptr()
        let text_native = text._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_item_native = canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 10)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_item_native), .init(pos_native), .init(text_native), .init(alignment_native), .init(width_native), .init(font_size_native), .init(modulate_native), .init(jst_flags_native), .init(direction_native), .init(orientation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_string_2565402639._native_ptr(),
                    2565402639)
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
        }
        }
        }
    }
    public func draw_multiline_string(canvas_item: RID, pos: Vector2, text: godot.String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, max_lines: Int64, modulate: Color, brk_flags: TextServer.LineBreakFlag, jst_flags: TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation)  {
        withUnsafePointer(to: max_lines) { max_lines_native in
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        withUnsafePointer(to: jst_flags.rawValue) { jst_flags_native in
        withUnsafePointer(to: brk_flags.rawValue) { brk_flags_native in
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let modulate_native = modulate._native_ptr()
        let text_native = text._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_item_native = canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 12)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_item_native), .init(pos_native), .init(text_native), .init(alignment_native), .init(width_native), .init(font_size_native), .init(max_lines_native), .init(modulate_native), .init(brk_flags_native), .init(jst_flags_native), .init(direction_native), .init(orientation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_multiline_string_348869189._native_ptr(),
                    348869189)
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
        }
        }
        }
        }
        }
    }
    public func draw_string_outline(canvas_item: RID, pos: Vector2, text: godot.String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, size: Int64, modulate: Color, jst_flags: TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation)  {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        withUnsafePointer(to: jst_flags.rawValue) { jst_flags_native in
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let modulate_native = modulate._native_ptr()
        let text_native = text._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_item_native = canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 11)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_item_native), .init(pos_native), .init(text_native), .init(alignment_native), .init(width_native), .init(font_size_native), .init(size_native), .init(modulate_native), .init(jst_flags_native), .init(direction_native), .init(orientation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_string_outline_657875837._native_ptr(),
                    657875837)
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
        }
        }
        }
        }
    }
    public func draw_multiline_string_outline(canvas_item: RID, pos: Vector2, text: godot.String, alignment: HorizontalAlignment, width: Float64, font_size: Int64, max_lines: Int64, size: Int64, modulate: Color, brk_flags: TextServer.LineBreakFlag, jst_flags: TextServer.JustificationFlag, direction: TextServer.Direction, orientation: TextServer.Orientation)  {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: max_lines) { max_lines_native in
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        withUnsafePointer(to: direction.rawValue) { direction_native in
        withUnsafePointer(to: jst_flags.rawValue) { jst_flags_native in
        withUnsafePointer(to: brk_flags.rawValue) { brk_flags_native in
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let modulate_native = modulate._native_ptr()
        let text_native = text._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_item_native = canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 13)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_item_native), .init(pos_native), .init(text_native), .init(alignment_native), .init(width_native), .init(font_size_native), .init(max_lines_native), .init(size_native), .init(modulate_native), .init(brk_flags_native), .init(jst_flags_native), .init(direction_native), .init(orientation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_multiline_string_outline_1649790182._native_ptr(),
                    1649790182)
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
        }
        }
        }
        }
        }
        }
    }
    public func get_char_size(char: Int64, font_size: Int64) -> Vector2 {
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: char) { char_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(char_native), .init(font_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_char_size_3016396712._native_ptr(),
                    3016396712)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
        }
    }
    public func draw_char(canvas_item: RID, pos: Vector2, char: Int64, font_size: Int64, modulate: Color) -> Float64 {
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: char) { char_native in
        let modulate_native = modulate._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_item_native = canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_item_native), .init(pos_native), .init(char_native), .init(font_size_native), .init(modulate_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_char_1462476057._native_ptr(),
                    1462476057)
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
    }
    public func draw_char_outline(canvas_item: RID, pos: Vector2, char: Int64, font_size: Int64, size: Int64, modulate: Color) -> Float64 {
        withUnsafePointer(to: size) { size_native in
        withUnsafePointer(to: font_size) { font_size_native in
        withUnsafePointer(to: char) { char_native in
        let modulate_native = modulate._native_ptr()
        let pos_native = pos._native_ptr()
        let canvas_item_native = canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_item_native), .init(pos_native), .init(char_native), .init(font_size_native), .init(size_native), .init(modulate_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_char_outline_4161008124._native_ptr(),
                    4161008124)
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
        }
    }
    public func has_char(char: Int64) -> UInt8 {
        withUnsafePointer(to: char) { char_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(char_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_char_1116898809._native_ptr(),
                    1116898809)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_supported_chars() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_supported_chars_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func is_language_supported(language: godot.String) -> UInt8 {
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_language_supported_3927539163._native_ptr(),
                    3927539163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func is_script_supported(script: godot.String) -> UInt8 {
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_script_supported_3927539163._native_ptr(),
                    3927539163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_supported_feature_list() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_supported_feature_list_3102165223._native_ptr(),
                    3102165223)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func get_supported_variation_list() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_supported_variation_list_3102165223._native_ptr(),
                    3102165223)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func get_face_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_face_count_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}