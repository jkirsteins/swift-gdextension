import godot_native

fileprivate var __godot_name_VisibleOnScreenNotifier2D: StringName! = nil

/// Detects when the node extents are visible on screen.
/// 
/// The VisibleOnScreenNotifier2D detects when it is visible on the screen. It also notifies when its bounding rectangle enters or exits the screen or a viewport.
///  
/// If you want nodes to be disabled automatically when they exit the screen, use [VisibleOnScreenEnabler2D] instead.
open class VisibleOnScreenNotifier2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_VisibleOnScreenNotifier2D }

    static var _method_set_rect_2046264180: StringName! = nil
    static var _method_get_rect_1639390495: StringName! = nil
    static var _method_is_on_screen_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisibleOnScreenNotifier2D == nil)
        __godot_name_VisibleOnScreenNotifier2D = StringName(from: "VisibleOnScreenNotifier2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_rect_2046264180 = StringName(from: "set_rect")
        assert(self._method_set_rect_2046264180 != nil)
        self._method_get_rect_1639390495 = StringName(from: "get_rect")
        assert(self._method_get_rect_1639390495 != nil)
        self._method_is_on_screen_36873697 = StringName(from: "is_on_screen")
        assert(self._method_is_on_screen_36873697 != nil)
    }

    public func set_rect(rect: Rect2)  {
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rect_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_rect_2046264180._native_ptr(),
                    2046264180)
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
    public func is_on_screen() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_on_screen_36873697._native_ptr(),
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
}