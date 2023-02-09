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

    static var _method_set_width_1286410249: StringName! = nil
    static var _method_set_curve_270443179: StringName! = nil
    static var _method_get_curve_2460114913: StringName! = nil
    static var _method_set_texture_mode_1321955367: StringName! = nil
    static var _method_get_texture_mode_715756376: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CurveTexture == nil)
        __godot_name_CurveTexture = StringName(from: "CurveTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_width_1286410249 = StringName(from: "set_width")
        assert(self._method_set_width_1286410249 != nil)
        self._method_set_curve_270443179 = StringName(from: "set_curve")
        assert(self._method_set_curve_270443179 != nil)
        self._method_get_curve_2460114913 = StringName(from: "get_curve")
        assert(self._method_get_curve_2460114913 != nil)
        self._method_set_texture_mode_1321955367 = StringName(from: "set_texture_mode")
        assert(self._method_set_texture_mode_1321955367 != nil)
        self._method_get_texture_mode_715756376 = StringName(from: "get_texture_mode")
        assert(self._method_get_texture_mode_715756376 != nil)
    }

    public func set_width(width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_width_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_curve_270443179._native_ptr(),
                    270443179)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_curve_2460114913._native_ptr(),
                    2460114913)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_mode_1321955367._native_ptr(),
                    1321955367)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_mode_715756376._native_ptr(),
                    715756376)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CurveTexture.TextureMode(godot: __resPtr.pointee)
    }
}