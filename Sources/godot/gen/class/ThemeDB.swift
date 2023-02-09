import godot_native

fileprivate var __godot_name_ThemeDB: StringName! = nil

/// An engine singleton providing access to static [Theme] information, such as default and project theme, and fallback values.
/// 
/// This engine singleton provides access to static information about [Theme] resources used by the engine and by your projects. You can fetch the default engine theme, as well as your project configured theme.
///  
/// [ThemeDB] also contains fallback values for theme properties.
open class ThemeDB : Object {

    

    public override class var __godot_name: StringName { __godot_name_ThemeDB }

    static var _method_get_default_theme_754276358: StringName! = nil
    static var _method_get_project_theme_754276358: StringName! = nil
    static var _method_set_fallback_base_scale_373806689: StringName! = nil
    static var _method_get_fallback_base_scale_191475506: StringName! = nil
    static var _method_set_fallback_font_1262170328: StringName! = nil
    static var _method_get_fallback_font_3656929885: StringName! = nil
    static var _method_set_fallback_font_size_1286410249: StringName! = nil
    static var _method_get_fallback_font_size_2455072627: StringName! = nil
    static var _method_set_fallback_icon_4051416890: StringName! = nil
    static var _method_get_fallback_icon_255860311: StringName! = nil
    static var _method_set_fallback_stylebox_2797200388: StringName! = nil
    static var _method_get_fallback_stylebox_496040854: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ThemeDB == nil)
        __godot_name_ThemeDB = StringName(from: "ThemeDB")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_default_theme_754276358 = StringName(from: "get_default_theme")
        assert(self._method_get_default_theme_754276358 != nil)
        self._method_get_project_theme_754276358 = StringName(from: "get_project_theme")
        assert(self._method_get_project_theme_754276358 != nil)
        self._method_set_fallback_base_scale_373806689 = StringName(from: "set_fallback_base_scale")
        assert(self._method_set_fallback_base_scale_373806689 != nil)
        self._method_get_fallback_base_scale_191475506 = StringName(from: "get_fallback_base_scale")
        assert(self._method_get_fallback_base_scale_191475506 != nil)
        self._method_set_fallback_font_1262170328 = StringName(from: "set_fallback_font")
        assert(self._method_set_fallback_font_1262170328 != nil)
        self._method_get_fallback_font_3656929885 = StringName(from: "get_fallback_font")
        assert(self._method_get_fallback_font_3656929885 != nil)
        self._method_set_fallback_font_size_1286410249 = StringName(from: "set_fallback_font_size")
        assert(self._method_set_fallback_font_size_1286410249 != nil)
        self._method_get_fallback_font_size_2455072627 = StringName(from: "get_fallback_font_size")
        assert(self._method_get_fallback_font_size_2455072627 != nil)
        self._method_set_fallback_icon_4051416890 = StringName(from: "set_fallback_icon")
        assert(self._method_set_fallback_icon_4051416890 != nil)
        self._method_get_fallback_icon_255860311 = StringName(from: "get_fallback_icon")
        assert(self._method_get_fallback_icon_255860311 != nil)
        self._method_set_fallback_stylebox_2797200388 = StringName(from: "set_fallback_stylebox")
        assert(self._method_set_fallback_stylebox_2797200388 != nil)
        self._method_get_fallback_stylebox_496040854 = StringName(from: "get_fallback_stylebox")
        assert(self._method_get_fallback_stylebox_496040854 != nil)
    }

    public func get_default_theme() -> Theme {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_default_theme_754276358._native_ptr(),
                    754276358)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Theme(godot: __resPtr.pointee)
    }
    public func get_project_theme() -> Theme {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_project_theme_754276358._native_ptr(),
                    754276358)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Theme(godot: __resPtr.pointee)
    }
    public func set_fallback_base_scale(base_scale: Float64)  {
        withUnsafePointer(to: base_scale) { base_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fallback_base_scale_373806689._native_ptr(),
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
    public func get_fallback_base_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fallback_base_scale_191475506._native_ptr(),
                    191475506)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_fallback_font(font: Font)  {
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fallback_font_1262170328._native_ptr(),
                    1262170328)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_fallback_font() -> Font {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fallback_font_3656929885._native_ptr(),
                    3656929885)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(godot: __resPtr.pointee)
    }
    public func set_fallback_font_size(font_size: Int64)  {
        withUnsafePointer(to: font_size) { font_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fallback_font_size_1286410249._native_ptr(),
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
    public func get_fallback_font_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fallback_font_size_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_fallback_icon(icon: Texture2D)  {
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(icon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fallback_icon_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_fallback_icon() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fallback_icon_255860311._native_ptr(),
                    255860311)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_fallback_stylebox(stylebox: StyleBox)  {
        let stylebox_native = stylebox._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stylebox_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fallback_stylebox_2797200388._native_ptr(),
                    2797200388)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_fallback_stylebox() -> StyleBox {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fallback_stylebox_496040854._native_ptr(),
                    496040854)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StyleBox(godot: __resPtr.pointee)
    }
}