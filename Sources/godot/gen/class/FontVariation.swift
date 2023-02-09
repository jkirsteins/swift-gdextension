import godot_native

fileprivate var __godot_name_FontVariation: StringName! = nil

/// Variation of the [Font].
/// 
/// OpenType variations, simulated bold / slant, and additional font settings like OpenType features and extra spacing.
///  
/// To use simulated bold font variant:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var fv = FontVariation.new()
///  
/// fv.set_base_font(load("res://BarlowCondensed-Regular.ttf"))
///  
/// fv.set_variation_embolden(1.2);
///  
/// $"Label".set("custom_fonts/font", fv)
///  
/// $"Label".set("custom_fonts/font_size", 64)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var fv = new FontVariation();
///  
/// fv.SetBaseFont(ResourceLoader.Load<FontFile>("res://BarlowCondensed-Regular.ttf"));
///  
/// fv.SetVariationEmbolden(1.2);
///  
/// GetNode("Label").Set("custom_fonts/font", fv);
///  
/// GetNode("Label").Set("custom_font_sizes/font_size", 64);
///  
/// [/csharp]
///  
/// [/codeblocks]
open class FontVariation : Font {

    

    public override class var __godot_name: StringName { __godot_name_FontVariation }

    static var _method_set_base_font_1262170328: StringName! = nil
    static var _method_get_base_font_3229501585: StringName! = nil
    static var _method_set_variation_opentype_4155329257: StringName! = nil
    static var _method_get_variation_opentype_3102165223: StringName! = nil
    static var _method_set_variation_embolden_373806689: StringName! = nil
    static var _method_get_variation_embolden_1740695150: StringName! = nil
    static var _method_set_variation_face_index_1286410249: StringName! = nil
    static var _method_get_variation_face_index_3905245786: StringName! = nil
    static var _method_set_variation_transform_2761652528: StringName! = nil
    static var _method_get_variation_transform_3814499831: StringName! = nil
    static var _method_set_opentype_features_4155329257: StringName! = nil
    static var _method_set_spacing_3122339690: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_FontVariation == nil)
        __godot_name_FontVariation = StringName(from: "FontVariation")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_base_font_1262170328 = StringName(from: "set_base_font")
        assert(self._method_set_base_font_1262170328 != nil)
        self._method_get_base_font_3229501585 = StringName(from: "get_base_font")
        assert(self._method_get_base_font_3229501585 != nil)
        self._method_set_variation_opentype_4155329257 = StringName(from: "set_variation_opentype")
        assert(self._method_set_variation_opentype_4155329257 != nil)
        self._method_get_variation_opentype_3102165223 = StringName(from: "get_variation_opentype")
        assert(self._method_get_variation_opentype_3102165223 != nil)
        self._method_set_variation_embolden_373806689 = StringName(from: "set_variation_embolden")
        assert(self._method_set_variation_embolden_373806689 != nil)
        self._method_get_variation_embolden_1740695150 = StringName(from: "get_variation_embolden")
        assert(self._method_get_variation_embolden_1740695150 != nil)
        self._method_set_variation_face_index_1286410249 = StringName(from: "set_variation_face_index")
        assert(self._method_set_variation_face_index_1286410249 != nil)
        self._method_get_variation_face_index_3905245786 = StringName(from: "get_variation_face_index")
        assert(self._method_get_variation_face_index_3905245786 != nil)
        self._method_set_variation_transform_2761652528 = StringName(from: "set_variation_transform")
        assert(self._method_set_variation_transform_2761652528 != nil)
        self._method_get_variation_transform_3814499831 = StringName(from: "get_variation_transform")
        assert(self._method_get_variation_transform_3814499831 != nil)
        self._method_set_opentype_features_4155329257 = StringName(from: "set_opentype_features")
        assert(self._method_set_opentype_features_4155329257 != nil)
        self._method_set_spacing_3122339690 = StringName(from: "set_spacing")
        assert(self._method_set_spacing_3122339690 != nil)
    }

    public func set_base_font(font: Font)  {
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_base_font_1262170328._native_ptr(),
                    1262170328)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_base_font() -> Font {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_base_font_3229501585._native_ptr(),
                    3229501585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(godot: __resPtr.pointee)
    }
    public func set_variation_opentype(coords: Dictionary)  {
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_variation_opentype_4155329257._native_ptr(),
                    4155329257)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_variation_opentype() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_variation_opentype_3102165223._native_ptr(),
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
    public func set_variation_embolden(strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(strength_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_variation_embolden_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_variation_embolden() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_variation_embolden_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_variation_face_index(face_index: Int64)  {
        withUnsafePointer(to: face_index) { face_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(face_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_variation_face_index_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_variation_face_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_variation_face_index_3905245786._native_ptr(),
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
    public func set_variation_transform(transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transform_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_variation_transform_2761652528._native_ptr(),
                    2761652528)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_variation_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_variation_transform_3814499831._native_ptr(),
                    3814499831)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func set_opentype_features(features: Dictionary)  {
        let features_native = features._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(features_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_opentype_features_4155329257._native_ptr(),
                    4155329257)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_spacing(spacing: TextServer.SpacingType, value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: spacing.rawValue) { spacing_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(spacing_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_spacing_3122339690._native_ptr(),
                    3122339690)
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