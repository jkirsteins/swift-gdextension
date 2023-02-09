import godot_native

fileprivate var __godot_name_EncodedObjectAsID: StringName! = nil

/// Holds a reference to an [Object]'s instance ID.
/// 
/// Utility class which holds a reference to the internal identifier of an [Object] instance, as given by [method Object.get_instance_id]. This ID can then be used to retrieve the object instance with [method @GlobalScope.instance_from_id].
///  
/// This class is used internally by the editor inspector and script debugger, but can also be used in plugins to pass and display objects as their IDs.
open class EncodedObjectAsID : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EncodedObjectAsID }

    static var _method_set_object_id_1286410249: StringName! = nil
    static var _method_get_object_id_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_EncodedObjectAsID == nil)
        __godot_name_EncodedObjectAsID = StringName(from: "EncodedObjectAsID")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_object_id_1286410249 = StringName(from: "set_object_id")
        assert(self._method_set_object_id_1286410249 != nil)
        self._method_get_object_id_3905245786 = StringName(from: "get_object_id")
        assert(self._method_get_object_id_3905245786 != nil)
    }

    public func set_object_id(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_object_id_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_object_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_object_id_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}