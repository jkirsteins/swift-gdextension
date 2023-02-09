import godot_native

fileprivate var __godot_name_GradientTexture2D: StringName! = nil

/// Gradient-filled 2D texture.
/// 
/// The texture uses a [Gradient] to fill the texture data in 2D space. The gradient is filled according to the specified [member fill] and [member repeat] types using colors obtained from the gradient. The texture does not necessarily represent an exact copy of the gradient, but instead an interpolation of samples obtained from the gradient at fixed steps (see [member width] and [member height]). See also [GradientTexture1D], [CurveTexture] and [CurveXYZTexture].
open class GradientTexture2D : Texture2D {

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

    static var _method_set_gradient_2756054477: StringName! = nil
    static var _method_get_gradient_132272999: StringName! = nil
    static var _method_set_width_1286410249: StringName! = nil
    static var _method_set_height_1286410249: StringName! = nil
    static var _method_set_use_hdr_2586408642: StringName! = nil
    static var _method_is_using_hdr_36873697: StringName! = nil
    static var _method_set_fill_3623927636: StringName! = nil
    static var _method_get_fill_1876227217: StringName! = nil
    static var _method_set_fill_from_743155724: StringName! = nil
    static var _method_get_fill_from_3341600327: StringName! = nil
    static var _method_set_fill_to_743155724: StringName! = nil
    static var _method_get_fill_to_3341600327: StringName! = nil
    static var _method_set_repeat_1357597002: StringName! = nil
    static var _method_get_repeat_3351758665: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GradientTexture2D == nil)
        __godot_name_GradientTexture2D = StringName(from: "GradientTexture2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_gradient_2756054477 = StringName(from: "set_gradient")
        assert(self._method_set_gradient_2756054477 != nil)
        self._method_get_gradient_132272999 = StringName(from: "get_gradient")
        assert(self._method_get_gradient_132272999 != nil)
        self._method_set_width_1286410249 = StringName(from: "set_width")
        assert(self._method_set_width_1286410249 != nil)
        self._method_set_height_1286410249 = StringName(from: "set_height")
        assert(self._method_set_height_1286410249 != nil)
        self._method_set_use_hdr_2586408642 = StringName(from: "set_use_hdr")
        assert(self._method_set_use_hdr_2586408642 != nil)
        self._method_is_using_hdr_36873697 = StringName(from: "is_using_hdr")
        assert(self._method_is_using_hdr_36873697 != nil)
        self._method_set_fill_3623927636 = StringName(from: "set_fill")
        assert(self._method_set_fill_3623927636 != nil)
        self._method_get_fill_1876227217 = StringName(from: "get_fill")
        assert(self._method_get_fill_1876227217 != nil)
        self._method_set_fill_from_743155724 = StringName(from: "set_fill_from")
        assert(self._method_set_fill_from_743155724 != nil)
        self._method_get_fill_from_3341600327 = StringName(from: "get_fill_from")
        assert(self._method_get_fill_from_3341600327 != nil)
        self._method_set_fill_to_743155724 = StringName(from: "set_fill_to")
        assert(self._method_set_fill_to_743155724 != nil)
        self._method_get_fill_to_3341600327 = StringName(from: "get_fill_to")
        assert(self._method_get_fill_to_3341600327 != nil)
        self._method_set_repeat_1357597002 = StringName(from: "set_repeat")
        assert(self._method_set_repeat_1357597002 != nil)
        self._method_get_repeat_3351758665 = StringName(from: "get_repeat")
        assert(self._method_get_repeat_3351758665 != nil)
    }

    public func set_gradient(gradient: Gradient)  {
        let gradient_native = gradient._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gradient_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gradient_2756054477._native_ptr(),
                    2756054477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gradient_132272999._native_ptr(),
                    132272999)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Gradient(godot: __resPtr.pointee)
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
    public func set_height(height: Int64)  {
        withUnsafePointer(to: height) { height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_height_1286410249._native_ptr(),
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
    public func set_use_hdr(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_hdr_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_hdr_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_fill(fill: GradientTexture2D.Fill)  {
        withUnsafePointer(to: fill.rawValue) { fill_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fill_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fill_3623927636._native_ptr(),
                    3623927636)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fill_1876227217._native_ptr(),
                    1876227217)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GradientTexture2D.Fill(godot: __resPtr.pointee)
    }
    public func set_fill_from(fill_from: Vector2)  {
        let fill_from_native = fill_from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fill_from_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fill_from_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fill_from_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_fill_to(fill_to: Vector2)  {
        let fill_to_native = fill_to._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fill_to_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fill_to_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fill_to_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_repeat(`repeat`: GradientTexture2D.Repeat)  {
        withUnsafePointer(to: `repeat`.rawValue) { repeat_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(repeat_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_repeat_1357597002._native_ptr(),
                    1357597002)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_repeat_3351758665._native_ptr(),
                    3351758665)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GradientTexture2D.Repeat(godot: __resPtr.pointee)
    }
}