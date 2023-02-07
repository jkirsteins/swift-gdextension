import godot_native

fileprivate var __godot_name_CodeHighlighter: StringName! = nil

/// A syntax highlighter for code.
/// 
/// A syntax highlighter for code.
public class CodeHighlighter : SyntaxHighlighter {

    

    public override class var __godot_name: StringName { __godot_name_CodeHighlighter }

    static var _method_add_keyword_color_1636512886: GDExtensionMethodBindPtr! = nil
    static var _method_remove_keyword_color_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_has_keyword_color_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_get_keyword_color_3855908743: GDExtensionMethodBindPtr! = nil
    static var _method_set_keyword_colors_4155329257: GDExtensionMethodBindPtr! = nil
    static var _method_clear_keyword_colors_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_keyword_colors_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_add_member_keyword_color_1636512886: GDExtensionMethodBindPtr! = nil
    static var _method_remove_member_keyword_color_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_has_member_keyword_color_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_get_member_keyword_color_3855908743: GDExtensionMethodBindPtr! = nil
    static var _method_set_member_keyword_colors_4155329257: GDExtensionMethodBindPtr! = nil
    static var _method_clear_member_keyword_colors_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_member_keyword_colors_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_add_color_region_2924977451: GDExtensionMethodBindPtr! = nil
    static var _method_remove_color_region_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_has_color_region_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_regions_4155329257: GDExtensionMethodBindPtr! = nil
    static var _method_clear_color_regions_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_regions_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_set_function_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_function_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_number_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_number_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_symbol_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_symbol_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_member_variable_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_member_variable_color_3444240500: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CodeHighlighter = StringName(from: "CodeHighlighter")

