import godot_native

fileprivate var __godot_name_CodeHighlighter: StringName! = nil

/// A syntax highlighter for code.
/// 
/// A syntax highlighter for code.
open class CodeHighlighter : SyntaxHighlighter {

    

    public override class var __godot_name: StringName { __godot_name_CodeHighlighter }

    static var _method_add_keyword_color_1636512886: StringName! = nil
    static var _method_remove_keyword_color_83702148: StringName! = nil
    static var _method_has_keyword_color_3927539163: StringName! = nil
    static var _method_get_keyword_color_3855908743: StringName! = nil
    static var _method_set_keyword_colors_4155329257: StringName! = nil
    static var _method_clear_keyword_colors_3218959716: StringName! = nil
    static var _method_get_keyword_colors_3102165223: StringName! = nil
    static var _method_add_member_keyword_color_1636512886: StringName! = nil
    static var _method_remove_member_keyword_color_83702148: StringName! = nil
    static var _method_has_member_keyword_color_3927539163: StringName! = nil
    static var _method_get_member_keyword_color_3855908743: StringName! = nil
    static var _method_set_member_keyword_colors_4155329257: StringName! = nil
    static var _method_clear_member_keyword_colors_3218959716: StringName! = nil
    static var _method_get_member_keyword_colors_3102165223: StringName! = nil
    static var _method_add_color_region_2924977451: StringName! = nil
    static var _method_remove_color_region_83702148: StringName! = nil
    static var _method_has_color_region_3927539163: StringName! = nil
    static var _method_set_color_regions_4155329257: StringName! = nil
    static var _method_clear_color_regions_3218959716: StringName! = nil
    static var _method_get_color_regions_3102165223: StringName! = nil
    static var _method_set_function_color_2920490490: StringName! = nil
    static var _method_get_function_color_3444240500: StringName! = nil
    static var _method_set_number_color_2920490490: StringName! = nil
    static var _method_get_number_color_3444240500: StringName! = nil
    static var _method_set_symbol_color_2920490490: StringName! = nil
    static var _method_get_symbol_color_3444240500: StringName! = nil
    static var _method_set_member_variable_color_2920490490: StringName! = nil
    static var _method_get_member_variable_color_3444240500: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CodeHighlighter == nil)
        __godot_name_CodeHighlighter = StringName(from: "CodeHighlighter")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_keyword_color_1636512886 = StringName(from: "add_keyword_color")
        assert(self._method_add_keyword_color_1636512886 != nil)
        self._method_remove_keyword_color_83702148 = StringName(from: "remove_keyword_color")
        assert(self._method_remove_keyword_color_83702148 != nil)
        self._method_has_keyword_color_3927539163 = StringName(from: "has_keyword_color")
        assert(self._method_has_keyword_color_3927539163 != nil)
        self._method_get_keyword_color_3855908743 = StringName(from: "get_keyword_color")
        assert(self._method_get_keyword_color_3855908743 != nil)
        self._method_set_keyword_colors_4155329257 = StringName(from: "set_keyword_colors")
        assert(self._method_set_keyword_colors_4155329257 != nil)
        self._method_clear_keyword_colors_3218959716 = StringName(from: "clear_keyword_colors")
        assert(self._method_clear_keyword_colors_3218959716 != nil)
        self._method_get_keyword_colors_3102165223 = StringName(from: "get_keyword_colors")
        assert(self._method_get_keyword_colors_3102165223 != nil)
        self._method_add_member_keyword_color_1636512886 = StringName(from: "add_member_keyword_color")
        assert(self._method_add_member_keyword_color_1636512886 != nil)
        self._method_remove_member_keyword_color_83702148 = StringName(from: "remove_member_keyword_color")
        assert(self._method_remove_member_keyword_color_83702148 != nil)
        self._method_has_member_keyword_color_3927539163 = StringName(from: "has_member_keyword_color")
        assert(self._method_has_member_keyword_color_3927539163 != nil)
        self._method_get_member_keyword_color_3855908743 = StringName(from: "get_member_keyword_color")
        assert(self._method_get_member_keyword_color_3855908743 != nil)
        self._method_set_member_keyword_colors_4155329257 = StringName(from: "set_member_keyword_colors")
        assert(self._method_set_member_keyword_colors_4155329257 != nil)
        self._method_clear_member_keyword_colors_3218959716 = StringName(from: "clear_member_keyword_colors")
        assert(self._method_clear_member_keyword_colors_3218959716 != nil)
        self._method_get_member_keyword_colors_3102165223 = StringName(from: "get_member_keyword_colors")
        assert(self._method_get_member_keyword_colors_3102165223 != nil)
        self._method_add_color_region_2924977451 = StringName(from: "add_color_region")
        assert(self._method_add_color_region_2924977451 != nil)
        self._method_remove_color_region_83702148 = StringName(from: "remove_color_region")
        assert(self._method_remove_color_region_83702148 != nil)
        self._method_has_color_region_3927539163 = StringName(from: "has_color_region")
        assert(self._method_has_color_region_3927539163 != nil)
        self._method_set_color_regions_4155329257 = StringName(from: "set_color_regions")
        assert(self._method_set_color_regions_4155329257 != nil)
        self._method_clear_color_regions_3218959716 = StringName(from: "clear_color_regions")
        assert(self._method_clear_color_regions_3218959716 != nil)
        self._method_get_color_regions_3102165223 = StringName(from: "get_color_regions")
        assert(self._method_get_color_regions_3102165223 != nil)
        self._method_set_function_color_2920490490 = StringName(from: "set_function_color")
        assert(self._method_set_function_color_2920490490 != nil)
        self._method_get_function_color_3444240500 = StringName(from: "get_function_color")
        assert(self._method_get_function_color_3444240500 != nil)
        self._method_set_number_color_2920490490 = StringName(from: "set_number_color")
        assert(self._method_set_number_color_2920490490 != nil)
        self._method_get_number_color_3444240500 = StringName(from: "get_number_color")
        assert(self._method_get_number_color_3444240500 != nil)
        self._method_set_symbol_color_2920490490 = StringName(from: "set_symbol_color")
        assert(self._method_set_symbol_color_2920490490 != nil)
        self._method_get_symbol_color_3444240500 = StringName(from: "get_symbol_color")
        assert(self._method_get_symbol_color_3444240500 != nil)
        self._method_set_member_variable_color_2920490490 = StringName(from: "set_member_variable_color")
        assert(self._method_set_member_variable_color_2920490490 != nil)
        self._method_get_member_variable_color_3444240500 = StringName(from: "get_member_variable_color")
        assert(self._method_get_member_variable_color_3444240500 != nil)
    }

    public func add_keyword_color(keyword: godot.String, color: Color)  {
        let color_native = color._native_ptr()
        let keyword_native = keyword._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keyword_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_keyword_color_1636512886._native_ptr(),
                    1636512886)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_keyword_color(keyword: godot.String)  {
        let keyword_native = keyword._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keyword_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_keyword_color_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_keyword_color(keyword: godot.String) -> UInt8 {
        let keyword_native = keyword._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keyword_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_keyword_color_3927539163._native_ptr(),
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
    public func get_keyword_color(keyword: godot.String) -> Color {
        let keyword_native = keyword._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keyword_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_keyword_color_3855908743._native_ptr(),
                    3855908743)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_keyword_colors(keywords: Dictionary)  {
        let keywords_native = keywords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keywords_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_keyword_colors_4155329257._native_ptr(),
                    4155329257)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_keyword_colors()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_keyword_colors_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_keyword_colors() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_keyword_colors_3102165223._native_ptr(),
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
    public func add_member_keyword_color(member_keyword: godot.String, color: Color)  {
        let color_native = color._native_ptr()
        let member_keyword_native = member_keyword._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(member_keyword_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_member_keyword_color_1636512886._native_ptr(),
                    1636512886)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_member_keyword_color(member_keyword: godot.String)  {
        let member_keyword_native = member_keyword._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(member_keyword_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_member_keyword_color_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_member_keyword_color(member_keyword: godot.String) -> UInt8 {
        let member_keyword_native = member_keyword._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(member_keyword_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_member_keyword_color_3927539163._native_ptr(),
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
    public func get_member_keyword_color(member_keyword: godot.String) -> Color {
        let member_keyword_native = member_keyword._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(member_keyword_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_member_keyword_color_3855908743._native_ptr(),
                    3855908743)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_member_keyword_colors(member_keyword: Dictionary)  {
        let member_keyword_native = member_keyword._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(member_keyword_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_member_keyword_colors_4155329257._native_ptr(),
                    4155329257)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_member_keyword_colors()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_member_keyword_colors_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_member_keyword_colors() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_member_keyword_colors_3102165223._native_ptr(),
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
    public func add_color_region(start_key: godot.String, end_key: godot.String, color: Color, line_only: UInt8)  {
        withUnsafePointer(to: line_only) { line_only_native in
        let color_native = color._native_ptr()
        let end_key_native = end_key._native_ptr()
        let start_key_native = start_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native), .init(end_key_native), .init(color_native), .init(line_only_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_color_region_2924977451._native_ptr(),
                    2924977451)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_color_region(start_key: godot.String)  {
        let start_key_native = start_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_color_region_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_color_region(start_key: godot.String) -> UInt8 {
        let start_key_native = start_key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_color_region_3927539163._native_ptr(),
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
    public func set_color_regions(color_regions: Dictionary)  {
        let color_regions_native = color_regions._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_regions_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_color_regions_4155329257._native_ptr(),
                    4155329257)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_color_regions()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_color_regions_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color_regions() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_color_regions_3102165223._native_ptr(),
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
    public func set_function_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_function_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_function_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_function_color_3444240500._native_ptr(),
                    3444240500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_number_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_number_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_number_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_number_color_3444240500._native_ptr(),
                    3444240500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_symbol_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_symbol_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_symbol_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_symbol_color_3444240500._native_ptr(),
                    3444240500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_member_variable_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_member_variable_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_member_variable_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_member_variable_color_3444240500._native_ptr(),
                    3444240500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
}