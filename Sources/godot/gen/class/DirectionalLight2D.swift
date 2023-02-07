import godot_native

fileprivate var __godot_name_DirectionalLight2D: StringName! = nil

/// Directional 2D light from a distance.
/// 
/// A directional light is a type of [Light2D] node that models an infinite number of parallel rays covering the entire scene. It is used for lights with strong intensity that are located far away from the scene (for example: to model sunlight or moonlight).
public class DirectionalLight2D : Light2D {

    

    public override class var __godot_name: StringName { __godot_name_DirectionalLight2D }

    static var _method_set_max_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_distance_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_DirectionalLight2D = StringName(from: "DirectionalLight2D")

        let _method_set_max_distance_373806689_name = StringName(from: "set_max_distance")
        self._method_set_max_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_distance_373806689_name._native_ptr(), 373806689)
        assert(DirectionalLight2D._method_set_max_distance_373806689 != nil)
        let _method_get_max_distance_1740695150_name = StringName(from: "get_max_distance")
        self._method_get_max_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_distance_1740695150_name._native_ptr(), 1740695150)
        assert(DirectionalLight2D._method_get_max_distance_1740695150 != nil)
    }

    public func set_max_distance(pixels: Float64)  {
        withUnsafePointer(to: pixels) { pixels_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pixels_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}