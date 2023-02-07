import godot_native

fileprivate var __godot_name_Shape2D: StringName! = nil

/// Base class for all 2D shapes.
/// 
/// Base class for all 2D shapes. All 2D shape types inherit from this.
public class Shape2D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Shape2D }

    static var _method_set_custom_solver_bias_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_solver_bias_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_collide_3709843132: GDExtensionMethodBindPtr! = nil
    static var _method_collide_with_motion_2869556801: GDExtensionMethodBindPtr! = nil
    static var _method_collide_and_get_contacts_3056932662: GDExtensionMethodBindPtr! = nil
    static var _method_collide_with_motion_and_get_contacts_3620351573: GDExtensionMethodBindPtr! = nil
    static var _method_draw_2948539648: GDExtensionMethodBindPtr! = nil
    static var _method_get_rect_1639390495: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Shape2D = StringName(from: "Shape2D")

        let _method_set_custom_solver_bias_373806689_name = StringName(from: "set_custom_solver_bias")
        self._method_set_custom_solver_bias_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_solver_bias_373806689_name._native_ptr(), 373806689)
        assert(Shape2D._method_set_custom_solver_bias_373806689 != nil)
        let _method_get_custom_solver_bias_1740695150_name = StringName(from: "get_custom_solver_bias")
        self._method_get_custom_solver_bias_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_custom_solver_bias_1740695150_name._native_ptr(), 1740695150)
        assert(Shape2D._method_get_custom_solver_bias_1740695150 != nil)
        let _method_collide_3709843132_name = StringName(from: "collide")
        self._method_collide_3709843132 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_collide_3709843132_name._native_ptr(), 3709843132)
        assert(Shape2D._method_collide_3709843132 != nil)
        let _method_collide_with_motion_2869556801_name = StringName(from: "collide_with_motion")
        self._method_collide_with_motion_2869556801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_collide_with_motion_2869556801_name._native_ptr(), 2869556801)
        assert(Shape2D._method_collide_with_motion_2869556801 != nil)
        let _method_collide_and_get_contacts_3056932662_name = StringName(from: "collide_and_get_contacts")
        self._method_collide_and_get_contacts_3056932662 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_collide_and_get_contacts_3056932662_name._native_ptr(), 3056932662)
        assert(Shape2D._method_collide_and_get_contacts_3056932662 != nil)
        let _method_collide_with_motion_and_get_contacts_3620351573_name = StringName(from: "collide_with_motion_and_get_contacts")
        self._method_collide_with_motion_and_get_contacts_3620351573 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_collide_with_motion_and_get_contacts_3620351573_name._native_ptr(), 3620351573)
        assert(Shape2D._method_collide_with_motion_and_get_contacts_3620351573 != nil)
        let _method_draw_2948539648_name = StringName(from: "draw")
        self._method_draw_2948539648 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_draw_2948539648_name._native_ptr(), 2948539648)
        assert(Shape2D._method_draw_2948539648 != nil)
        let _method_get_rect_1639390495_name = StringName(from: "get_rect")
        self._method_get_rect_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rect_1639390495_name._native_ptr(), 1639390495)
        assert(Shape2D._method_get_rect_1639390495 != nil)
    }

    public func set_custom_solver_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_solver_bias_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_solver_bias_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_collide_3709843132,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_collide_with_motion_2869556801,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_collide_and_get_contacts_3056932662,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_collide_with_motion_and_get_contacts_3620351573,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_draw_2948539648,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rect_1639390495,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(from: __resPtr.pointee)
    }
}