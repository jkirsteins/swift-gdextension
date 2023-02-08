import godot_native

fileprivate var __godot_name_SkeletonProfile: StringName! = nil

/// Profile of a virtual skeleton used as a target for retargeting.
/// 
/// This resource is used in [EditorScenePostImport]. Some parameters are referring to bones in [Skeleton3D], [Skin], [Animation], and some other nodes are rewritten based on the parameters of [SkeletonProfile].
///  
/// [b]Note:[/b] These parameters need to be set only when creating a custom profile. In [SkeletonProfileHumanoid], they are defined internally as read-only values.
open class SkeletonProfile : Resource {

    public enum TailDirection : Int32 {
        case TAIL_DIRECTION_AVERAGE_CHILDREN = 0
        case TAIL_DIRECTION_SPECIFIC_CHILD = 1
        case TAIL_DIRECTION_END = 2
    }

    public override class var __godot_name: StringName { __godot_name_SkeletonProfile }

    static var _method_set_root_bone_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_root_bone_2737447660: GDExtensionMethodBindPtr! = nil
    static var _method_set_scale_base_bone_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_scale_base_bone_2737447660: GDExtensionMethodBindPtr! = nil
    static var _method_set_group_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_group_size_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_group_name_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_set_group_name_3780747571: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3536238170: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_666127730: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_size_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_find_bone_2458036349: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_name_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_name_3780747571: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_parent_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_parent_3780747571: GDExtensionMethodBindPtr! = nil
    static var _method_get_tail_direction_2675997574: GDExtensionMethodBindPtr! = nil
    static var _method_set_tail_direction_1231951015: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_tail_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_tail_3780747571: GDExtensionMethodBindPtr! = nil
    static var _method_get_reference_pose_1965739696: GDExtensionMethodBindPtr! = nil
    static var _method_set_reference_pose_3616898986: GDExtensionMethodBindPtr! = nil
    static var _method_get_handle_offset_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_set_handle_offset_163021252: GDExtensionMethodBindPtr! = nil
    static var _method_get_group_659327637: GDExtensionMethodBindPtr! = nil
    static var _method_set_group_3780747571: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SkeletonProfile = StringName(from: "SkeletonProfile")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_root_bone_3304788590_name = StringName(from: "set_root_bone")
        self._method_set_root_bone_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_root_bone_3304788590_name._native_ptr(), 3304788590)
        assert(SkeletonProfile._method_set_root_bone_3304788590 != nil)
        let _method_get_root_bone_2737447660_name = StringName(from: "get_root_bone")
        self._method_get_root_bone_2737447660 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_root_bone_2737447660_name._native_ptr(), 2737447660)
        assert(SkeletonProfile._method_get_root_bone_2737447660 != nil)
        let _method_set_scale_base_bone_3304788590_name = StringName(from: "set_scale_base_bone")
        self._method_set_scale_base_bone_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_scale_base_bone_3304788590_name._native_ptr(), 3304788590)
        assert(SkeletonProfile._method_set_scale_base_bone_3304788590 != nil)
        let _method_get_scale_base_bone_2737447660_name = StringName(from: "get_scale_base_bone")
        self._method_get_scale_base_bone_2737447660 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_scale_base_bone_2737447660_name._native_ptr(), 2737447660)
        assert(SkeletonProfile._method_get_scale_base_bone_2737447660 != nil)
        let _method_set_group_size_1286410249_name = StringName(from: "set_group_size")
        self._method_set_group_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_group_size_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonProfile._method_set_group_size_1286410249 != nil)
        let _method_get_group_size_2455072627_name = StringName(from: "get_group_size")
        self._method_get_group_size_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_group_size_2455072627_name._native_ptr(), 2455072627)
        assert(SkeletonProfile._method_get_group_size_2455072627 != nil)
        let _method_get_group_name_659327637_name = StringName(from: "get_group_name")
        self._method_get_group_name_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_group_name_659327637_name._native_ptr(), 659327637)
        assert(SkeletonProfile._method_get_group_name_659327637 != nil)
        let _method_set_group_name_3780747571_name = StringName(from: "set_group_name")
        self._method_set_group_name_3780747571 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_group_name_3780747571_name._native_ptr(), 3780747571)
        assert(SkeletonProfile._method_set_group_name_3780747571 != nil)
        let _method_get_texture_3536238170_name = StringName(from: "get_texture")
        self._method_get_texture_3536238170 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_texture_3536238170_name._native_ptr(), 3536238170)
        assert(SkeletonProfile._method_get_texture_3536238170 != nil)
        let _method_set_texture_666127730_name = StringName(from: "set_texture")
        self._method_set_texture_666127730 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_texture_666127730_name._native_ptr(), 666127730)
        assert(SkeletonProfile._method_set_texture_666127730 != nil)
        let _method_set_bone_size_1286410249_name = StringName(from: "set_bone_size")
        self._method_set_bone_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_bone_size_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonProfile._method_set_bone_size_1286410249 != nil)
        let _method_get_bone_size_2455072627_name = StringName(from: "get_bone_size")
        self._method_get_bone_size_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_bone_size_2455072627_name._native_ptr(), 2455072627)
        assert(SkeletonProfile._method_get_bone_size_2455072627 != nil)
        let _method_find_bone_2458036349_name = StringName(from: "find_bone")
        self._method_find_bone_2458036349 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_find_bone_2458036349_name._native_ptr(), 2458036349)
        assert(SkeletonProfile._method_find_bone_2458036349 != nil)
        let _method_get_bone_name_659327637_name = StringName(from: "get_bone_name")
        self._method_get_bone_name_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_bone_name_659327637_name._native_ptr(), 659327637)
        assert(SkeletonProfile._method_get_bone_name_659327637 != nil)
        let _method_set_bone_name_3780747571_name = StringName(from: "set_bone_name")
        self._method_set_bone_name_3780747571 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_bone_name_3780747571_name._native_ptr(), 3780747571)
        assert(SkeletonProfile._method_set_bone_name_3780747571 != nil)
        let _method_get_bone_parent_659327637_name = StringName(from: "get_bone_parent")
        self._method_get_bone_parent_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_bone_parent_659327637_name._native_ptr(), 659327637)
        assert(SkeletonProfile._method_get_bone_parent_659327637 != nil)
        let _method_set_bone_parent_3780747571_name = StringName(from: "set_bone_parent")
        self._method_set_bone_parent_3780747571 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_bone_parent_3780747571_name._native_ptr(), 3780747571)
        assert(SkeletonProfile._method_set_bone_parent_3780747571 != nil)
        let _method_get_tail_direction_2675997574_name = StringName(from: "get_tail_direction")
        self._method_get_tail_direction_2675997574 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_tail_direction_2675997574_name._native_ptr(), 2675997574)
        assert(SkeletonProfile._method_get_tail_direction_2675997574 != nil)
        let _method_set_tail_direction_1231951015_name = StringName(from: "set_tail_direction")
        self._method_set_tail_direction_1231951015 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_tail_direction_1231951015_name._native_ptr(), 1231951015)
        assert(SkeletonProfile._method_set_tail_direction_1231951015 != nil)
        let _method_get_bone_tail_659327637_name = StringName(from: "get_bone_tail")
        self._method_get_bone_tail_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_bone_tail_659327637_name._native_ptr(), 659327637)
        assert(SkeletonProfile._method_get_bone_tail_659327637 != nil)
        let _method_set_bone_tail_3780747571_name = StringName(from: "set_bone_tail")
        self._method_set_bone_tail_3780747571 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_bone_tail_3780747571_name._native_ptr(), 3780747571)
        assert(SkeletonProfile._method_set_bone_tail_3780747571 != nil)
        let _method_get_reference_pose_1965739696_name = StringName(from: "get_reference_pose")
        self._method_get_reference_pose_1965739696 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_reference_pose_1965739696_name._native_ptr(), 1965739696)
        assert(SkeletonProfile._method_get_reference_pose_1965739696 != nil)
        let _method_set_reference_pose_3616898986_name = StringName(from: "set_reference_pose")
        self._method_set_reference_pose_3616898986 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_reference_pose_3616898986_name._native_ptr(), 3616898986)
        assert(SkeletonProfile._method_set_reference_pose_3616898986 != nil)
        let _method_get_handle_offset_2299179447_name = StringName(from: "get_handle_offset")
        self._method_get_handle_offset_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_handle_offset_2299179447_name._native_ptr(), 2299179447)
        assert(SkeletonProfile._method_get_handle_offset_2299179447 != nil)
        let _method_set_handle_offset_163021252_name = StringName(from: "set_handle_offset")
        self._method_set_handle_offset_163021252 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_handle_offset_163021252_name._native_ptr(), 163021252)
        assert(SkeletonProfile._method_set_handle_offset_163021252 != nil)
        let _method_get_group_659327637_name = StringName(from: "get_group")
        self._method_get_group_659327637 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_get_group_659327637_name._native_ptr(), 659327637)
        assert(SkeletonProfile._method_get_group_659327637 != nil)
        let _method_set_group_3780747571_name = StringName(from: "set_group")
        self._method_set_group_3780747571 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonProfile._native_ptr(), _method_set_group_3780747571_name._native_ptr(), 3780747571)
        assert(SkeletonProfile._method_set_group_3780747571 != nil)
    }

    public func set_root_bone(bone_name: StringName)  {
        let bone_name_native = bone_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_root_bone_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_root_bone() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_root_bone_2737447660,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func set_scale_base_bone(bone_name: StringName)  {
        let bone_name_native = bone_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scale_base_bone_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scale_base_bone() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scale_base_bone_2737447660,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func set_group_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_group_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_group_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_group_size_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_group_name(group_idx: Int64) -> StringName {
        withUnsafePointer(to: group_idx) { group_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_group_name_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func set_group_name(group_idx: Int64, group_name: StringName)  {
        withUnsafePointer(to: group_idx) { group_idx_native in
        let group_name_native = group_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_idx_native), .init(group_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_group_name_3780747571,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture(group_idx: Int64) -> Texture2D {
        withUnsafePointer(to: group_idx) { group_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_3536238170,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
        }
    }
    public func set_texture(group_idx: Int64, texture: Texture2D)  {
        withUnsafePointer(to: group_idx) { group_idx_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_idx_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_666127730,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_bone_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bone_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_size_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func find_bone(bone_name: StringName) -> Int64 {
        let bone_name_native = bone_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_bone_2458036349,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_bone_name(bone_idx: Int64) -> StringName {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_name_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func set_bone_name(bone_idx: Int64, bone_name: StringName)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let bone_name_native = bone_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(bone_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_name_3780747571,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bone_parent(bone_idx: Int64) -> StringName {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_parent_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func set_bone_parent(bone_idx: Int64, bone_parent: StringName)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let bone_parent_native = bone_parent._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(bone_parent_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_parent_3780747571,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tail_direction(bone_idx: Int64) -> SkeletonProfile.TailDirection {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tail_direction_2675997574,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SkeletonProfile.TailDirection(godot: __resPtr.pointee)
        }
    }
    public func set_tail_direction(bone_idx: Int64, tail_direction: SkeletonProfile.TailDirection)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        withUnsafePointer(to: tail_direction.rawValue) { tail_direction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(tail_direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tail_direction_1231951015,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_bone_tail(bone_idx: Int64) -> StringName {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_tail_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func set_bone_tail(bone_idx: Int64, bone_tail: StringName)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let bone_tail_native = bone_tail._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(bone_tail_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_tail_3780747571,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_reference_pose(bone_idx: Int64) -> Transform3D {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_reference_pose_1965739696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(godot: __resPtr.pointee)
        }
    }
    public func set_reference_pose(bone_idx: Int64, bone_name: Transform3D)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let bone_name_native = bone_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(bone_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_reference_pose_3616898986,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_handle_offset(bone_idx: Int64) -> Vector2 {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_handle_offset_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func set_handle_offset(bone_idx: Int64, handle_offset: Vector2)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let handle_offset_native = handle_offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(handle_offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_handle_offset_163021252,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_group(bone_idx: Int64) -> StringName {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_group_659327637,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func set_group(bone_idx: Int64, group: StringName)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let group_native = group._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(group_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_group_3780747571,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}