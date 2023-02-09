import godot_native

fileprivate var __godot_name_NavigationPathQueryResult2D: StringName! = nil

/// Result from a [NavigationPathQueryParameters2D] navigation path query.
/// 
/// This class contains the result of a navigation path query from [method NavigationServer2D.query_path].
open class NavigationPathQueryResult2D : RefCounted {

    public enum PathSegmentType : Int32 {
        case PATH_SEGMENT_TYPE_REGION = 0
        case PATH_SEGMENT_TYPE_LINK = 1
    }

    public override class var __godot_name: StringName { __godot_name_NavigationPathQueryResult2D }

    static var _method_set_path_1509147220: StringName! = nil
    static var _method_get_path_2961356807: StringName! = nil
    static var _method_set_path_types_3614634198: StringName! = nil
    static var _method_get_path_types_1930428628: StringName! = nil
    static var _method_set_path_rids_381264803: StringName! = nil
    static var _method_get_path_rids_3995934104: StringName! = nil
    static var _method_set_path_owner_ids_3709968205: StringName! = nil
    static var _method_get_path_owner_ids_235988956: StringName! = nil
    static var _method_reset_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_NavigationPathQueryResult2D == nil)
        __godot_name_NavigationPathQueryResult2D = StringName(from: "NavigationPathQueryResult2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_path_1509147220 = StringName(from: "set_path")
        assert(self._method_set_path_1509147220 != nil)
        self._method_get_path_2961356807 = StringName(from: "get_path")
        assert(self._method_get_path_2961356807 != nil)
        self._method_set_path_types_3614634198 = StringName(from: "set_path_types")
        assert(self._method_set_path_types_3614634198 != nil)
        self._method_get_path_types_1930428628 = StringName(from: "get_path_types")
        assert(self._method_get_path_types_1930428628 != nil)
        self._method_set_path_rids_381264803 = StringName(from: "set_path_rids")
        assert(self._method_set_path_rids_381264803 != nil)
        self._method_get_path_rids_3995934104 = StringName(from: "get_path_rids")
        assert(self._method_get_path_rids_3995934104 != nil)
        self._method_set_path_owner_ids_3709968205 = StringName(from: "set_path_owner_ids")
        assert(self._method_set_path_owner_ids_3709968205 != nil)
        self._method_get_path_owner_ids_235988956 = StringName(from: "get_path_owner_ids")
        assert(self._method_get_path_owner_ids_235988956 != nil)
        self._method_reset_3218959716 = StringName(from: "reset")
        assert(self._method_reset_3218959716 != nil)
    }

    public func set_path(path: PackedVector2Array)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_path_1509147220._native_ptr(),
                    1509147220)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_path() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_path_2961356807._native_ptr(),
                    2961356807)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
    public func set_path_types(path_types: PackedInt32Array)  {
        let path_types_native = path_types._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_types_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_path_types_3614634198._native_ptr(),
                    3614634198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_path_types_1930428628._native_ptr(),
                    1930428628)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_path_rids(path_rids: [RID])  {
        let path_rids_native = path_rids._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_rids_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_path_rids_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_path_rids_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RID](godot: __resPtr.pointee)
    }
    public func set_path_owner_ids(path_owner_ids: PackedInt64Array)  {
        let path_owner_ids_native = path_owner_ids._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_owner_ids_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_path_owner_ids_3709968205._native_ptr(),
                    3709968205)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_path_owner_ids_235988956._native_ptr(),
                    235988956)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(godot: __resPtr.pointee)
    }
    public func reset()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_reset_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}