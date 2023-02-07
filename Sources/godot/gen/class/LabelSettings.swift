import godot_native

fileprivate var __godot_name_LabelSettings: StringName! = nil

/// Collection of common settings to customize label text.
/// 
/// [LabelSettings] is a resource that can be assigned to a [Label] node to customize it. It will take priority over the properties defined in theme. The resource can be shared between multiple labels and swapped on the fly, so it's convenient and flexible way to setup text style.
public class LabelSettings : Resource {

    

    public override class var __godot_name: StringName { __godot_name_LabelSettings }

    static var _method_set_line_spacing_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_spacing_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_1262170328: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_3229501585: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_font_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_font_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_outline_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_outline_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_outline_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_outline_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_shadow_size_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_shadow_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_shadow_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_shadow_offset_3341600327: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_LabelSettings = StringName(from: "LabelSettings")

        let _method_set_line_spacing_373806689_name = StringName(from: "set_line_spacing")
        self._method_set_line_spacing_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_line_spacing_373806689_name._native_ptr(), 373806689)
        assert(LabelSettings._method_set_line_spacing_373806689 != nil)
        let _method_get_line_spacing_1740695150_name = StringName(from: "get_line_spacing")
        self._method_get_line_spacing_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_spacing_1740695150_name._native_ptr(), 1740695150)
        assert(LabelSettings._method_get_line_spacing_1740695150 != nil)
        let _method_set_font_1262170328_name = StringName(from: "set_font")
        self._method_set_font_1262170328 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_1262170328_name._native_ptr(), 1262170328)
        assert(LabelSettings._method_set_font_1262170328 != nil)
        let _method_get_font_3229501585_name = StringName(from: "get_font")
        self._method_get_font_3229501585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_font_3229501585_name._native_ptr(), 3229501585)
        assert(LabelSettings._method_get_font_3229501585 != nil)
        let _method_set_font_size_1286410249_name = StringName(from: "set_font_size")
        self._method_set_font_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_size_1286410249_name._native_ptr(), 1286410249)
        assert(LabelSettings._method_set_font_size_1286410249 != nil)
        let _method_get_font_size_3905245786_name = StringName(from: "get_font_size")
        self._method_get_font_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_font_size_3905245786_name._native_ptr(), 3905245786)
        assert(LabelSettings._method_get_font_size_3905245786 != nil)
        let _method_set_font_color_2920490490_name = StringName(from: "set_font_color")
        self._method_set_font_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_font_color_2920490490_name._native_ptr(), 2920490490)
        assert(LabelSettings._method_set_font_color_2920490490 != nil)
        let _method_get_font_color_3444240500_name = StringName(from: "get_font_color")
        self._method_get_font_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_font_color_3444240500_name._native_ptr(), 3444240500)
        assert(LabelSettings._method_get_font_color_3444240500 != nil)
        let _method_set_outline_size_1286410249_name = StringName(from: "set_outline_size")
        self._method_set_outline_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_outline_size_1286410249_name._native_ptr(), 1286410249)
        assert(LabelSettings._method_set_outline_size_1286410249 != nil)
        let _method_get_outline_size_3905245786_name = StringName(from: "get_outline_size")
        self._method_get_outline_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_outline_size_3905245786_name._native_ptr(), 3905245786)
        assert(LabelSettings._method_get_outline_size_3905245786 != nil)
        let _method_set_outline_color_2920490490_name = StringName(from: "set_outline_color")
        self._method_set_outline_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_outline_color_2920490490_name._native_ptr(), 2920490490)
        assert(LabelSettings._method_set_outline_color_2920490490 != nil)
        let _method_get_outline_color_3444240500_name = StringName(from: "get_outline_color")
        self._method_get_outline_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_outline_color_3444240500_name._native_ptr(), 3444240500)
        assert(LabelSettings._method_get_outline_color_3444240500 != nil)
        let _method_set_shadow_size_1286410249_name = StringName(from: "set_shadow_size")
        self._method_set_shadow_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_size_1286410249_name._native_ptr(), 1286410249)
        assert(LabelSettings._method_set_shadow_size_1286410249 != nil)
        let _method_get_shadow_size_3905245786_name = StringName(from: "get_shadow_size")
        self._method_get_shadow_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shadow_size_3905245786_name._native_ptr(), 3905245786)
        assert(LabelSettings._method_get_shadow_size_3905245786 != nil)
        let _method_set_shadow_color_2920490490_name = StringName(from: "set_shadow_color")
        self._method_set_shadow_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_color_2920490490_name._native_ptr(), 2920490490)
        assert(LabelSettings._method_set_shadow_color_2920490490 != nil)
        let _method_get_shadow_color_3444240500_name = StringName(from: "get_shadow_color")
        self._method_get_shadow_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shadow_color_3444240500_name._native_ptr(), 3444240500)
        assert(LabelSettings._method_get_shadow_color_3444240500 != nil)
        let _method_set_shadow_offset_743155724_name = StringName(from: "set_shadow_offset")
        self._method_set_shadow_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shadow_offset_743155724_name._native_ptr(), 743155724)
        assert(LabelSettings._method_set_shadow_offset_743155724 != nil)
        let _method_get_shadow_offset_3341600327_name = StringName(from: "get_shadow_offset")
        self._method_get_shadow_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shadow_offset_3341600327_name._native_ptr(), 3341600327)
        assert(LabelSettings._method_get_shadow_offset_3341600327 != nil)
    }

    public func set_line_spacing(spacing: Float64)  {
        withUnsafePointer(to: spacing) { spacing_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(spacing_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_line_spacing_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_line_spacing() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_spacing_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_font(font: Font)  {
        let font_native = font._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(font_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_1262170328,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_font() -> Font {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_3229501585,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Font(from: __resPtr.pointee)
    }
    public func set_font_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_font_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_font_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_font_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_font_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_font_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_outline_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_outline_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_outline_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_outline_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_outline_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_outline_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_outline_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_outline_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_shadow_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_shadow_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shadow_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_shadow_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shadow_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shadow_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_shadow_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shadow_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shadow_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shadow_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
}