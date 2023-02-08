import godot_native

fileprivate var __godot_name_SeparationRayShape2D: StringName! = nil

/// Separation ray shape resource for 2D physics.
/// 
/// 2D separation ray shape to be added as a [i]direct[/i] child of a [PhysicsBody2D] or [Area2D] using a [CollisionShape2D] node. A ray is not really a collision body; instead, it tries to separate itself from whatever is touching its far endpoint. It's often useful for characters.
///  
/// [b]Performance:[/b] Being a primitive collision shape, [SeparationRayShape2D] is fast to check collisions against.
open class SeparationRayShape2D : Shape2D {

    

    public override class var __godot_name: StringName { __godot_name_SeparationRayShape2D }

    static var _method_set_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_slide_on_slope_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_slide_on_slope_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SeparationRayShape2D = StringName(from: "SeparationRayShape2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_length_373806689_name = StringName(from: "set_length")
        self._method_set_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SeparationRayShape2D._native_ptr(), _method_set_length_373806689_name._native_ptr(), 373806689)
        assert(SeparationRayShape2D._method_set_length_373806689 != nil)
        let _method_get_length_1740695150_name = StringName(from: "get_length")
        self._method_get_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SeparationRayShape2D._native_ptr(), _method_get_length_1740695150_name._native_ptr(), 1740695150)
        assert(SeparationRayShape2D._method_get_length_1740695150 != nil)
        let _method_set_slide_on_slope_2586408642_name = StringName(from: "set_slide_on_slope")
        self._method_set_slide_on_slope_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SeparationRayShape2D._native_ptr(), _method_set_slide_on_slope_2586408642_name._native_ptr(), 2586408642)
        assert(SeparationRayShape2D._method_set_slide_on_slope_2586408642 != nil)
        let _method_get_slide_on_slope_36873697_name = StringName(from: "get_slide_on_slope")
        self._method_get_slide_on_slope_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SeparationRayShape2D._native_ptr(), _method_get_slide_on_slope_36873697_name._native_ptr(), 36873697)
        assert(SeparationRayShape2D._method_get_slide_on_slope_36873697 != nil)
    }

    public func set_length(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_slide_on_slope(active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(active_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_slide_on_slope_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_slide_on_slope() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_slide_on_slope_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}