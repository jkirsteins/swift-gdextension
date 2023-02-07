import godot_native

fileprivate var __godot_name_ResourcePreloader: StringName! = nil

/// Preloads a list of resources inside a scene.
/// 
/// This node is used to preload sub-resources inside a scene, so when the scene is loaded, all the resources are ready to use and can be retrieved from the preloader. You can add the resources using the ResourcePreloader tab when the node is selected.
///  
/// GDScript has a simplified [method @GDScript.preload] built-in method which can be used in most situations, leaving the use of [ResourcePreloader] for more advanced scenarios.
public class ResourcePreloader : Node {

    

    public override class var __godot_name: StringName { __godot_name_ResourcePreloader }

    static var _method_add_resource_1168801743: GDExtensionMethodBindPtr! = nil
    static var _method_remove_resource_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_rename_resource_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_has_resource_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_get_resource_3742749261: GDExtensionMethodBindPtr! = nil
    static var _method_get_resource_list_1139954409: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ResourcePreloader = StringName(from: "ResourcePreloader")

        let _method_add_resource_1168801743_name = StringName(from: "add_resource")
        self._method_add_resource_1168801743 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_resource_1168801743_name._native_ptr(), 1168801743)
        assert(ResourcePreloader._method_add_resource_1168801743 != nil)
        let _method_remove_resource_3304788590_name = StringName(from: "remove_resource")
        self._method_remove_resource_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_resource_3304788590_name._native_ptr(), 3304788590)
        assert(ResourcePreloader._method_remove_resource_3304788590 != nil)
        let _method_rename_resource_3740211285_name = StringName(from: "rename_resource")
        self._method_rename_resource_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_resource_3740211285_name._native_ptr(), 3740211285)
        assert(ResourcePreloader._method_rename_resource_3740211285 != nil)
        let _method_has_resource_2619796661_name = StringName(from: "has_resource")
        self._method_has_resource_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_resource_2619796661_name._native_ptr(), 2619796661)
        assert(ResourcePreloader._method_has_resource_2619796661 != nil)
        let _method_get_resource_3742749261_name = StringName(from: "get_resource")
        self._method_get_resource_3742749261 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_resource_3742749261_name._native_ptr(), 3742749261)
        assert(ResourcePreloader._method_get_resource_3742749261 != nil)
        let _method_get_resource_list_1139954409_name = StringName(from: "get_resource_list")
        self._method_get_resource_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_resource_list_1139954409_name._native_ptr(), 1139954409)
        assert(ResourcePreloader._method_get_resource_list_1139954409 != nil)
    }

    public func add_resource(name: StringName, resource: Resource)  {
        let resource_native = resource._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(resource_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_resource_1168801743,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_resource(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_resource_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func rename_resource(name: StringName, newname: StringName)  {
        let newname_native = newname._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(newname_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_resource_3740211285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_resource(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_resource_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_resource(name: StringName) -> Resource {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_resource_3742749261,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(from: __resPtr.pointee)
    }
    public func get_resource_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_resource_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
}