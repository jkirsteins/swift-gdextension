import godot_native

fileprivate var __godot_name_ResourceUID: StringName! = nil

/// Singleton for managing a cache of resource UIDs within a project.
/// 
/// Resources can not only be referenced using their resource paths [code]res://[/code], but alternatively through a unique identifier specified via [code]uid://[/code].
///  
/// Using UIDs allows for the engine to keep references between resources intact, even if the files get renamed or moved.
///  
/// This singleton is responsible for keeping track of all registered resource UIDs of a project, generating new UIDs and converting between the string and integer representation.
open class ResourceUID : Object {

    

    public override class var __godot_name: StringName { __godot_name_ResourceUID }

    static var _method_id_to_text_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_text_to_id_1321353865: GDExtensionMethodBindPtr! = nil
    static var _method_create_id_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_has_id_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_add_id_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_set_id_501894301: GDExtensionMethodBindPtr! = nil
    static var _method_get_id_path_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_remove_id_1286410249: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ResourceUID = StringName(from: "ResourceUID")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_id_to_text_844755477_name = StringName(from: "id_to_text")
        self._method_id_to_text_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_ResourceUID._native_ptr(), _method_id_to_text_844755477_name._native_ptr(), 844755477)
        assert(ResourceUID._method_id_to_text_844755477 != nil)
        let _method_text_to_id_1321353865_name = StringName(from: "text_to_id")
        self._method_text_to_id_1321353865 = self.interface.pointee.classdb_get_method_bind(__godot_name_ResourceUID._native_ptr(), _method_text_to_id_1321353865_name._native_ptr(), 1321353865)
        assert(ResourceUID._method_text_to_id_1321353865 != nil)
        let _method_create_id_2455072627_name = StringName(from: "create_id")
        self._method_create_id_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_ResourceUID._native_ptr(), _method_create_id_2455072627_name._native_ptr(), 2455072627)
        assert(ResourceUID._method_create_id_2455072627 != nil)
        let _method_has_id_1116898809_name = StringName(from: "has_id")
        self._method_has_id_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_ResourceUID._native_ptr(), _method_has_id_1116898809_name._native_ptr(), 1116898809)
        assert(ResourceUID._method_has_id_1116898809 != nil)
        let _method_add_id_501894301_name = StringName(from: "add_id")
        self._method_add_id_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name_ResourceUID._native_ptr(), _method_add_id_501894301_name._native_ptr(), 501894301)
        assert(ResourceUID._method_add_id_501894301 != nil)
        let _method_set_id_501894301_name = StringName(from: "set_id")
        self._method_set_id_501894301 = self.interface.pointee.classdb_get_method_bind(__godot_name_ResourceUID._native_ptr(), _method_set_id_501894301_name._native_ptr(), 501894301)
        assert(ResourceUID._method_set_id_501894301 != nil)
        let _method_get_id_path_844755477_name = StringName(from: "get_id_path")
        self._method_get_id_path_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_ResourceUID._native_ptr(), _method_get_id_path_844755477_name._native_ptr(), 844755477)
        assert(ResourceUID._method_get_id_path_844755477 != nil)
        let _method_remove_id_1286410249_name = StringName(from: "remove_id")
        self._method_remove_id_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_ResourceUID._native_ptr(), _method_remove_id_1286410249_name._native_ptr(), 1286410249)
        assert(ResourceUID._method_remove_id_1286410249 != nil)
    }

    public func id_to_text(id: Int64) -> godot.String {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_id_to_text_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func text_to_id(text_id: godot.String) -> Int64 {
        let text_id_native = text_id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_text_to_id_1321353865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func create_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_id_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func has_id(id: Int64) -> UInt8 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_id_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func add_id(id: Int64, path: godot.String)  {
        withUnsafePointer(to: id) { id_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_id_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_id(id: Int64, path: godot.String)  {
        withUnsafePointer(to: id) { id_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_id_501894301,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_id_path(id: Int64) -> godot.String {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_id_path_844755477,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func remove_id(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_id_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}