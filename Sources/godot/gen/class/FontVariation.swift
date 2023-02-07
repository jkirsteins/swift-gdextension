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
public class FontVariation : Font {

    

    public override class var __godot_name: StringName { __godot_name_FontVariation }

    static var _method_set_base_font_1262170328: GDExtensionMethodBindPtr! = nil
    static var _method_get_base_font_3229501585: GDExtensionMethodBindPtr! = nil
    static var _method_set_variation_opentype_4155329257: GDExtensionMethodBindPtr! = nil
    static var _method_get_variation_opentype_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_set_variation_embolden_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_variation_embolden_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_variation_face_index_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_variation_face_index_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_variation_transform_2761652528: GDExtensionMethodBindPtr! = nil
    static var _method_get_variation_transform_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_set_opentype_features_4155329257: GDExtensionMethodBindPtr! = nil
    static var _method_set_spacing_3122339690: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_FontVariation = StringName(from: "FontVariation")

        let _method_set_base_font_1262170328_name = StringName(from: "set_base_font")
        self._method_set_base_font_1262170328 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_base_font_1262170328_name._native_ptr(), 1262170328)
        assert(FontVariation._method_set_base_font_1262170328 != nil)
        let _method_get_base_font_3229501585_name = StringName(from: "get_base_font")
        self._method_get_base_font_3229501585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_base_font_3229501585_name._native_ptr(), 3229501585)
        assert(FontVariation._method_get_base_font_3229501585 != nil)
        let _method_set_variation_opentype_4155329257_name = StringName(from: "set_variation_opentype")
        self._method_set_variation_opentype_4155329257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_variation_opentype_4155329257_name._native_ptr(), 4155329257)
        assert(FontVariation._method_set_variation_opentype_4155329257 != nil)
        let _method_get_variation_opentype_3102165223_name = StringName(from: "get_variation_opentype")
        self._method_get_variation_opentype_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_variation_opentype_3102165223_name._native_ptr(), 3102165223)
        assert(FontVariation._method_get_variation_opentype_3102165223 != nil)
        let _method_set_variation_embolden_373806689_name = StringName(from: "set_variation_embolden")
        self._method_set_variation_embolden_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_variation_embolden_373806689_name._native_ptr(), 373806689)
        assert(FontVariation._method_set_variation_embolden_373806689 != nil)
        let _method_get_variation_embolden_1740695150_name = StringName(from: "get_variation_embolden")
        self._method_get_variation_embolden_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_variation_embolden_1740695150_name._native_ptr(), 1740695150)
        assert(FontVariation._method_get_variation_embolden_1740695150 != nil)
        let _method_set_variation_face_index_1286410249_name = StringName(from: "set_variation_face_index")
        self._method_set_variation_face_index_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_variation_face_index_1286410249_name._native_ptr(), 1286410249)
        assert(FontVariation._method_set_variation_face_index_1286410249 != nil)
        let _method_get_variation_face_index_3905245786_name = StringName(from: "get_variation_face_index")
        self._method_get_variation_face_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_variation_face_index_3905245786_name._native_ptr(), 3905245786)
        assert(FontVariation._method_get_variation_face_index_3905245786 != nil)
        let _method_set_variation_transform_2761652528_name = StringName(from: "set_variation_transform")
        self._method_set_variation_transform_2761652528 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_variation_transform_2761652528_name._native_ptr(), 2761652528)
        assert(FontVariation._method_set_variation_transform_2761652528 != nil)
        let _method_get_variation_transform_3814499831_name = StringName(from: "get_variation_transform")
        self._method_get_variation_transform_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_variation_transform_3814499831_name._native_ptr(), 3814499831)
        assert(FontVariation._method_get_variation_transform_3814499831 != nil)
        let _method_set_opentype_features_4155329257_name = StringName(from: "set_opentype_features")
        self._method_set_opentype_features_4155329257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_opentype_features_4155329257_name._native_ptr(), 4155329257)
        assert(FontVariation._method_set_opentype_features_4155329257 != nil)
        let _method_set_spacing_3122339690_name = StringName(from: "set_spacing")
        self._method_set_spacing_3122339690 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_spacing_3122339690_name._native_ptr(), 3122339690)
        assert(FontVariation._method_set_spacing_3122339690 != nil)
    }

    public func set_base_font(font: Font)  {
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_base_font_1262170328,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_base_font_3229501585,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(from: __resPtr.pointee)
    }
    public func set_variation_opentype(coords: Dictionary)  {
        let coords_native = coords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(coords_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_variation_opentype_4155329257,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_variation_opentype_3102165223,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func set_variation_embolden(strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_variation_embolden_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_variation_embolden_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_variation_face_index(face_index: Int64)  {
        withUnsafePointer(to: face_index) { face_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(face_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_variation_face_index_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_variation_face_index_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_variation_transform(transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_variation_transform_2761652528,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_variation_transform_3814499831,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(from: __resPtr.pointee)
    }
    public func set_opentype_features(features: Dictionary)  {
        let features_native = features._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(features_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_opentype_features_4155329257,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_spacing_3122339690,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
}