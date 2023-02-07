import godot_native

fileprivate var __godot_name_BackBufferCopy: StringName! = nil

/// Copies a region of the screen (or the whole screen) to a buffer so it can be accessed in your shader scripts using the screen texture (i.e. a uniform sampler with ``hint_screen_texture``).
/// 
/// Node for back-buffering the currently-displayed screen. The region defined in the [BackBufferCopy] node is buffered with the content of the screen it covers, or the entire screen according to the copy mode set. Use the screen texture in your shader scripts to access the buffer.
///  
/// [b]Note:[/b] Since this node inherits from [Node2D] (and not [Control]), anchors and margins won't apply to child [Control]-derived nodes. This can be problematic when resizing the window. To avoid this, add [Control]-derived nodes as [i]siblings[/i] to the [BackBufferCopy] node instead of adding them as children.
public class BackBufferCopy : Node2D {

    public enum CopyMode : Int32 {
        case COPY_MODE_DISABLED = 0
        case COPY_MODE_RECT = 1
        case COPY_MODE_VIEWPORT = 2
    }

    public override class var __godot_name: StringName { __godot_name_BackBufferCopy }

    static var _method_set_rect_2046264180: GDExtensionMethodBindPtr! = nil
    static var _method_get_rect_1639390495: GDExtensionMethodBindPtr! = nil
    static var _method_set_copy_mode_1713538590: GDExtensionMethodBindPtr! = nil
    static var _method_get_copy_mode_3271169440: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_BackBufferCopy = StringName(from: "BackBufferCopy")

        let _method_set_rect_2046264180_name = StringName(from: "set_rect")
        self._method_set_rect_2046264180 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rect_2046264180_name._native_ptr(), 2046264180)
        assert(BackBufferCopy._method_set_rect_2046264180 != nil)
        let _method_get_rect_1639390495_name = StringName(from: "get_rect")
        self._method_get_rect_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rect_1639390495_name._native_ptr(), 1639390495)
        assert(BackBufferCopy._method_get_rect_1639390495 != nil)
        let _method_set_copy_mode_1713538590_name = StringName(from: "set_copy_mode")
        self._method_set_copy_mode_1713538590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_copy_mode_1713538590_name._native_ptr(), 1713538590)
        assert(BackBufferCopy._method_set_copy_mode_1713538590 != nil)
        let _method_get_copy_mode_3271169440_name = StringName(from: "get_copy_mode")
        self._method_get_copy_mode_3271169440 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_copy_mode_3271169440_name._native_ptr(), 3271169440)
        assert(BackBufferCopy._method_get_copy_mode_3271169440 != nil)
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
    public func set_copy_mode(copy_mode: BackBufferCopy.CopyMode)  {
        withUnsafePointer(to: copy_mode.rawValue) { copy_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(copy_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_copy_mode_1713538590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_copy_mode() -> BackBufferCopy.CopyMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_copy_mode_3271169440,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BackBufferCopy.CopyMode(from: __resPtr.pointee)
    }
}