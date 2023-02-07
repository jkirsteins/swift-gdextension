import godot_native

fileprivate var __godot_name_RootMotionView: StringName! = nil

/// Editor-only helper for setting up root motion in [AnimationTree].
/// 
/// [i]Root motion[/i] refers to an animation technique where a mesh's skeleton is used to give impulse to a character. When working with 3D animations, a popular technique is for animators to use the root skeleton bone to give motion to the rest of the skeleton. This allows animating characters in a way where steps actually match the floor below. It also allows precise interaction with objects during cinematics. See also [AnimationTree].
///  
/// [b]Note:[/b] [RootMotionView] is only visible in the editor. It will be hidden automatically in the running project.
public class RootMotionView : VisualInstance3D {

    

    public override class var __godot_name: StringName { __godot_name_RootMotionView }

    static var _method_set_animation_path_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_path_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_cell_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_zero_y_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_zero_y_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RootMotionView = StringName(from: "RootMotionView")

        let _method_set_animation_path_1348162250_name = StringName(from: "set_animation_path")
        self._method_set_animation_path_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_animation_path_1348162250_name._native_ptr(), 1348162250)
        assert(RootMotionView._method_set_animation_path_1348162250 != nil)
        let _method_get_animation_path_4075236667_name = StringName(from: "get_animation_path")
        self._method_get_animation_path_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_animation_path_4075236667_name._native_ptr(), 4075236667)
        assert(RootMotionView._method_get_animation_path_4075236667 != nil)
        let _method_set_color_2920490490_name = StringName(from: "set_color")
        self._method_set_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_color_2920490490_name._native_ptr(), 2920490490)
        assert(RootMotionView._method_set_color_2920490490 != nil)
        let _method_get_color_3444240500_name = StringName(from: "get_color")
        self._method_get_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_color_3444240500_name._native_ptr(), 3444240500)
        assert(RootMotionView._method_get_color_3444240500 != nil)
        let _method_set_cell_size_373806689_name = StringName(from: "set_cell_size")
        self._method_set_cell_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cell_size_373806689_name._native_ptr(), 373806689)
        assert(RootMotionView._method_set_cell_size_373806689 != nil)
        let _method_get_cell_size_1740695150_name = StringName(from: "get_cell_size")
        self._method_get_cell_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cell_size_1740695150_name._native_ptr(), 1740695150)
        assert(RootMotionView._method_get_cell_size_1740695150 != nil)
        let _method_set_radius_373806689_name = StringName(from: "set_radius")
        self._method_set_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_radius_373806689_name._native_ptr(), 373806689)
        assert(RootMotionView._method_set_radius_373806689 != nil)
        let _method_get_radius_1740695150_name = StringName(from: "get_radius")
        self._method_get_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_radius_1740695150_name._native_ptr(), 1740695150)
        assert(RootMotionView._method_get_radius_1740695150 != nil)
        let _method_set_zero_y_2586408642_name = StringName(from: "set_zero_y")
        self._method_set_zero_y_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_zero_y_2586408642_name._native_ptr(), 2586408642)
        assert(RootMotionView._method_set_zero_y_2586408642 != nil)
        let _method_get_zero_y_36873697_name = StringName(from: "get_zero_y")
        self._method_get_zero_y_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_zero_y_36873697_name._native_ptr(), 36873697)
        assert(RootMotionView._method_get_zero_y_36873697 != nil)
    }

    public func set_animation_path(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_animation_path_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_animation_path() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animation_path_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
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
    public func set_cell_size(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_size_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cell_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_radius(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_zero_y(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_zero_y_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_zero_y() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_zero_y_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}