import godot_native

fileprivate var __godot_name_SceneReplicationConfig: StringName! = nil

/// MISSING
/// 
/// MISSING
open class SceneReplicationConfig : Resource {

    

    public override class var __godot_name: StringName { __godot_name_SceneReplicationConfig }

    static var _method_get_properties_3995934104: StringName! = nil
    static var _method_add_property_3818401521: StringName! = nil
    static var _method_has_property_861721659: StringName! = nil
    static var _method_remove_property_1348162250: StringName! = nil
    static var _method_property_get_index_1382022557: StringName! = nil
    static var _method_property_get_spawn_3456846888: StringName! = nil
    static var _method_property_set_spawn_3868023870: StringName! = nil
    static var _method_property_get_sync_3456846888: StringName! = nil
    static var _method_property_set_sync_3868023870: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SceneReplicationConfig == nil)
        __godot_name_SceneReplicationConfig = StringName(from: "SceneReplicationConfig")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_properties_3995934104 = StringName(from: "get_properties")
        assert(self._method_get_properties_3995934104 != nil)
        self._method_add_property_3818401521 = StringName(from: "add_property")
        assert(self._method_add_property_3818401521 != nil)
        self._method_has_property_861721659 = StringName(from: "has_property")
        assert(self._method_has_property_861721659 != nil)
        self._method_remove_property_1348162250 = StringName(from: "remove_property")
        assert(self._method_remove_property_1348162250 != nil)
        self._method_property_get_index_1382022557 = StringName(from: "property_get_index")
        assert(self._method_property_get_index_1382022557 != nil)
        self._method_property_get_spawn_3456846888 = StringName(from: "property_get_spawn")
        assert(self._method_property_get_spawn_3456846888 != nil)
        self._method_property_set_spawn_3868023870 = StringName(from: "property_set_spawn")
        assert(self._method_property_set_spawn_3868023870 != nil)
        self._method_property_get_sync_3456846888 = StringName(from: "property_get_sync")
        assert(self._method_property_get_sync_3456846888 != nil)
        self._method_property_set_sync_3868023870 = StringName(from: "property_set_sync")
        assert(self._method_property_set_sync_3868023870 != nil)
    }

    public func get_properties() -> [NodePath] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_properties_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [NodePath](godot: __resPtr.pointee)
    }
    public func add_property(path: NodePath, index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_property_3818401521._native_ptr(),
                    3818401521)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_property(path: NodePath) -> UInt8 {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_property_861721659._native_ptr(),
                    861721659)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func remove_property(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_property_1348162250._native_ptr(),
                    1348162250)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func property_get_index(path: NodePath) -> Int64 {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_property_get_index_1382022557._native_ptr(),
                    1382022557)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func property_get_spawn(path: NodePath) -> UInt8 {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_property_get_spawn_3456846888._native_ptr(),
                    3456846888)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func property_set_spawn(path: NodePath, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_property_set_spawn_3868023870._native_ptr(),
                    3868023870)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func property_get_sync(path: NodePath) -> UInt8 {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_property_get_sync_3456846888._native_ptr(),
                    3456846888)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func property_set_sync(path: NodePath, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_property_set_sync_3868023870._native_ptr(),
                    3868023870)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}