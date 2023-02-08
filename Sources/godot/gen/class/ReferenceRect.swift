import godot_native

fileprivate var __godot_name_ReferenceRect: StringName! = nil

/// Reference frame for GUI.
/// 
/// A rectangle box that displays only a [member border_color] border color around its rectangle. [ReferenceRect] has no fill [Color]. If you need to display a rectangle filled with a solid color, consider using [ColorRect] instead.
open class ReferenceRect : Control {

    

    public override class var __godot_name: StringName { __godot_name_ReferenceRect }

    static var _method_get_border_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_border_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_border_width_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_border_width_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_editor_only_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_editor_only_2586408642: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ReferenceRect = StringName(from: "ReferenceRect")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_border_color_3444240500_name = StringName(from: "get_border_color")
        self._method_get_border_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReferenceRect._native_ptr(), _method_get_border_color_3444240500_name._native_ptr(), 3444240500)
        assert(ReferenceRect._method_get_border_color_3444240500 != nil)
        let _method_set_border_color_2920490490_name = StringName(from: "set_border_color")
        self._method_set_border_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReferenceRect._native_ptr(), _method_set_border_color_2920490490_name._native_ptr(), 2920490490)
        assert(ReferenceRect._method_set_border_color_2920490490 != nil)
        let _method_get_border_width_1740695150_name = StringName(from: "get_border_width")
        self._method_get_border_width_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReferenceRect._native_ptr(), _method_get_border_width_1740695150_name._native_ptr(), 1740695150)
        assert(ReferenceRect._method_get_border_width_1740695150 != nil)
        let _method_set_border_width_373806689_name = StringName(from: "set_border_width")
        self._method_set_border_width_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReferenceRect._native_ptr(), _method_set_border_width_373806689_name._native_ptr(), 373806689)
        assert(ReferenceRect._method_set_border_width_373806689 != nil)
        let _method_get_editor_only_36873697_name = StringName(from: "get_editor_only")
        self._method_get_editor_only_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReferenceRect._native_ptr(), _method_get_editor_only_36873697_name._native_ptr(), 36873697)
        assert(ReferenceRect._method_get_editor_only_36873697 != nil)
        let _method_set_editor_only_2586408642_name = StringName(from: "set_editor_only")
        self._method_set_editor_only_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ReferenceRect._native_ptr(), _method_set_editor_only_2586408642_name._native_ptr(), 2586408642)
        assert(ReferenceRect._method_set_editor_only_2586408642 != nil)
    }

    public func get_border_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_border_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_border_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_border_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_border_width() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_border_width_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_border_width(width: Float64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_border_width_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_editor_only() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_editor_only_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_editor_only(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_editor_only_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}