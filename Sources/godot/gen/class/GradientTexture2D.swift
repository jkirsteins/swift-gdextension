import godot_native

fileprivate var __godot_name_GradientTexture2D: StringName! = nil

/// Gradient-filled 2D texture.
/// 
/// The texture uses a [Gradient] to fill the texture data in 2D space. The gradient is filled according to the specified [member fill] and [member repeat] types using colors obtained from the gradient. The texture does not necessarily represent an exact copy of the gradient, but instead an interpolation of samples obtained from the gradient at fixed steps (see [member width] and [member height]). See also [GradientTexture1D], [CurveTexture] and [CurveXYZTexture].
public class GradientTexture2D : Texture2D {

    public enum Fill : Int32 {
        case FILL_LINEAR = 0
        case FILL_RADIAL = 1
    }
    public enum Repeat : Int32 {
        case REPEAT_NONE = 0
        case REPEAT = 1
        case REPEAT_MIRROR = 2
    }

    public override class var __godot_name: StringName { __godot_name_GradientTexture2D }

    static var _method_set_gradient_2756054477: GDExtensionMethodBindPtr! = nil
    static var _method_get_gradient_132272999: GDExtensionMethodBindPtr! = nil
    static var _method_set_width_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_height_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_hdr_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_hdr_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_fill_3623927636: GDExtensionMethodBindPtr! = nil
    static var _method_get_fill_1876227217: GDExtensionMethodBindPtr! = nil
    static var _method_set_fill_from_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_fill_from_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_fill_to_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_fill_to_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_repeat_1357597002: GDExtensionMethodBindPtr! = nil
    static var _method_get_repeat_3351758665: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GradientTexture2D = StringName(from: "GradientTexture2D")

        let _method_set_gradient_2756054477_name = StringName(from: "set_gradient")
        self._method_set_gradient_2756054477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gradient_2756054477_name._native_ptr(), 2756054477)
        assert(GradientTexture2D._method_set_gradient_2756054477 != nil)
        let _method_get_gradient_132272999_name = StringName(from: "get_gradient")
        self._method_get_gradient_132272999 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gradient_132272999_name._native_ptr(), 132272999)
        assert(GradientTexture2D._method_get_gradient_132272999 != nil)
        let _method_set_width_1286410249_name = StringName(from: "set_width")
        self._method_set_width_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_width_1286410249_name._native_ptr(), 1286410249)
        assert(GradientTexture2D._method_set_width_1286410249 != nil)
        let _method_set_height_1286410249_name = StringName(from: "set_height")
        self._method_set_height_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_height_1286410249_name._native_ptr(), 1286410249)
        assert(GradientTexture2D._method_set_height_1286410249 != nil)
        let _method_set_use_hdr_2586408642_name = StringName(from: "set_use_hdr")
        self._method_set_use_hdr_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_hdr_2586408642_name._native_ptr(), 2586408642)
        assert(GradientTexture2D._method_set_use_hdr_2586408642 != nil)
        let _method_is_using_hdr_36873697_name = StringName(from: "is_using_hdr")
        self._method_is_using_hdr_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_hdr_36873697_name._native_ptr(), 36873697)
        assert(GradientTexture2D._method_is_using_hdr_36873697 != nil)
        let _method_set_fill_3623927636_name = StringName(from: "set_fill")
        self._method_set_fill_3623927636 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fill_3623927636_name._native_ptr(), 3623927636)
        assert(GradientTexture2D._method_set_fill_3623927636 != nil)
        let _method_get_fill_1876227217_name = StringName(from: "get_fill")
        self._method_get_fill_1876227217 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fill_1876227217_name._native_ptr(), 1876227217)
        assert(GradientTexture2D._method_get_fill_1876227217 != nil)
        let _method_set_fill_from_743155724_name = StringName(from: "set_fill_from")
        self._method_set_fill_from_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fill_from_743155724_name._native_ptr(), 743155724)
        assert(GradientTexture2D._method_set_fill_from_743155724 != nil)
        let _method_get_fill_from_3341600327_name = StringName(from: "get_fill_from")
        self._method_get_fill_from_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fill_from_3341600327_name._native_ptr(), 3341600327)
        assert(GradientTexture2D._method_get_fill_from_3341600327 != nil)
        let _method_set_fill_to_743155724_name = StringName(from: "set_fill_to")
        self._method_set_fill_to_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fill_to_743155724_name._native_ptr(), 743155724)
        assert(GradientTexture2D._method_set_fill_to_743155724 != nil)
        let _method_get_fill_to_3341600327_name = StringName(from: "get_fill_to")
        self._method_get_fill_to_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fill_to_3341600327_name._native_ptr(), 3341600327)
        assert(GradientTexture2D._method_get_fill_to_3341600327 != nil)
        let _method_set_repeat_1357597002_name = StringName(from: "set_repeat")
        self._method_set_repeat_1357597002 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_repeat_1357597002_name._native_ptr(), 1357597002)
        assert(GradientTexture2D._method_set_repeat_1357597002 != nil)
        let _method_get_repeat_3351758665_name = StringName(from: "get_repeat")
        self._method_get_repeat_3351758665 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_repeat_3351758665_name._native_ptr(), 3351758665)
        assert(GradientTexture2D._method_get_repeat_3351758665 != nil)
    }

    public func set_gradient(gradient: Gradient)  {
        let gradient_native = gradient._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gradient_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gradient_2756054477,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_gradient() -> Gradient {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gradient_132272999,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Gradient(from: __resPtr.pointee)
    }
    public func set_width(width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_width_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_height(height: Int64)  {
        withUnsafePointer(to: height) { height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_height_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_use_hdr(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_hdr_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_hdr() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_hdr_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_fill(fill: GradientTexture2D.Fill)  {
        withUnsafePointer(to: fill.rawValue) { fill_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fill_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fill_3623927636,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fill() -> GradientTexture2D.Fill {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fill_1876227217,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GradientTexture2D.Fill(from: __resPtr.pointee)
    }
    public func set_fill_from(fill_from: Vector2)  {
        let fill_from_native = fill_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fill_from_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fill_from_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_fill_from() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fill_from_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_fill_to(fill_to: Vector2)  {
        let fill_to_native = fill_to._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fill_to_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fill_to_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_fill_to() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fill_to_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_repeat(`repeat`: GradientTexture2D.Repeat)  {
        withUnsafePointer(to: `repeat`.rawValue) { repeat_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(repeat_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_repeat_1357597002,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_repeat() -> GradientTexture2D.Repeat {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_repeat_3351758665,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GradientTexture2D.Repeat(from: __resPtr.pointee)
    }
}