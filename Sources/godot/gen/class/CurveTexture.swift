import godot_native

fileprivate var __godot_name_CurveTexture: StringName! = nil

/// A texture that shows a curve.
/// 
/// Renders a given [Curve] provided to it. Simplifies the task of drawing curves and/or saving them as image files.
///  
/// If you need to store up to 3 curves within a single texture, use [CurveXYZTexture] instead. See also [GradientTexture1D] and [GradientTexture2D].
open class CurveTexture : Texture2D {

    public enum TextureMode : Int32 {
        case TEXTURE_MODE_RGB = 0
        case TEXTURE_MODE_RED = 1
    }

    public override class var __godot_name: StringName { __godot_name_CurveTexture }

    static var _method_set_width_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_curve_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_get_curve_2460114913: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_mode_1321955367: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_mode_715756376: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CurveTexture = StringName(from: "CurveTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_width_1286410249_name = StringName(from: "set_width")
        self._method_set_width_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CurveTexture._native_ptr(), _method_set_width_1286410249_name._native_ptr(), 1286410249)
        assert(CurveTexture._method_set_width_1286410249 != nil)
        let _method_set_curve_270443179_name = StringName(from: "set_curve")
        self._method_set_curve_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name_CurveTexture._native_ptr(), _method_set_curve_270443179_name._native_ptr(), 270443179)
        assert(CurveTexture._method_set_curve_270443179 != nil)
        let _method_get_curve_2460114913_name = StringName(from: "get_curve")
        self._method_get_curve_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name_CurveTexture._native_ptr(), _method_get_curve_2460114913_name._native_ptr(), 2460114913)
        assert(CurveTexture._method_get_curve_2460114913 != nil)
        let _method_set_texture_mode_1321955367_name = StringName(from: "set_texture_mode")
        self._method_set_texture_mode_1321955367 = self.interface.pointee.classdb_get_method_bind(__godot_name_CurveTexture._native_ptr(), _method_set_texture_mode_1321955367_name._native_ptr(), 1321955367)
        assert(CurveTexture._method_set_texture_mode_1321955367 != nil)
        let _method_get_texture_mode_715756376_name = StringName(from: "get_texture_mode")
        self._method_get_texture_mode_715756376 = self.interface.pointee.classdb_get_method_bind(__godot_name_CurveTexture._native_ptr(), _method_get_texture_mode_715756376_name._native_ptr(), 715756376)
        assert(CurveTexture._method_get_texture_mode_715756376 != nil)
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
    public func set_curve(curve: Curve)  {
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_curve_270443179,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_curve() -> Curve {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_curve_2460114913,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve(godot: __resPtr.pointee)
    }
    public func set_texture_mode(texture_mode: CurveTexture.TextureMode)  {
        withUnsafePointer(to: texture_mode.rawValue) { texture_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_mode_1321955367,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_mode() -> CurveTexture.TextureMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_mode_715756376,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CurveTexture.TextureMode(godot: __resPtr.pointee)
    }
}