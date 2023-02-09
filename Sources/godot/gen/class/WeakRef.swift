import godot_native

fileprivate var __godot_name_WeakRef: StringName! = nil

/// Holds an [Object], but does not contribute to the reference count if the object is a reference.
/// 
/// A weakref can hold a [RefCounted], without contributing to the reference counter. A weakref can be created from an [Object] using [method @GlobalScope.weakref]. If this object is not a reference, weakref still works, however, it does not have any effect on the object. Weakrefs are useful in cases where multiple classes have variables that refer to each other. Without weakrefs, using these classes could lead to memory leaks, since both references keep each other from being released. Making part of the variables a weakref can prevent this cyclic dependency, and allows the references to be released.
open class WeakRef : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_WeakRef }

    static var _method_get_ref_1214101251: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_WeakRef == nil)
        __godot_name_WeakRef = StringName(from: "WeakRef")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_ref_1214101251 = StringName(from: "get_ref")
        assert(self._method_get_ref_1214101251 != nil)
    }

    public func get_ref() -> Variant {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ref_1214101251._native_ptr(),
                    1214101251)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
}