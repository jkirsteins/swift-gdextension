import godot_native

fileprivate var __godot_name_PhysicsServer3DManager: StringName! = nil

/// Manager for 3D physics server implementations.
/// 
/// [PhysicsServer3DManager] is the API for registering [PhysicsServer3D] implementations, and for setting the default implementation.
///  
/// [b]Note:[/b] It is not possible to switch physics servers at runtime. This class is only used on startup at the server initialization level, by Godot itself and possibly by GDExtensions.
open class PhysicsServer3DManager : Object {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsServer3DManager }

    static var _method_register_server_2137474292: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_server_2956805083: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PhysicsServer3DManager = StringName(from: "PhysicsServer3DManager")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_register_server_2137474292_name = StringName(from: "register_server")
        self._method_register_server_2137474292 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer3DManager._native_ptr(), _method_register_server_2137474292_name._native_ptr(), 2137474292)
        assert(PhysicsServer3DManager._method_register_server_2137474292 != nil)
        let _method_set_default_server_2956805083_name = StringName(from: "set_default_server")
        self._method_set_default_server_2956805083 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer3DManager._native_ptr(), _method_set_default_server_2956805083_name._native_ptr(), 2956805083)
        assert(PhysicsServer3DManager._method_set_default_server_2956805083 != nil)
    }

    public func register_server(name: godot.String, create_callback: Callable)  {
        let create_callback_native = create_callback._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(create_callback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_register_server_2137474292,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_default_server(name: godot.String, priority: Int64)  {
        withUnsafePointer(to: priority) { priority_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_server_2956805083,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}