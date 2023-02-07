import godot_native

fileprivate var __godot_name_GradientTexture1D: StringName! = nil

/// Gradient-filled texture.
/// 
/// GradientTexture1D uses a [Gradient] to fill the texture data. The gradient will be filled from left to right using colors obtained from the gradient. This means the texture does not necessarily represent an exact copy of the gradient, but instead an interpolation of samples obtained from the gradient at fixed steps (see [member width]). See also [GradientTexture2D], [CurveTexture] and [CurveXYZTexture].
public class GradientTexture1D : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_GradientTexture1D }

    static var _method_set_gradient_2756054477: GDExtensionMethodBindPtr! = nil
    static var _method_get_gradient_132272999: GDExtensionMethodBindPtr! = nil
    static var _method_set_width_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_hdr_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_hdr_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GradientTexture1D = StringName(from: "GradientTexture1D")

        let _method_set_gradient_2756054477_name = StringName(from: "set_gradient")
        self._method_set_gradient_2756054477 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gradient_2756054477_name._native_ptr(), 2756054477)
        assert(GradientTexture1D._method_set_gradient_2756054477 != nil)
        let _method_get_gradient_132272999_name = StringName(from: "get_gradient")
        self._method_get_gradient_132272999 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gradient_132272999_name._native_ptr(), 132272999)
        assert(GradientTexture1D._method_get_gradient_132272999 != nil)
        let _method_set_width_1286410249_name = StringName(from: "set_width")
        self._method_set_width_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_width_1286410249_name._native_ptr(), 1286410249)
        assert(GradientTexture1D._method_set_width_1286410249 != nil)
        let _method_set_use_hdr_2586408642_name = StringName(from: "set_use_hdr")
        self._method_set_use_hdr_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_hdr_2586408642_name._native_ptr(), 2586408642)
        assert(GradientTexture1D._method_set_use_hdr_2586408642 != nil)
        let _method_is_using_hdr_36873697_name = StringName(from: "is_using_hdr")
        self._method_is_using_hdr_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_hdr_36873697_name._native_ptr(), 36873697)
        assert(GradientTexture1D._method_is_using_hdr_36873697 != nil)
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
}