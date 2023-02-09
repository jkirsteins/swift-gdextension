import godot_native

fileprivate var __godot_name_BoneMap: StringName! = nil

/// Bone map for retargeting.
/// 
/// This class contains a hashmap that uses a list of bone names in [SkeletonProfile] as key names.
///  
/// By assigning the actual [Skeleton3D] bone name as the key value, it maps the [Skeleton3D] to the [SkeletonProfile].
open class BoneMap : Resource {

    

    public override class var __godot_name: StringName { __godot_name_BoneMap }

    static var _method_get_profile_4291782652: StringName! = nil
    static var _method_set_profile_3870374136: StringName! = nil
    static var _method_get_skeleton_bone_name_1965194235: StringName! = nil
    static var _method_set_skeleton_bone_name_3740211285: StringName! = nil
    static var _method_find_profile_bone_name_1965194235: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_BoneMap == nil)
        __godot_name_BoneMap = StringName(from: "BoneMap")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_profile_4291782652 = StringName(from: "get_profile")
        assert(self._method_get_profile_4291782652 != nil)
        self._method_set_profile_3870374136 = StringName(from: "set_profile")
        assert(self._method_set_profile_3870374136 != nil)
        self._method_get_skeleton_bone_name_1965194235 = StringName(from: "get_skeleton_bone_name")
        assert(self._method_get_skeleton_bone_name_1965194235 != nil)
        self._method_set_skeleton_bone_name_3740211285 = StringName(from: "set_skeleton_bone_name")
        assert(self._method_set_skeleton_bone_name_3740211285 != nil)
        self._method_find_profile_bone_name_1965194235 = StringName(from: "find_profile_bone_name")
        assert(self._method_find_profile_bone_name_1965194235 != nil)
    }

    public func get_profile() -> SkeletonProfile {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_profile_4291782652._native_ptr(),
                    4291782652)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SkeletonProfile(godot: __resPtr.pointee)
    }
    public func set_profile(profile: SkeletonProfile)  {
        let profile_native = profile._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(profile_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_profile_3870374136._native_ptr(),
                    3870374136)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skeleton_bone_name(profile_bone_name: StringName) -> StringName {
        let profile_bone_name_native = profile_bone_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(profile_bone_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_skeleton_bone_name_1965194235._native_ptr(),
                    1965194235)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func set_skeleton_bone_name(profile_bone_name: StringName, skeleton_bone_name: StringName)  {
        let skeleton_bone_name_native = skeleton_bone_name._native_ptr()
        let profile_bone_name_native = profile_bone_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(profile_bone_name_native), .init(skeleton_bone_name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_skeleton_bone_name_3740211285._native_ptr(),
                    3740211285)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func find_profile_bone_name(skeleton_bone_name: StringName) -> StringName {
        let skeleton_bone_name_native = skeleton_bone_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_bone_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_find_profile_bone_name_1965194235._native_ptr(),
                    1965194235)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
}