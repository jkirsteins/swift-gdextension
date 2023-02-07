import godot_native

fileprivate var __godot_name_PackedDataContainer: StringName! = nil

/// 
/// 
/// 
public class PackedDataContainer : Resource {

    

    public override class var __godot_name: StringName { __godot_name_PackedDataContainer }

    static var _method_pack_966674026: GDExtensionMethodBindPtr! = nil
    static var _method_size_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PackedDataContainer = StringName(from: "PackedDataContainer")

        let _method_pack_966674026_name = StringName(from: "pack")
        self._method_pack_966674026 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_pack_966674026_name._native_ptr(), 966674026)
        assert(PackedDataContainer._method_pack_966674026 != nil)
        let _method_size_3905245786_name = StringName(from: "size")
        self._method_size_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_size_3905245786_name._native_ptr(), 3905245786)
        assert(PackedDataContainer._method_size_3905245786 != nil)
    }

    public func pack(value: Variant) -> Error {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pack_966674026,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
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
            return Int64(from: __resPtr.pointee)
    }
}