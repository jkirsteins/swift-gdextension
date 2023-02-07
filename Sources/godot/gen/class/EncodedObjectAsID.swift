import godot_native

fileprivate var __godot_name_EncodedObjectAsID: StringName! = nil

/// Holds a reference to an [Object]'s instance ID.
/// 
/// Utility class which holds a reference to the internal identifier of an [Object] instance, as given by [method Object.get_instance_id]. This ID can then be used to retrieve the object instance with [method @GlobalScope.instance_from_id].
///  
/// This class is used internally by the editor inspector and script debugger, but can also be used in plugins to pass and display objects as their IDs.
public class EncodedObjectAsID : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EncodedObjectAsID }

    static var _method_set_object_id_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_object_id_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EncodedObjectAsID = StringName(from: "EncodedObjectAsID")

        let _method_set_object_id_1286410249_name = StringName(from: "set_object_id")
        self._method_set_object_id_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_object_id_1286410249_name._native_ptr(), 1286410249)
        assert(EncodedObjectAsID._method_set_object_id_1286410249 != nil)
        let _method_get_object_id_3905245786_name = StringName(from: "get_object_id")
        self._method_get_object_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_object_id_3905245786_name._native_ptr(), 3905245786)
        assert(EncodedObjectAsID._method_get_object_id_3905245786 != nil)
    }

    public func set_object_id(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_object_id_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_object_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}