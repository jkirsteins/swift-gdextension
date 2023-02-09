import godot_native

fileprivate var __godot_name_Shape2D: StringName! = nil

/// Base class for all 2D shapes.
/// 
/// Base class for all 2D shapes. All 2D shape types inherit from this.
open class Shape2D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Shape2D }

    static var _method_set_custom_solver_bias_373806689: StringName! = nil
    static var _method_get_custom_solver_bias_1740695150: StringName! = nil
    static var _method_collide_3709843132: StringName! = nil
    static var _method_collide_with_motion_2869556801: StringName! = nil
    static var _method_collide_and_get_contacts_3056932662: StringName! = nil
    static var _method_collide_with_motion_and_get_contacts_3620351573: StringName! = nil
    static var _method_draw_2948539648: StringName! = nil
    static var _method_get_rect_1639390495: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Shape2D == nil)
        __godot_name_Shape2D = StringName(from: "Shape2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_custom_solver_bias_373806689 = StringName(from: "set_custom_solver_bias")
        assert(self._method_set_custom_solver_bias_373806689 != nil)
        self._method_get_custom_solver_bias_1740695150 = StringName(from: "get_custom_solver_bias")
        assert(self._method_get_custom_solver_bias_1740695150 != nil)
        self._method_collide_3709843132 = StringName(from: "collide")
        assert(self._method_collide_3709843132 != nil)
        self._method_collide_with_motion_2869556801 = StringName(from: "collide_with_motion")
        assert(self._method_collide_with_motion_2869556801 != nil)
        self._method_collide_and_get_contacts_3056932662 = StringName(from: "collide_and_get_contacts")
        assert(self._method_collide_and_get_contacts_3056932662 != nil)
        self._method_collide_with_motion_and_get_contacts_3620351573 = StringName(from: "collide_with_motion_and_get_contacts")
        assert(self._method_collide_with_motion_and_get_contacts_3620351573 != nil)
        self._method_draw_2948539648 = StringName(from: "draw")
        assert(self._method_draw_2948539648 != nil)
        self._method_get_rect_1639390495 = StringName(from: "get_rect")
        assert(self._method_get_rect_1639390495 != nil)
    }

    public func set_custom_solver_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_solver_bias_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_custom_solver_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_solver_bias_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func collide(local_xform: Transform2D, with_shape: Shape2D, shape_xform: Transform2D) -> UInt8 {
        let shape_xform_native = shape_xform._native_ptr()
        let with_shape_native = with_shape._native_ptr()
        let local_xform_native = local_xform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_xform_native), .init(with_shape_native), .init(shape_xform_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_collide_3709843132._native_ptr(),
                    3709843132)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func collide_with_motion(local_xform: Transform2D, local_motion: Vector2, with_shape: Shape2D, shape_xform: Transform2D, shape_motion: Vector2) -> UInt8 {
        let shape_motion_native = shape_motion._native_ptr()
        let shape_xform_native = shape_xform._native_ptr()
        let with_shape_native = with_shape._native_ptr()
        let local_motion_native = local_motion._native_ptr()
        let local_xform_native = local_xform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_xform_native), .init(local_motion_native), .init(with_shape_native), .init(shape_xform_native), .init(shape_motion_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_collide_with_motion_2869556801._native_ptr(),
                    2869556801)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func collide_and_get_contacts(local_xform: Transform2D, with_shape: Shape2D, shape_xform: Transform2D) -> PackedVector2Array {
        let shape_xform_native = shape_xform._native_ptr()
        let with_shape_native = with_shape._native_ptr()
        let local_xform_native = local_xform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_xform_native), .init(with_shape_native), .init(shape_xform_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_collide_and_get_contacts_3056932662._native_ptr(),
                    3056932662)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
    public func collide_with_motion_and_get_contacts(local_xform: Transform2D, local_motion: Vector2, with_shape: Shape2D, shape_xform: Transform2D, shape_motion: Vector2) -> PackedVector2Array {
        let shape_motion_native = shape_motion._native_ptr()
        let shape_xform_native = shape_xform._native_ptr()
        let with_shape_native = with_shape._native_ptr()
        let local_motion_native = local_motion._native_ptr()
        let local_xform_native = local_xform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_xform_native), .init(local_motion_native), .init(with_shape_native), .init(shape_xform_native), .init(shape_motion_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_collide_with_motion_and_get_contacts_3620351573._native_ptr(),
                    3620351573)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
    public func draw(canvas_item: RID, color: Color)  {
        let color_native = color._native_ptr()
        let canvas_item_native = canvas_item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_item_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_2948539648._native_ptr(),
                    2948539648)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_rect() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_rect_1639390495._native_ptr(),
                    1639390495)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
    }
}