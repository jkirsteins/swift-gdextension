import godot_native

fileprivate var __godot_name_CurveXYZTexture: StringName! = nil

/// A texture that shows 3 different curves (stored on the red, green and blue color channels).
/// 
/// Renders 3 given [Curve]s provided to it, on the red, green and blue channels respectively. Compared to using separate [CurveTexture]s, this further simplifies the task of drawing curves and/or saving them as image files.
///  
/// If you only need to store one curve within a single texture, use [CurveTexture] instead. See also [GradientTexture1D] and [GradientTexture2D].
open class CurveXYZTexture : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_CurveXYZTexture }

    static var _method_set_width_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_curve_x_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_get_curve_x_2460114913: GDExtensionMethodBindPtr! = nil
    static var _method_set_curve_y_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_get_curve_y_2460114913: GDExtensionMethodBindPtr! = nil
    static var _method_set_curve_z_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_get_curve_z_2460114913: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CurveXYZTexture = StringName(from: "CurveXYZTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_width_1286410249_name = StringName(from: "set_width")
        self._method_set_width_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CurveXYZTexture._native_ptr(), _method_set_width_1286410249_name._native_ptr(), 1286410249)
        assert(CurveXYZTexture._method_set_width_1286410249 != nil)
        let _method_set_curve_x_270443179_name = StringName(from: "set_curve_x")
        self._method_set_curve_x_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name_CurveXYZTexture._native_ptr(), _method_set_curve_x_270443179_name._native_ptr(), 270443179)
        assert(CurveXYZTexture._method_set_curve_x_270443179 != nil)
        let _method_get_curve_x_2460114913_name = StringName(from: "get_curve_x")
        self._method_get_curve_x_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name_CurveXYZTexture._native_ptr(), _method_get_curve_x_2460114913_name._native_ptr(), 2460114913)
        assert(CurveXYZTexture._method_get_curve_x_2460114913 != nil)
        let _method_set_curve_y_270443179_name = StringName(from: "set_curve_y")
        self._method_set_curve_y_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name_CurveXYZTexture._native_ptr(), _method_set_curve_y_270443179_name._native_ptr(), 270443179)
        assert(CurveXYZTexture._method_set_curve_y_270443179 != nil)
        let _method_get_curve_y_2460114913_name = StringName(from: "get_curve_y")
        self._method_get_curve_y_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name_CurveXYZTexture._native_ptr(), _method_get_curve_y_2460114913_name._native_ptr(), 2460114913)
        assert(CurveXYZTexture._method_get_curve_y_2460114913 != nil)
        let _method_set_curve_z_270443179_name = StringName(from: "set_curve_z")
        self._method_set_curve_z_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name_CurveXYZTexture._native_ptr(), _method_set_curve_z_270443179_name._native_ptr(), 270443179)
        assert(CurveXYZTexture._method_set_curve_z_270443179 != nil)
        let _method_get_curve_z_2460114913_name = StringName(from: "get_curve_z")
        self._method_get_curve_z_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name_CurveXYZTexture._native_ptr(), _method_get_curve_z_2460114913_name._native_ptr(), 2460114913)
        assert(CurveXYZTexture._method_get_curve_z_2460114913 != nil)
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
    public func set_curve_x(curve: Curve)  {
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_curve_x_270443179,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_curve_x_2460114913,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_curve_y_270443179,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_curve_y_2460114913,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_curve_z_270443179,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_curve_z_2460114913,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve(godot: __resPtr.pointee)
    }
}