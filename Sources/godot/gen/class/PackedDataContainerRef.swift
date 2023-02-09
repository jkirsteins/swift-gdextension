import godot_native

fileprivate var __godot_name_PackedDataContainerRef: StringName! = nil

/// Reference-counted version of [PackedDataContainer].
/// 
/// 
open class PackedDataContainerRef : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_PackedDataContainerRef }

    static var _method_size_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PackedDataContainerRef == nil)
        __godot_name_PackedDataContainerRef = StringName(from: "PackedDataContainerRef")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_size_3905245786 = StringName(from: "size")
        assert(self._method_size_3905245786 != nil)
    }

    public func size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_size_3905245786._native_ptr(),
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