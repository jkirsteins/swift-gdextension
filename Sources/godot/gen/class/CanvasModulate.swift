import godot_native

fileprivate var __godot_name_CanvasModulate: StringName! = nil

/// Tint the entire canvas.
/// 
/// [CanvasModulate] tints the canvas elements using its assigned [member color].
public class CanvasModulate : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_CanvasModulate }

    static var _method_set_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_3444240500: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CanvasModulate = StringName(from: "CanvasModulate")

        let _method_set_color_2920490490_name = StringName(from: "set_color")
        self._method_set_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_color_2920490490_name._native_ptr(), 2920490490)
        assert(CanvasModulate._method_set_color_2920490490 != nil)
        let _method_get_color_3444240500_name = StringName(from: "get_color")
        self._method_get_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_3444240500_name._native_ptr(), 3444240500)
        assert(CanvasModulate._method_get_color_3444240500 != nil)
    }

    public func set_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
}