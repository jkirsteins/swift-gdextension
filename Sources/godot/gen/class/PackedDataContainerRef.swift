import godot_native

fileprivate var __godot_name_PackedDataContainerRef: StringName! = nil

/// Reference-counted version of [PackedDataContainer].
/// 
/// 
open class PackedDataContainerRef : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_PackedDataContainerRef }

    static var _method_size_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PackedDataContainerRef = StringName(from: "PackedDataContainerRef")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_size_3905245786_name = StringName(from: "size")
        self._method_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_PackedDataContainerRef._native_ptr(), _method_size_3905245786_name._native_ptr(), 3905245786)
        assert(PackedDataContainerRef._method_size_3905245786 != nil)
    }

    public func size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_size_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}