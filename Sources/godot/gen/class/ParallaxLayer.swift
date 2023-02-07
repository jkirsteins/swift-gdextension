import godot_native

fileprivate var __godot_name_ParallaxLayer: StringName! = nil

/// A parallax scrolling layer to be used with [ParallaxBackground].
/// 
/// A ParallaxLayer must be the child of a [ParallaxBackground] node. Each ParallaxLayer can be set to move at different speeds relative to the camera movement or the [member ParallaxBackground.scroll_offset] value.
///  
/// This node's children will be affected by its scroll offset.
///  
/// [b]Note:[/b] Any changes to this node's position and scale made after it enters the scene will be ignored.
public class ParallaxLayer : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_ParallaxLayer }

    static var _method_set_motion_scale_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_motion_scale_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_motion_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_motion_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_mirroring_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_mirroring_3341600327: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ParallaxLayer = StringName(from: "ParallaxLayer")

        let _method_set_motion_scale_743155724_name = StringName(from: "set_motion_scale")
        self._method_set_motion_scale_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_motion_scale_743155724_name._native_ptr(), 743155724)
        assert(ParallaxLayer._method_set_motion_scale_743155724 != nil)
        let _method_get_motion_scale_3341600327_name = StringName(from: "get_motion_scale")
        self._method_get_motion_scale_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_motion_scale_3341600327_name._native_ptr(), 3341600327)
        assert(ParallaxLayer._method_get_motion_scale_3341600327 != nil)
        let _method_set_motion_offset_743155724_name = StringName(from: "set_motion_offset")
        self._method_set_motion_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_motion_offset_743155724_name._native_ptr(), 743155724)
        assert(ParallaxLayer._method_set_motion_offset_743155724 != nil)
        let _method_get_motion_offset_3341600327_name = StringName(from: "get_motion_offset")
        self._method_get_motion_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_motion_offset_3341600327_name._native_ptr(), 3341600327)
        assert(ParallaxLayer._method_get_motion_offset_3341600327 != nil)
        let _method_set_mirroring_743155724_name = StringName(from: "set_mirroring")
        self._method_set_mirroring_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mirroring_743155724_name._native_ptr(), 743155724)
        assert(ParallaxLayer._method_set_mirroring_743155724 != nil)
        let _method_get_mirroring_3341600327_name = StringName(from: "get_mirroring")
        self._method_get_mirroring_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mirroring_3341600327_name._native_ptr(), 3341600327)
        assert(ParallaxLayer._method_get_mirroring_3341600327 != nil)
    }

    public func set_motion_scale(scale: Vector2)  {
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_motion_scale_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_motion_scale() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_motion_scale_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_motion_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_motion_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_motion_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_motion_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_mirroring(mirror: Vector2)  {
        let mirror_native = mirror._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mirror_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mirroring_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_mirroring() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mirroring_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
}