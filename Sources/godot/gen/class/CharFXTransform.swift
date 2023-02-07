import godot_native

fileprivate var __godot_name_CharFXTransform: StringName! = nil

/// Controls how an individual character will be displayed in a [RichTextEffect].
/// 
/// By setting various properties on this object, you can control how individual characters will be displayed in a [RichTextEffect].
public class CharFXTransform : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_CharFXTransform }

    static var _method_get_range_2741790807: GDExtensionMethodBindPtr! = nil
    static var _method_set_range_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_elapsed_time_191475506: GDExtensionMethodBindPtr! = nil
    static var _method_set_elapsed_time_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_is_visible_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_visibility_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_outline_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_outline_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_offset_1497962370: GDExtensionMethodBindPtr! = nil
    static var _method_set_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_3200896285: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_environment_2382534195: GDExtensionMethodBindPtr! = nil
    static var _method_set_environment_4155329257: GDExtensionMethodBindPtr! = nil
    static var _method_get_glyph_index_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_glyph_index_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_relative_index_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_relative_index_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_glyph_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_glyph_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_glyph_flags_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_glyph_flags_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_2722037293: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CharFXTransform = StringName(from: "CharFXTransform")

        let _method_get_range_2741790807_name = StringName(from: "get_range")
        self._method_get_range_2741790807 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_range_2741790807_name._native_ptr(), 2741790807)
        assert(CharFXTransform._method_get_range_2741790807 != nil)
        let _method_set_range_1130785943_name = StringName(from: "set_range")
        self._method_set_range_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_range_1130785943_name._native_ptr(), 1130785943)
        assert(CharFXTransform._method_set_range_1130785943 != nil)
        let _method_get_elapsed_time_191475506_name = StringName(from: "get_elapsed_time")
        self._method_get_elapsed_time_191475506 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_elapsed_time_191475506_name._native_ptr(), 191475506)
        assert(CharFXTransform._method_get_elapsed_time_191475506 != nil)
        let _method_set_elapsed_time_373806689_name = StringName(from: "set_elapsed_time")
        self._method_set_elapsed_time_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_elapsed_time_373806689_name._native_ptr(), 373806689)
        assert(CharFXTransform._method_set_elapsed_time_373806689 != nil)
        let _method_is_visible_2240911060_name = StringName(from: "is_visible")
        self._method_is_visible_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_visible_2240911060_name._native_ptr(), 2240911060)
        assert(CharFXTransform._method_is_visible_2240911060 != nil)
        let _method_set_visibility_2586408642_name = StringName(from: "set_visibility")
        self._method_set_visibility_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_visibility_2586408642_name._native_ptr(), 2586408642)
        assert(CharFXTransform._method_set_visibility_2586408642 != nil)
        let _method_is_outline_2240911060_name = StringName(from: "is_outline")
        self._method_is_outline_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_outline_2240911060_name._native_ptr(), 2240911060)
        assert(CharFXTransform._method_is_outline_2240911060 != nil)
        let _method_set_outline_2586408642_name = StringName(from: "set_outline")
        self._method_set_outline_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_outline_2586408642_name._native_ptr(), 2586408642)
        assert(CharFXTransform._method_set_outline_2586408642 != nil)
        let _method_get_offset_1497962370_name = StringName(from: "get_offset")
        self._method_get_offset_1497962370 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_offset_1497962370_name._native_ptr(), 1497962370)
        assert(CharFXTransform._method_get_offset_1497962370 != nil)
        let _method_set_offset_743155724_name = StringName(from: "set_offset")
        self._method_set_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_offset_743155724_name._native_ptr(), 743155724)
        assert(CharFXTransform._method_set_offset_743155724 != nil)
        let _method_get_color_3200896285_name = StringName(from: "get_color")
        self._method_get_color_3200896285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_3200896285_name._native_ptr(), 3200896285)
        assert(CharFXTransform._method_get_color_3200896285 != nil)
        let _method_set_color_2920490490_name = StringName(from: "set_color")
        self._method_set_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_color_2920490490_name._native_ptr(), 2920490490)
        assert(CharFXTransform._method_set_color_2920490490 != nil)
        let _method_get_environment_2382534195_name = StringName(from: "get_environment")
        self._method_get_environment_2382534195 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_environment_2382534195_name._native_ptr(), 2382534195)
        assert(CharFXTransform._method_get_environment_2382534195 != nil)
        let _method_set_environment_4155329257_name = StringName(from: "set_environment")
        self._method_set_environment_4155329257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_environment_4155329257_name._native_ptr(), 4155329257)
        assert(CharFXTransform._method_set_environment_4155329257 != nil)
        let _method_get_glyph_index_3905245786_name = StringName(from: "get_glyph_index")
        self._method_get_glyph_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glyph_index_3905245786_name._native_ptr(), 3905245786)
        assert(CharFXTransform._method_get_glyph_index_3905245786 != nil)
        let _method_set_glyph_index_1286410249_name = StringName(from: "set_glyph_index")
        self._method_set_glyph_index_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glyph_index_1286410249_name._native_ptr(), 1286410249)
        assert(CharFXTransform._method_set_glyph_index_1286410249 != nil)
        let _method_get_relative_index_3905245786_name = StringName(from: "get_relative_index")
        self._method_get_relative_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_relative_index_3905245786_name._native_ptr(), 3905245786)
        assert(CharFXTransform._method_get_relative_index_3905245786 != nil)
        let _method_set_relative_index_1286410249_name = StringName(from: "set_relative_index")
        self._method_set_relative_index_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_relative_index_1286410249_name._native_ptr(), 1286410249)
        assert(CharFXTransform._method_set_relative_index_1286410249 != nil)
        let _method_get_glyph_count_3905245786_name = StringName(from: "get_glyph_count")
        self._method_get_glyph_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glyph_count_3905245786_name._native_ptr(), 3905245786)
        assert(CharFXTransform._method_get_glyph_count_3905245786 != nil)
        let _method_set_glyph_count_1286410249_name = StringName(from: "set_glyph_count")
        self._method_set_glyph_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glyph_count_1286410249_name._native_ptr(), 1286410249)
        assert(CharFXTransform._method_set_glyph_count_1286410249 != nil)
        let _method_get_glyph_flags_3905245786_name = StringName(from: "get_glyph_flags")
        self._method_get_glyph_flags_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glyph_flags_3905245786_name._native_ptr(), 3905245786)
        assert(CharFXTransform._method_get_glyph_flags_3905245786 != nil)
        let _method_set_glyph_flags_1286410249_name = StringName(from: "set_glyph_flags")
        self._method_set_glyph_flags_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glyph_flags_1286410249_name._native_ptr(), 1286410249)
        assert(CharFXTransform._method_set_glyph_flags_1286410249 != nil)
        let _method_get_font_2944877500_name = StringName(from: "get_font")
        self._method_get_font_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_font_2944877500_name._native_ptr(), 2944877500)
        assert(CharFXTransform._method_get_font_2944877500 != nil)
        let _method_set_font_2722037293_name = StringName(from: "set_font")
        self._method_set_font_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_2722037293_name._native_ptr(), 2722037293)
        assert(CharFXTransform._method_set_font_2722037293 != nil)
    }

    public func get_range() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_range_2741790807,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func set_range(range: Vector2i)  {
        let range_native = range._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(range_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_range_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_elapsed_time() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_elapsed_time_191475506,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_elapsed_time(time: Float64)  {
        withUnsafePointer(to: time) { time_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_elapsed_time_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_visible_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_visibility(visibility: UInt8)  {
        withUnsafePointer(to: visibility) { visibility_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visibility_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visibility_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_outline() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_outline_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_outline(outline: UInt8)  {
        withUnsafePointer(to: outline) { outline_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(outline_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_outline_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_offset_1497962370,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_3200896285,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_environment() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_environment_2382534195,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func set_environment(environment: Dictionary)  {
        let environment_native = environment._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(environment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_environment_4155329257,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_glyph_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glyph_index_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_glyph_index(glyph_index: Int64)  {
        withUnsafePointer(to: glyph_index) { glyph_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(glyph_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glyph_index_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_relative_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_relative_index_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_relative_index(relative_index: Int64)  {
        withUnsafePointer(to: relative_index) { relative_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(relative_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_relative_index_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_glyph_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glyph_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_glyph_count(glyph_count: Int64)  {
        withUnsafePointer(to: glyph_count) { glyph_count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(glyph_count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glyph_count_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_glyph_flags() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glyph_flags_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_glyph_flags(glyph_flags: Int64)  {
        withUnsafePointer(to: glyph_flags) { glyph_flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(glyph_flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glyph_flags_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_font() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func set_font(font: RID)  {
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}