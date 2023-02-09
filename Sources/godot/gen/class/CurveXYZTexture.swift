import godot_native

fileprivate var __godot_name_CurveXYZTexture: StringName! = nil

/// A texture that shows 3 different curves (stored on the red, green and blue color channels).
/// 
/// Renders 3 given [Curve]s provided to it, on the red, green and blue channels respectively. Compared to using separate [CurveTexture]s, this further simplifies the task of drawing curves and/or saving them as image files.
///  
/// If you only need to store one curve within a single texture, use [CurveTexture] instead. See also [GradientTexture1D] and [GradientTexture2D].
open class CurveXYZTexture : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_CurveXYZTexture }

    static var _method_set_width_1286410249: StringName! = nil
    static var _method_set_curve_x_270443179: StringName! = nil
    static var _method_get_curve_x_2460114913: StringName! = nil
    static var _method_set_curve_y_270443179: StringName! = nil
    static var _method_get_curve_y_2460114913: StringName! = nil
    static var _method_set_curve_z_270443179: StringName! = nil
    static var _method_get_curve_z_2460114913: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CurveXYZTexture == nil)
        __godot_name_CurveXYZTexture = StringName(from: "CurveXYZTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_width_1286410249 = StringName(from: "set_width")
        assert(self._method_set_width_1286410249 != nil)
        self._method_set_curve_x_270443179 = StringName(from: "set_curve_x")
        assert(self._method_set_curve_x_270443179 != nil)
        self._method_get_curve_x_2460114913 = StringName(from: "get_curve_x")
        assert(self._method_get_curve_x_2460114913 != nil)
        self._method_set_curve_y_270443179 = StringName(from: "set_curve_y")
        assert(self._method_set_curve_y_270443179 != nil)
        self._method_get_curve_y_2460114913 = StringName(from: "get_curve_y")
        assert(self._method_get_curve_y_2460114913 != nil)
        self._method_set_curve_z_270443179 = StringName(from: "set_curve_z")
        assert(self._method_set_curve_z_270443179 != nil)
        self._method_get_curve_z_2460114913 = StringName(from: "get_curve_z")
        assert(self._method_get_curve_z_2460114913 != nil)
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
    public func set_curve_x(curve: Curve)  {
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_curve_x_270443179._native_ptr(),
                    270443179)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_curve_x() -> Curve {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_curve_x_2460114913._native_ptr(),
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
    public func set_curve_y(curve: Curve)  {
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_curve_y_270443179._native_ptr(),
                    270443179)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_curve_y() -> Curve {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_curve_y_2460114913._native_ptr(),
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
    public func set_curve_z(curve: Curve)  {
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_curve_z_270443179._native_ptr(),
                    270443179)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_curve_z() -> Curve {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_curve_z_2460114913._native_ptr(),
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
}