import godot_native

fileprivate var __godot_name_SceneReplicationConfig: StringName! = nil

/// MISSING
/// 
/// MISSING
public class SceneReplicationConfig : Resource {

    

    public override class var __godot_name: StringName { __godot_name_SceneReplicationConfig }

    static var _method_get_properties_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_add_property_3818401521: GDExtensionMethodBindPtr! = nil
    static var _method_has_property_861721659: GDExtensionMethodBindPtr! = nil
    static var _method_remove_property_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_property_get_index_1382022557: GDExtensionMethodBindPtr! = nil
    static var _method_property_get_spawn_3456846888: GDExtensionMethodBindPtr! = nil
    static var _method_property_set_spawn_3868023870: GDExtensionMethodBindPtr! = nil
    static var _method_property_get_sync_3456846888: GDExtensionMethodBindPtr! = nil
    static var _method_property_set_sync_3868023870: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SceneReplicationConfig = StringName(from: "SceneReplicationConfig")

        let _method_get_properties_3995934104_name = StringName(from: "get_properties")
        self._method_get_properties_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_properties_3995934104_name._native_ptr(), 3995934104)
        assert(SceneReplicationConfig._method_get_properties_3995934104 != nil)
        let _method_add_property_3818401521_name = StringName(from: "add_property")
        self._method_add_property_3818401521 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_property_3818401521_name._native_ptr(), 3818401521)
        assert(SceneReplicationConfig._method_add_property_3818401521 != nil)
        let _method_has_property_861721659_name = StringName(from: "has_property")
        self._method_has_property_861721659 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_property_861721659_name._native_ptr(), 861721659)
        assert(SceneReplicationConfig._method_has_property_861721659 != nil)
        let _method_remove_property_1348162250_name = StringName(from: "remove_property")
        self._method_remove_property_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_property_1348162250_name._native_ptr(), 1348162250)
        assert(SceneReplicationConfig._method_remove_property_1348162250 != nil)
        let _method_property_get_index_1382022557_name = StringName(from: "property_get_index")
        self._method_property_get_index_1382022557 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_property_get_index_1382022557_name._native_ptr(), 1382022557)
        assert(SceneReplicationConfig._method_property_get_index_1382022557 != nil)
        let _method_property_get_spawn_3456846888_name = StringName(from: "property_get_spawn")
        self._method_property_get_spawn_3456846888 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_property_get_spawn_3456846888_name._native_ptr(), 3456846888)
        assert(SceneReplicationConfig._method_property_get_spawn_3456846888 != nil)
        let _method_property_set_spawn_3868023870_name = StringName(from: "property_set_spawn")
        self._method_property_set_spawn_3868023870 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_property_set_spawn_3868023870_name._native_ptr(), 3868023870)
        assert(SceneReplicationConfig._method_property_set_spawn_3868023870 != nil)
        let _method_property_get_sync_3456846888_name = StringName(from: "property_get_sync")
        self._method_property_get_sync_3456846888 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_property_get_sync_3456846888_name._native_ptr(), 3456846888)
        assert(SceneReplicationConfig._method_property_get_sync_3456846888 != nil)
        let _method_property_set_sync_3868023870_name = StringName(from: "property_set_sync")
        self._method_property_set_sync_3868023870 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_property_set_sync_3868023870_name._native_ptr(), 3868023870)
        assert(SceneReplicationConfig._method_property_set_sync_3868023870 != nil)
    }

    public func get_properties() -> [NodePath] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_properties_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [NodePath](from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_property_3818401521,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_property_861721659,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func remove_property(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_property_1348162250,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_property_get_index_1382022557,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_property_get_spawn_3456846888,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_property_set_spawn_3868023870,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_property_get_sync_3456846888,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_property_set_sync_3868023870,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}