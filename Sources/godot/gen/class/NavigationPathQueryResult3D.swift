import godot_native

fileprivate var __godot_name_NavigationPathQueryResult3D: StringName! = nil

/// Result from a [NavigationPathQueryParameters3D] navigation path query.
/// 
/// This class contains the result of a navigation path query from [method NavigationServer3D.query_path].
public class NavigationPathQueryResult3D : RefCounted {

    public enum PathSegmentType : Int32 {
        case PATH_SEGMENT_TYPE_REGION = 0
        case PATH_SEGMENT_TYPE_LINK = 1
    }

    public override class var __godot_name: StringName { __godot_name_NavigationPathQueryResult3D }

    static var _method_set_path_334873810: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_497664490: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_types_3614634198: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_types_1930428628: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_rids_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_rids_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_owner_ids_3709968205: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_owner_ids_235988956: GDExtensionMethodBindPtr! = nil
    static var _method_reset_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_NavigationPathQueryResult3D = StringName(from: "NavigationPathQueryResult3D")

        let _method_set_path_334873810_name = StringName(from: "set_path")
        self._method_set_path_334873810 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_334873810_name._native_ptr(), 334873810)
        assert(NavigationPathQueryResult3D._method_set_path_334873810 != nil)
        let _method_get_path_497664490_name = StringName(from: "get_path")
        self._method_get_path_497664490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_497664490_name._native_ptr(), 497664490)
        assert(NavigationPathQueryResult3D._method_get_path_497664490 != nil)
        let _method_set_path_types_3614634198_name = StringName(from: "set_path_types")
        self._method_set_path_types_3614634198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_types_3614634198_name._native_ptr(), 3614634198)
        assert(NavigationPathQueryResult3D._method_set_path_types_3614634198 != nil)
        let _method_get_path_types_1930428628_name = StringName(from: "get_path_types")
        self._method_get_path_types_1930428628 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_types_1930428628_name._native_ptr(), 1930428628)
        assert(NavigationPathQueryResult3D._method_get_path_types_1930428628 != nil)
        let _method_set_path_rids_381264803_name = StringName(from: "set_path_rids")
        self._method_set_path_rids_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_rids_381264803_name._native_ptr(), 381264803)
        assert(NavigationPathQueryResult3D._method_set_path_rids_381264803 != nil)
        let _method_get_path_rids_3995934104_name = StringName(from: "get_path_rids")
        self._method_get_path_rids_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_rids_3995934104_name._native_ptr(), 3995934104)
        assert(NavigationPathQueryResult3D._method_get_path_rids_3995934104 != nil)
        let _method_set_path_owner_ids_3709968205_name = StringName(from: "set_path_owner_ids")
        self._method_set_path_owner_ids_3709968205 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_owner_ids_3709968205_name._native_ptr(), 3709968205)
        assert(NavigationPathQueryResult3D._method_set_path_owner_ids_3709968205 != nil)
        let _method_get_path_owner_ids_235988956_name = StringName(from: "get_path_owner_ids")
        self._method_get_path_owner_ids_235988956 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_owner_ids_235988956_name._native_ptr(), 235988956)
        assert(NavigationPathQueryResult3D._method_get_path_owner_ids_235988956 != nil)
        let _method_reset_3218959716_name = StringName(from: "reset")
        self._method_reset_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reset_3218959716_name._native_ptr(), 3218959716)
        assert(NavigationPathQueryResult3D._method_reset_3218959716 != nil)
    }

    public func set_path(path: PackedVector3Array)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_334873810,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_path() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_497664490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
    }
    public func set_path_types(path_types: PackedInt32Array)  {
        let path_types_native = path_types._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_types_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_types_3614634198,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_path_types() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_types_1930428628,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func set_path_rids(path_rids: [RID])  {
        let path_rids_native = path_rids._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_rids_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_rids_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_path_rids() -> [RID] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_rids_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RID](from: __resPtr.pointee)
    }
    public func set_path_owner_ids(path_owner_ids: PackedInt64Array)  {
        let path_owner_ids_native = path_owner_ids._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_owner_ids_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_owner_ids_3709968205,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_path_owner_ids() -> PackedInt64Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_owner_ids_235988956,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(from: __resPtr.pointee)
    }
    public func reset()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reset_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}