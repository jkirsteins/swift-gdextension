import godot_native

fileprivate var __godot_name_PlaceholderMesh: StringName! = nil

/// Placeholder class for a mesh.
/// 
/// This class is used when loading a project that uses a [Mesh] subclass in 2 conditions:
///  
/// - When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.
///  
/// - When this subclass is missing due to using a different engine version or build (e.g. modules disabled).
open class PlaceholderMesh : Mesh {

    

    public override class var __godot_name: StringName { __godot_name_PlaceholderMesh }

    static var _method_set_aabb_259215842: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PlaceholderMesh = StringName(from: "PlaceholderMesh")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_aabb_259215842_name = StringName(from: "set_aabb")
        self._method_set_aabb_259215842 = self.interface.pointee.classdb_get_method_bind(__godot_name_PlaceholderMesh._native_ptr(), _method_set_aabb_259215842_name._native_ptr(), 259215842)
        assert(PlaceholderMesh._method_set_aabb_259215842 != nil)
    }

    public func set_aabb(aabb: AABB)  {
        let aabb_native = aabb._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(aabb_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_aabb_259215842,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}