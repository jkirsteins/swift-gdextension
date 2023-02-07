import godot_native

fileprivate var __godot_name_BoneMap: StringName! = nil

/// Bone map for retargeting.
/// 
/// This class contains a hashmap that uses a list of bone names in [SkeletonProfile] as key names.
///  
/// By assigning the actual [Skeleton3D] bone name as the key value, it maps the [Skeleton3D] to the [SkeletonProfile].
public class BoneMap : Resource {

    

    public override class var __godot_name: StringName { __godot_name_BoneMap }

    static var _method_get_profile_4291782652: GDExtensionMethodBindPtr! = nil
    static var _method_set_profile_3870374136: GDExtensionMethodBindPtr! = nil
    static var _method_get_skeleton_bone_name_1965194235: GDExtensionMethodBindPtr! = nil
    static var _method_set_skeleton_bone_name_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_find_profile_bone_name_1965194235: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_BoneMap = StringName(from: "BoneMap")

        let _method_get_profile_4291782652_name = StringName(from: "get_profile")
        self._method_get_profile_4291782652 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_profile_4291782652_name._native_ptr(), 4291782652)
        assert(BoneMap._method_get_profile_4291782652 != nil)
        let _method_set_profile_3870374136_name = StringName(from: "set_profile")
        self._method_set_profile_3870374136 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_profile_3870374136_name._native_ptr(), 3870374136)
        assert(BoneMap._method_set_profile_3870374136 != nil)
        let _method_get_skeleton_bone_name_1965194235_name = StringName(from: "get_skeleton_bone_name")
        self._method_get_skeleton_bone_name_1965194235 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skeleton_bone_name_1965194235_name._native_ptr(), 1965194235)
        assert(BoneMap._method_get_skeleton_bone_name_1965194235 != nil)
        let _method_set_skeleton_bone_name_3740211285_name = StringName(from: "set_skeleton_bone_name")
        self._method_set_skeleton_bone_name_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_skeleton_bone_name_3740211285_name._native_ptr(), 3740211285)
        assert(BoneMap._method_set_skeleton_bone_name_3740211285 != nil)
        let _method_find_profile_bone_name_1965194235_name = StringName(from: "find_profile_bone_name")
        self._method_find_profile_bone_name_1965194235 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_find_profile_bone_name_1965194235_name._native_ptr(), 1965194235)
        assert(BoneMap._method_find_profile_bone_name_1965194235 != nil)
    }

    public func get_profile() -> SkeletonProfile {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_profile_4291782652,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SkeletonProfile(from: __resPtr.pointee)
    }
    public func set_profile(profile: SkeletonProfile)  {
        let profile_native = profile._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(profile_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_profile_3870374136,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skeleton_bone_name_1965194235,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_skeleton_bone_name_3740211285,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_profile_bone_name_1965194235,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
}