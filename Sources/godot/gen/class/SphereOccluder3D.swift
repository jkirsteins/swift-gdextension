import godot_native

fileprivate var __godot_name_SphereOccluder3D: StringName! = nil

/// Spherical shape for use with occlusion culling in [OccluderInstance3D].
/// 
/// [SphereOccluder3D] stores a sphere shape that can be used by the engine's occlusion culling system.
///  
/// See [OccluderInstance3D]'s documentation for instructions on setting up occlusion culling.
open class SphereOccluder3D : Occluder3D {

    

    public override class var __godot_name: StringName { __godot_name_SphereOccluder3D }

    static var _method_set_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_radius_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SphereOccluder3D = StringName(from: "SphereOccluder3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_radius_373806689_name = StringName(from: "set_radius")
        self._method_set_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SphereOccluder3D._native_ptr(), _method_set_radius_373806689_name._native_ptr(), 373806689)
        assert(SphereOccluder3D._method_set_radius_373806689 != nil)
        let _method_get_radius_1740695150_name = StringName(from: "get_radius")
        self._method_get_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SphereOccluder3D._native_ptr(), _method_get_radius_1740695150_name._native_ptr(), 1740695150)
        assert(SphereOccluder3D._method_get_radius_1740695150 != nil)
    }

    public func set_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
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
            return Float64(godot: __resPtr.pointee)
    }
}