        let _method_add_keyword_color_1636512886_name = StringName(from: "add_keyword_color")
        self._method_add_keyword_color_1636512886 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_keyword_color_1636512886_name._native_ptr(), 1636512886)
        assert(CodeHighlighter._method_add_keyword_color_1636512886 != nil)
        let _method_remove_keyword_color_83702148_name = StringName(from: "remove_keyword_color")
        self._method_remove_keyword_color_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_keyword_color_83702148_name._native_ptr(), 83702148)
        assert(CodeHighlighter._method_remove_keyword_color_83702148 != nil)
        let _method_has_keyword_color_3927539163_name = StringName(from: "has_keyword_color")
        self._method_has_keyword_color_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_keyword_color_3927539163_name._native_ptr(), 3927539163)
        assert(CodeHighlighter._method_has_keyword_color_3927539163 != nil)
        let _method_get_keyword_color_3855908743_name = StringName(from: "get_keyword_color")
        self._method_get_keyword_color_3855908743 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_keyword_color_3855908743_name._native_ptr(), 3855908743)
        assert(CodeHighlighter._method_get_keyword_color_3855908743 != nil)
        let _method_set_keyword_colors_4155329257_name = StringName(from: "set_keyword_colors")
        self._method_set_keyword_colors_4155329257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_keyword_colors_4155329257_name._native_ptr(), 4155329257)
        assert(CodeHighlighter._method_set_keyword_colors_4155329257 != nil)
        let _method_clear_keyword_colors_3218959716_name = StringName(from: "clear_keyword_colors")
        self._method_clear_keyword_colors_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_keyword_colors_3218959716_name._native_ptr(), 3218959716)
        assert(CodeHighlighter._method_clear_keyword_colors_3218959716 != nil)
        let _method_get_keyword_colors_3102165223_name = StringName(from: "get_keyword_colors")
        self._method_get_keyword_colors_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_keyword_colors_3102165223_name._native_ptr(), 3102165223)
        assert(CodeHighlighter._method_get_keyword_colors_3102165223 != nil)
        let _method_add_member_keyword_color_1636512886_name = StringName(from: "add_member_keyword_color")
        self._method_add_member_keyword_color_1636512886 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_member_keyword_color_1636512886_name._native_ptr(), 1636512886)
        assert(CodeHighlighter._method_add_member_keyword_color_1636512886 != nil)
        let _method_remove_member_keyword_color_83702148_name = StringName(from: "remove_member_keyword_color")
        self._method_remove_member_keyword_color_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_member_keyword_color_83702148_name._native_ptr(), 83702148)
        assert(CodeHighlighter._method_remove_member_keyword_color_83702148 != nil)
        let _method_has_member_keyword_color_3927539163_name = StringName(from: "has_member_keyword_color")
        self._method_has_member_keyword_color_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_member_keyword_color_3927539163_name._native_ptr(), 3927539163)
        assert(CodeHighlighter._method_has_member_keyword_color_3927539163 != nil)
        let _method_get_member_keyword_color_3855908743_name = StringName(from: "get_member_keyword_color")
        self._method_get_member_keyword_color_3855908743 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_member_keyword_color_3855908743_name._native_ptr(), 3855908743)
        assert(CodeHighlighter._method_get_member_keyword_color_3855908743 != nil)
        let _method_set_member_keyword_colors_4155329257_name = StringName(from: "set_member_keyword_colors")
        self._method_set_member_keyword_colors_4155329257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_member_keyword_colors_4155329257_name._native_ptr(), 4155329257)
        assert(CodeHighlighter._method_set_member_keyword_colors_4155329257 != nil)
        let _method_clear_member_keyword_colors_3218959716_name = StringName(from: "clear_member_keyword_colors")
        self._method_clear_member_keyword_colors_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_member_keyword_colors_3218959716_name._native_ptr(), 3218959716)
        assert(CodeHighlighter._method_clear_member_keyword_colors_3218959716 != nil)
        let _method_get_member_keyword_colors_3102165223_name = StringName(from: "get_member_keyword_colors")
        self._method_get_member_keyword_colors_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_member_keyword_colors_3102165223_name._native_ptr(), 3102165223)
        assert(CodeHighlighter._method_get_member_keyword_colors_3102165223 != nil)
        let _method_add_color_region_2924977451_name = StringName(from: "add_color_region")
        self._method_add_color_region_2924977451 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_color_region_2924977451_name._native_ptr(), 2924977451)
        assert(CodeHighlighter._method_add_color_region_2924977451 != nil)
        let _method_remove_color_region_83702148_name = StringName(from: "remove_color_region")
        self._method_remove_color_region_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_color_region_83702148_name._native_ptr(), 83702148)
        assert(CodeHighlighter._method_remove_color_region_83702148 != nil)
        let _method_has_color_region_3927539163_name = StringName(from: "has_color_region")
        self._method_has_color_region_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_color_region_3927539163_name._native_ptr(), 3927539163)
        assert(CodeHighlighter._method_has_color_region_3927539163 != nil)
        let _method_set_color_regions_4155329257_name = StringName(from: "set_color_regions")
        self._method_set_color_regions_4155329257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_color_regions_4155329257_name._native_ptr(), 4155329257)
        assert(CodeHighlighter._method_set_color_regions_4155329257 != nil)
        let _method_clear_color_regions_3218959716_name = StringName(from: "clear_color_regions")
        self._method_clear_color_regions_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_color_regions_3218959716_name._native_ptr(), 3218959716)
        assert(CodeHighlighter._method_clear_color_regions_3218959716 != nil)
        let _method_get_color_regions_3102165223_name = StringName(from: "get_color_regions")
        self._method_get_color_regions_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_regions_3102165223_name._native_ptr(), 3102165223)
        assert(CodeHighlighter._method_get_color_regions_3102165223 != nil)
        let _method_set_function_color_2920490490_name = StringName(from: "set_function_color")
        self._method_set_function_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_function_color_2920490490_name._native_ptr(), 2920490490)
        assert(CodeHighlighter._method_set_function_color_2920490490 != nil)
        let _method_get_function_color_3444240500_name = StringName(from: "get_function_color")
        self._method_get_function_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_function_color_3444240500_name._native_ptr(), 3444240500)
        assert(CodeHighlighter._method_get_function_color_3444240500 != nil)
        let _method_set_number_color_2920490490_name = StringName(from: "set_number_color")
        self._method_set_number_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_number_color_2920490490_name._native_ptr(), 2920490490)
        assert(CodeHighlighter._method_set_number_color_2920490490 != nil)
        let _method_get_number_color_3444240500_name = StringName(from: "get_number_color")
        self._method_get_number_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_number_color_3444240500_name._native_ptr(), 3444240500)
        assert(CodeHighlighter._method_get_number_color_3444240500 != nil)
        let _method_set_symbol_color_2920490490_name = StringName(from: "set_symbol_color")
        self._method_set_symbol_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_symbol_color_2920490490_name._native_ptr(), 2920490490)
        assert(CodeHighlighter._method_set_symbol_color_2920490490 != nil)
        let _method_get_symbol_color_3444240500_name = StringName(from: "get_symbol_color")
        self._method_get_symbol_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_symbol_color_3444240500_name._native_ptr(), 3444240500)
        assert(CodeHighlighter._method_get_symbol_color_3444240500 != nil)
        let _method_set_member_variable_color_2920490490_name = StringName(from: "set_member_variable_color")
        self._method_set_member_variable_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_member_variable_color_2920490490_name._native_ptr(), 2920490490)
        assert(CodeHighlighter._method_set_member_variable_color_2920490490 != nil)
        let _method_get_member_variable_color_3444240500_name = StringName(from: "get_member_variable_color")
        self._method_get_member_variable_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_member_variable_color_3444240500_name._native_ptr(), 3444240500)
        assert(CodeHighlighter._method_get_member_variable_color_3444240500 != nil)
    }

    public func add_keyword_color(keyword: String, color: Color)  {
        withUnsafePointer(to: keyword) { keyword_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keyword_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_keyword_color_1636512886,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_keyword_color(keyword: String)  {
        withUnsafePointer(to: keyword) { keyword_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keyword_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_keyword_color_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_keyword_color(keyword: String) -> UInt8 {
        withUnsafePointer(to: keyword) { keyword_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keyword_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_keyword_color_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_keyword_color(keyword: String) -> Color {
        withUnsafePointer(to: keyword) { keyword_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keyword_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_keyword_color_3855908743,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
    }
    public func set_keyword_colors(keywords: Dictionary)  {
        let keywords_native = keywords._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keywords_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_keyword_colors_4155329257,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_keyword_colors_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_keyword_colors_3102165223,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func add_member_keyword_color(member_keyword: String, color: Color)  {
        withUnsafePointer(to: member_keyword) { member_keyword_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(member_keyword_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_member_keyword_color_1636512886,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_member_keyword_color(member_keyword: String)  {
        withUnsafePointer(to: member_keyword) { member_keyword_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(member_keyword_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_member_keyword_color_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_member_keyword_color(member_keyword: String) -> UInt8 {
        withUnsafePointer(to: member_keyword) { member_keyword_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(member_keyword_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_member_keyword_color_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_member_keyword_color(member_keyword: String) -> Color {
        withUnsafePointer(to: member_keyword) { member_keyword_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(member_keyword_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_member_keyword_color_3855908743,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
    }
    public func set_member_keyword_colors(member_keyword: Dictionary)  {
        let member_keyword_native = member_keyword._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(member_keyword_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_member_keyword_colors_4155329257,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_member_keyword_colors_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_member_keyword_colors_3102165223,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func add_color_region(start_key: String, end_key: String, color: Color, line_only: UInt8)  {
        withUnsafePointer(to: line_only) { line_only_native in
        withUnsafePointer(to: end_key) { end_key_native in
        withUnsafePointer(to: start_key) { start_key_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native), .init(end_key_native), .init(color_native), .init(line_only_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_color_region_2924977451,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func remove_color_region(start_key: String)  {
        withUnsafePointer(to: start_key) { start_key_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_color_region_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_color_region(start_key: String) -> UInt8 {
        withUnsafePointer(to: start_key) { start_key_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_color_region_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_color_regions(color_regions: Dictionary)  {
        let color_regions_native = color_regions._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_regions_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_regions_4155329257,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_color_regions_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_regions_3102165223,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func set_function_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_function_color_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_function_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_number_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_number_color_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_number_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_symbol_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_symbol_color_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_symbol_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_member_variable_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_member_variable_color_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_member_variable_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
}