import godot_native

fileprivate var __godot_name_MultiplayerSpawner: StringName! = nil

/// MISSING
/// 
/// MISSING
open class MultiplayerSpawner : Node {

    

    public override class var __godot_name: StringName { __godot_name_MultiplayerSpawner }

    static var _method_add_spawnable_scene_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_spawnable_scene_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_spawnable_scene_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_clear_spawnable_scenes_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_spawn_1991184589: GDExtensionMethodBindPtr! = nil
    static var _method_get_spawn_path_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_spawn_path_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_spawn_limit_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_spawn_limit_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_spawn_function_1307783378: GDExtensionMethodBindPtr! = nil
    static var _method_set_spawn_function_1611583062: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_MultiplayerSpawner = StringName(from: "MultiplayerSpawner")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_add_spawnable_scene_83702148_name = StringName(from: "add_spawnable_scene")
        self._method_add_spawnable_scene_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_MultiplayerSpawner._native_ptr(), _method_add_spawnable_scene_83702148_name._native_ptr(), 83702148)
        assert(MultiplayerSpawner._method_add_spawnable_scene_83702148 != nil)
        let _method_get_spawnable_scene_count_3905245786_name = StringName(from: "get_spawnable_scene_count")
        self._method_get_spawnable_scene_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_MultiplayerSpawner._native_ptr(), _method_get_spawnable_scene_count_3905245786_name._native_ptr(), 3905245786)
        assert(MultiplayerSpawner._method_get_spawnable_scene_count_3905245786 != nil)
        let _method_get_spawnable_scene_844755477_name = StringName(from: "get_spawnable_scene")
        self._method_get_spawnable_scene_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_MultiplayerSpawner._native_ptr(), _method_get_spawnable_scene_844755477_name._native_ptr(), 844755477)
        assert(MultiplayerSpawner._method_get_spawnable_scene_844755477 != nil)
        let _method_clear_spawnable_scenes_3218959716_name = StringName(from: "clear_spawnable_scenes")
        self._method_clear_spawnable_scenes_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_MultiplayerSpawner._native_ptr(), _method_clear_spawnable_scenes_3218959716_name._native_ptr(), 3218959716)
        assert(MultiplayerSpawner._method_clear_spawnable_scenes_3218959716 != nil)
        let _method_spawn_1991184589_name = StringName(from: "spawn")
        self._method_spawn_1991184589 = self.interface.pointee.classdb_get_method_bind(__godot_name_MultiplayerSpawner._native_ptr(), _method_spawn_1991184589_name._native_ptr(), 1991184589)
        assert(MultiplayerSpawner._method_spawn_1991184589 != nil)
        let _method_get_spawn_path_4075236667_name = StringName(from: "get_spawn_path")
        self._method_get_spawn_path_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_MultiplayerSpawner._native_ptr(), _method_get_spawn_path_4075236667_name._native_ptr(), 4075236667)
        assert(MultiplayerSpawner._method_get_spawn_path_4075236667 != nil)
        let _method_set_spawn_path_1348162250_name = StringName(from: "set_spawn_path")
        self._method_set_spawn_path_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_MultiplayerSpawner._native_ptr(), _method_set_spawn_path_1348162250_name._native_ptr(), 1348162250)
        assert(MultiplayerSpawner._method_set_spawn_path_1348162250 != nil)
        let _method_get_spawn_limit_3905245786_name = StringName(from: "get_spawn_limit")
        self._method_get_spawn_limit_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_MultiplayerSpawner._native_ptr(), _method_get_spawn_limit_3905245786_name._native_ptr(), 3905245786)
        assert(MultiplayerSpawner._method_get_spawn_limit_3905245786 != nil)
        let _method_set_spawn_limit_1286410249_name = StringName(from: "set_spawn_limit")
        self._method_set_spawn_limit_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_MultiplayerSpawner._native_ptr(), _method_set_spawn_limit_1286410249_name._native_ptr(), 1286410249)
        assert(MultiplayerSpawner._method_set_spawn_limit_1286410249 != nil)
        let _method_get_spawn_function_1307783378_name = StringName(from: "get_spawn_function")
        self._method_get_spawn_function_1307783378 = self.interface.pointee.classdb_get_method_bind(__godot_name_MultiplayerSpawner._native_ptr(), _method_get_spawn_function_1307783378_name._native_ptr(), 1307783378)
        assert(MultiplayerSpawner._method_get_spawn_function_1307783378 != nil)
        let _method_set_spawn_function_1611583062_name = StringName(from: "set_spawn_function")
        self._method_set_spawn_function_1611583062 = self.interface.pointee.classdb_get_method_bind(__godot_name_MultiplayerSpawner._native_ptr(), _method_set_spawn_function_1611583062_name._native_ptr(), 1611583062)
        assert(MultiplayerSpawner._method_set_spawn_function_1611583062 != nil)
    }

    public func add_spawnable_scene(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_spawnable_scene_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_spawnable_scene_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_spawnable_scene_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_spawnable_scene(index: Int64) -> godot.String {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_spawnable_scene_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func clear_spawnable_scenes()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_spawnable_scenes_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func spawn(data: Variant) -> Node {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_spawn_1991184589,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func get_spawn_path() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_spawn_path_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_spawn_path(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_spawn_path_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_spawn_limit() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_spawn_limit_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_spawn_limit(limit: Int64)  {
        withUnsafePointer(to: limit) { limit_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(limit_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_spawn_limit_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_spawn_function() -> Callable {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_spawn_function_1307783378,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Callable(godot: __resPtr.pointee)
    }
    public func set_spawn_function(spawn_function: Callable)  {
        let spawn_function_native = spawn_function._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(spawn_function_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_spawn_function_1611583062,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}