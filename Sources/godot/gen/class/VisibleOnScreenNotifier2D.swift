import godot_native

fileprivate var __godot_name_VisibleOnScreenNotifier2D: StringName! = nil

/// Detects when the node extents are visible on screen.
/// 
/// The VisibleOnScreenNotifier2D detects when it is visible on the screen. It also notifies when its bounding rectangle enters or exits the screen or a viewport.
///  
/// If you want nodes to be disabled automatically when they exit the screen, use [VisibleOnScreenEnabler2D] instead.
public class VisibleOnScreenNotifier2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_VisibleOnScreenNotifier2D }

    static var _method_set_rect_2046264180: GDExtensionMethodBindPtr! = nil
    static var _method_get_rect_1639390495: GDExtensionMethodBindPtr! = nil
    static var _method_is_on_screen_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisibleOnScreenNotifier2D = StringName(from: "VisibleOnScreenNotifier2D")

        let _method_set_rect_2046264180_name = StringName(from: "set_rect")
        self._method_set_rect_2046264180 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rect_2046264180_name._native_ptr(), 2046264180)
        assert(VisibleOnScreenNotifier2D._method_set_rect_2046264180 != nil)
        let _method_get_rect_1639390495_name = StringName(from: "get_rect")
        self._method_get_rect_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rect_1639390495_name._native_ptr(), 1639390495)
        assert(VisibleOnScreenNotifier2D._method_get_rect_1639390495 != nil)
        let _method_is_on_screen_36873697_name = StringName(from: "is_on_screen")
        self._method_is_on_screen_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_on_screen_36873697_name._native_ptr(), 36873697)
        assert(VisibleOnScreenNotifier2D._method_is_on_screen_36873697 != nil)
    }

    public func set_rect(rect: Rect2)  {
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rect_2046264180,
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
    public func is_on_screen() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_on_screen_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}