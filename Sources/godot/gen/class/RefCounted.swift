import godot_native

fileprivate var __godot_name_RefCounted: StringName! = nil

/// Base class for reference-counted objects.
/// 
/// Base class for any object that keeps a reference count. [Resource] and many other helper objects inherit this class.
///  
/// Unlike other [Object] types, [RefCounted]s keep an internal reference counter so that they are automatically released when no longer in use, and only then. [RefCounted]s therefore do not need to be freed manually with [method Object.free].
///  
/// In the vast majority of use cases, instantiating and using [RefCounted]-derived types is all you need to do. The methods provided in this class are only for advanced users, and can cause issues if misused.
///  
/// [b]Note:[/b] In C#, reference-counted objects will not be freed instantly after they are no longer in use. Instead, garbage collection will run periodically and will free reference-counted objects that are no longer in use. This means that unused ones will linger on for a while before being removed.
open class RefCounted : Object {

    

    public override class var __godot_name: StringName { __godot_name_RefCounted }

    static var _method_init_ref_2240911060: StringName! = nil
    static var _method_reference_2240911060: StringName! = nil
    static var _method_unreference_2240911060: StringName! = nil
    static var _method_get_reference_count_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RefCounted == nil)
        __godot_name_RefCounted = StringName(from: "RefCounted")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_init_ref_2240911060 = StringName(from: "init_ref")
        assert(self._method_init_ref_2240911060 != nil)
        self._method_reference_2240911060 = StringName(from: "reference")
        assert(self._method_reference_2240911060 != nil)
        self._method_unreference_2240911060 = StringName(from: "unreference")
        assert(self._method_unreference_2240911060 != nil)
        self._method_get_reference_count_3905245786 = StringName(from: "get_reference_count")
        assert(self._method_get_reference_count_3905245786 != nil)
    }

    public func init_ref() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_init_ref_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func reference() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_reference_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func unreference() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_unreference_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_reference_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_reference_count_3905245786._native_ptr(),
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