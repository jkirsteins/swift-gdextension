import godot_native

fileprivate var __godot_name_PhysicsServer3DRenderingServerHandler: StringName! = nil

/// 
/// 
/// 
open class PhysicsServer3DRenderingServerHandler : Object {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsServer3DRenderingServerHandler }

    static var _method__set_vertex_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_normal_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_aabb_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PhysicsServer3DRenderingServerHandler = StringName(from: "PhysicsServer3DRenderingServerHandler")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _set_vertex(vertex_id: Int64, vertices: UnsafeRawPointer)  {
        withUnsafePointer(to: vertices) { vertices_native in
        withUnsafePointer(to: vertex_id) { vertex_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertex_id_native), .init(vertices_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_vertex_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _set_normal(vertex_id: Int64, normals: UnsafeRawPointer)  {
        withUnsafePointer(to: normals) { normals_native in
        withUnsafePointer(to: vertex_id) { vertex_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertex_id_native), .init(normals_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_normal_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _set_aabb(aabb: AABB)  {
        let aabb_native = aabb._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(aabb_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_aabb_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}