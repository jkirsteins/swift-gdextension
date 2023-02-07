import godot_native

fileprivate var __godot_name_StyleBoxLine: StringName! = nil

/// [StyleBox] that displays a single line.
/// 
/// [StyleBox] that displays a single line of a given color and thickness. It can be used to draw things like separators.
public class StyleBoxLine : StyleBox {

    

    public override class var __godot_name: StringName { __godot_name_StyleBoxLine }

    static var _method_set_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_thickness_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_thickness_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_grow_begin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_grow_begin_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_grow_end_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_grow_end_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_vertical_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_vertical_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_StyleBoxLine = StringName(from: "StyleBoxLine")

        let _method_set_color_2920490490_name = StringName(from: "set_color")
        self._method_set_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_color_2920490490_name._native_ptr(), 2920490490)
        assert(StyleBoxLine._method_set_color_2920490490 != nil)
        let _method_get_color_3444240500_name = StringName(from: "get_color")
        self._method_get_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_3444240500_name._native_ptr(), 3444240500)
        assert(StyleBoxLine._method_get_color_3444240500 != nil)
        let _method_set_thickness_1286410249_name = StringName(from: "set_thickness")
        self._method_set_thickness_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_thickness_1286410249_name._native_ptr(), 1286410249)
        assert(StyleBoxLine._method_set_thickness_1286410249 != nil)
        let _method_get_thickness_3905245786_name = StringName(from: "get_thickness")
        self._method_get_thickness_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_thickness_3905245786_name._native_ptr(), 3905245786)
        assert(StyleBoxLine._method_get_thickness_3905245786 != nil)
        let _method_set_grow_begin_373806689_name = StringName(from: "set_grow_begin")
        self._method_set_grow_begin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_grow_begin_373806689_name._native_ptr(), 373806689)
        assert(StyleBoxLine._method_set_grow_begin_373806689 != nil)
        let _method_get_grow_begin_1740695150_name = StringName(from: "get_grow_begin")
        self._method_get_grow_begin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_grow_begin_1740695150_name._native_ptr(), 1740695150)
        assert(StyleBoxLine._method_get_grow_begin_1740695150 != nil)
        let _method_set_grow_end_373806689_name = StringName(from: "set_grow_end")
        self._method_set_grow_end_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_grow_end_373806689_name._native_ptr(), 373806689)
        assert(StyleBoxLine._method_set_grow_end_373806689 != nil)
        let _method_get_grow_end_1740695150_name = StringName(from: "get_grow_end")
        self._method_get_grow_end_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_grow_end_1740695150_name._native_ptr(), 1740695150)
        assert(StyleBoxLine._method_get_grow_end_1740695150 != nil)
        let _method_set_vertical_2586408642_name = StringName(from: "set_vertical")
        self._method_set_vertical_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_vertical_2586408642_name._native_ptr(), 2586408642)
        assert(StyleBoxLine._method_set_vertical_2586408642 != nil)
        let _method_is_vertical_36873697_name = StringName(from: "is_vertical")
        self._method_is_vertical_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_vertical_36873697_name._native_ptr(), 36873697)
        assert(StyleBoxLine._method_is_vertical_36873697 != nil)
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
    public func get_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_thickness(thickness: Int64)  {
        withUnsafePointer(to: thickness) { thickness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(thickness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_thickness_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_thickness() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_thickness_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_grow_begin(offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_grow_begin_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_grow_begin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_grow_begin_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_grow_end(offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_grow_end_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_grow_end() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_grow_end_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_vertical(vertical: UInt8)  {
        withUnsafePointer(to: vertical) { vertical_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertical_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_vertical_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_vertical() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_vertical_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}