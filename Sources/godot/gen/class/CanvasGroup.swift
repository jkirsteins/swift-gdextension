import godot_native

fileprivate var __godot_name_CanvasGroup: StringName! = nil

/// Merges several 2D nodes into a single draw operation.
/// 
/// Child [CanvasItem] nodes of a [CanvasGroup] are drawn as a single object. It allows to e.g. draw overlapping translucent 2D nodes without blending (set [member CanvasItem.self_modulate] property of [CanvasGroup] to achieve this effect).
///  
/// [b]Note:[/b] The [CanvasGroup] uses a custom shader to read from the backbuffer to draw its children. Assigning a [Material] to the [CanvasGroup] overrides the builtin shader. To duplicate the behavior of the builtin shader in a custom [Shader] use the following:
///  
/// [codeblock]
///  
/// shader_type canvas_item;
///  
///  
/// uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;
///  
///  
/// void fragment() {
///  
///     vec4 c = textureLod(screen_texture, SCREEN_UV, 0.0);
///  
///  
///     if (c.a > 0.0001) {
///  
///         c.rgb /= c.a;
///  
///     }
///  
///  
///     COLOR *= c;
///  
/// }
///  
/// [/codeblock]
///  
/// [b]Note:[/b] Since [CanvasGroup] and [member CanvasItem.clip_children] both utilize the backbuffer, children of a [CanvasGroup] who have their [member CanvasItem.clip_children] set to anything other than [constant CanvasItem.CLIP_CHILDREN_DISABLED] will not function correctly.
public class CanvasGroup : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_CanvasGroup }

    static var _method_set_fit_margin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_fit_margin_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_clear_margin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_clear_margin_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_mipmaps_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_mipmaps_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CanvasGroup = StringName(from: "CanvasGroup")

        let _method_set_fit_margin_373806689_name = StringName(from: "set_fit_margin")
        self._method_set_fit_margin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fit_margin_373806689_name._native_ptr(), 373806689)
        assert(CanvasGroup._method_set_fit_margin_373806689 != nil)
        let _method_get_fit_margin_1740695150_name = StringName(from: "get_fit_margin")
        self._method_get_fit_margin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fit_margin_1740695150_name._native_ptr(), 1740695150)
        assert(CanvasGroup._method_get_fit_margin_1740695150 != nil)
        let _method_set_clear_margin_373806689_name = StringName(from: "set_clear_margin")
        self._method_set_clear_margin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_clear_margin_373806689_name._native_ptr(), 373806689)
        assert(CanvasGroup._method_set_clear_margin_373806689 != nil)
        let _method_get_clear_margin_1740695150_name = StringName(from: "get_clear_margin")
        self._method_get_clear_margin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_clear_margin_1740695150_name._native_ptr(), 1740695150)
        assert(CanvasGroup._method_get_clear_margin_1740695150 != nil)
        let _method_set_use_mipmaps_2586408642_name = StringName(from: "set_use_mipmaps")
        self._method_set_use_mipmaps_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_mipmaps_2586408642_name._native_ptr(), 2586408642)
        assert(CanvasGroup._method_set_use_mipmaps_2586408642 != nil)
        let _method_is_using_mipmaps_36873697_name = StringName(from: "is_using_mipmaps")
        self._method_is_using_mipmaps_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_mipmaps_36873697_name._native_ptr(), 36873697)
        assert(CanvasGroup._method_is_using_mipmaps_36873697 != nil)
    }

    public func set_fit_margin(fit_margin: Float64)  {
        withUnsafePointer(to: fit_margin) { fit_margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fit_margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fit_margin_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fit_margin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fit_margin_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_clear_margin(clear_margin: Float64)  {
        withUnsafePointer(to: clear_margin) { clear_margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(clear_margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_clear_margin_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_clear_margin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_clear_margin_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_use_mipmaps(use_mipmaps: UInt8)  {
        withUnsafePointer(to: use_mipmaps) { use_mipmaps_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_mipmaps_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_mipmaps_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_mipmaps() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_mipmaps_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}