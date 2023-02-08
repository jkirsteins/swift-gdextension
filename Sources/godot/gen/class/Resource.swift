import godot_native

fileprivate var __godot_name_Resource: StringName! = nil

/// Base class for all resources.
/// 
/// Resource is the base class for all Godot-specific resource types, serving primarily as data containers. Since they inherit from [RefCounted], resources are reference-counted and freed when no longer in use. They can also be nested within other resources, and saved on disk. Once loaded from disk, further attempts to load a resource by [member resource_path] returns the same reference. [PackedScene], one of the most common [Object]s in a Godot project, is also a resource, uniquely capable of storing and instantiating the [Node]s it contains as many times as desired.
///  
/// In GDScript, resources can loaded from disk by their [member resource_path] using [method @GDScript.load] or [method @GDScript.preload].
///  
/// [b]Note:[/b] In C#, resources will not be freed instantly after they are no longer in use. Instead, garbage collection will run periodically and will free resources that are no longer in use. This means that unused resources will linger on for a while before being removed.
open class Resource : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_Resource }

    static var _method_set_path_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_take_over_path_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_name_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_local_to_scene_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_local_to_scene_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_local_scene_3160264692: GDExtensionMethodBindPtr! = nil
    static var _method_setup_local_to_scene_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_emit_changed_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_duplicate_482882304: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Resource = StringName(from: "Resource")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_path_83702148_name = StringName(from: "set_path")
        self._method_set_path_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_Resource._native_ptr(), _method_set_path_83702148_name._native_ptr(), 83702148)
        assert(Resource._method_set_path_83702148 != nil)
        let _method_take_over_path_83702148_name = StringName(from: "take_over_path")
        self._method_take_over_path_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_Resource._native_ptr(), _method_take_over_path_83702148_name._native_ptr(), 83702148)
        assert(Resource._method_take_over_path_83702148 != nil)
        let _method_get_path_201670096_name = StringName(from: "get_path")
        self._method_get_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_Resource._native_ptr(), _method_get_path_201670096_name._native_ptr(), 201670096)
        assert(Resource._method_get_path_201670096 != nil)
        let _method_set_name_83702148_name = StringName(from: "set_name")
        self._method_set_name_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_Resource._native_ptr(), _method_set_name_83702148_name._native_ptr(), 83702148)
        assert(Resource._method_set_name_83702148 != nil)
        let _method_get_name_201670096_name = StringName(from: "get_name")
        self._method_get_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_Resource._native_ptr(), _method_get_name_201670096_name._native_ptr(), 201670096)
        assert(Resource._method_get_name_201670096 != nil)
        let _method_get_rid_2944877500_name = StringName(from: "get_rid")
        self._method_get_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_Resource._native_ptr(), _method_get_rid_2944877500_name._native_ptr(), 2944877500)
        assert(Resource._method_get_rid_2944877500 != nil)
        let _method_set_local_to_scene_2586408642_name = StringName(from: "set_local_to_scene")
        self._method_set_local_to_scene_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_Resource._native_ptr(), _method_set_local_to_scene_2586408642_name._native_ptr(), 2586408642)
        assert(Resource._method_set_local_to_scene_2586408642 != nil)
        let _method_is_local_to_scene_36873697_name = StringName(from: "is_local_to_scene")
        self._method_is_local_to_scene_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_Resource._native_ptr(), _method_is_local_to_scene_36873697_name._native_ptr(), 36873697)
        assert(Resource._method_is_local_to_scene_36873697 != nil)
        let _method_get_local_scene_3160264692_name = StringName(from: "get_local_scene")
        self._method_get_local_scene_3160264692 = self.interface.pointee.classdb_get_method_bind(__godot_name_Resource._native_ptr(), _method_get_local_scene_3160264692_name._native_ptr(), 3160264692)
        assert(Resource._method_get_local_scene_3160264692 != nil)
        let _method_setup_local_to_scene_3218959716_name = StringName(from: "setup_local_to_scene")
        self._method_setup_local_to_scene_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Resource._native_ptr(), _method_setup_local_to_scene_3218959716_name._native_ptr(), 3218959716)
        assert(Resource._method_setup_local_to_scene_3218959716 != nil)
        let _method_emit_changed_3218959716_name = StringName(from: "emit_changed")
        self._method_emit_changed_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_Resource._native_ptr(), _method_emit_changed_3218959716_name._native_ptr(), 3218959716)
        assert(Resource._method_emit_changed_3218959716 != nil)
        let _method_duplicate_482882304_name = StringName(from: "duplicate")
        self._method_duplicate_482882304 = self.interface.pointee.classdb_get_method_bind(__godot_name_Resource._native_ptr(), _method_duplicate_482882304_name._native_ptr(), 482882304)
        assert(Resource._method_duplicate_482882304 != nil)
    }

    public func set_path(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func take_over_path(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_take_over_path_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_path() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_name(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_name_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rid_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func set_local_to_scene(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_local_to_scene_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_local_to_scene() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_local_to_scene_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_local_scene() -> Node {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_local_scene_3160264692,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
    }
    public func setup_local_to_scene()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_setup_local_to_scene_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func emit_changed()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_emit_changed_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func duplicate(subresources: UInt8) -> Resource {
        withUnsafePointer(to: subresources) { subresources_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subresources_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_duplicate_482882304,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(godot: __resPtr.pointee)
        }
    }
}