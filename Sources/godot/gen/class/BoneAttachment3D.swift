import godot_native

fileprivate var __godot_name_BoneAttachment3D: StringName! = nil

/// A node that will attach to a bone.
/// 
/// This node will allow you to select a bone for this node to attach to. The BoneAttachment3D node can copy the transform of the select bone, or can override the transform of the selected bone.
///  
/// The BoneAttachment3D node must either be a child of a [Skeleton3D] node or be given an external [Skeleton3D] to use in order to function properly.
open class BoneAttachment3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_BoneAttachment3D }

    static var _method_set_bone_name_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_idx_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_idx_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_on_bone_pose_update_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_override_pose_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_override_pose_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_external_skeleton_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_use_external_skeleton_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_external_skeleton_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_external_skeleton_4075236667: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_BoneAttachment3D = StringName(from: "BoneAttachment3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_bone_name_83702148_name = StringName(from: "set_bone_name")
        self._method_set_bone_name_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoneAttachment3D._native_ptr(), _method_set_bone_name_83702148_name._native_ptr(), 83702148)
        assert(BoneAttachment3D._method_set_bone_name_83702148 != nil)
        let _method_get_bone_name_201670096_name = StringName(from: "get_bone_name")
        self._method_get_bone_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoneAttachment3D._native_ptr(), _method_get_bone_name_201670096_name._native_ptr(), 201670096)
        assert(BoneAttachment3D._method_get_bone_name_201670096 != nil)
        let _method_set_bone_idx_1286410249_name = StringName(from: "set_bone_idx")
        self._method_set_bone_idx_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoneAttachment3D._native_ptr(), _method_set_bone_idx_1286410249_name._native_ptr(), 1286410249)
        assert(BoneAttachment3D._method_set_bone_idx_1286410249 != nil)
        let _method_get_bone_idx_3905245786_name = StringName(from: "get_bone_idx")
        self._method_get_bone_idx_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoneAttachment3D._native_ptr(), _method_get_bone_idx_3905245786_name._native_ptr(), 3905245786)
        assert(BoneAttachment3D._method_get_bone_idx_3905245786 != nil)
        let _method_on_bone_pose_update_1286410249_name = StringName(from: "on_bone_pose_update")
        self._method_on_bone_pose_update_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoneAttachment3D._native_ptr(), _method_on_bone_pose_update_1286410249_name._native_ptr(), 1286410249)
        assert(BoneAttachment3D._method_on_bone_pose_update_1286410249 != nil)
        let _method_set_override_pose_2586408642_name = StringName(from: "set_override_pose")
        self._method_set_override_pose_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoneAttachment3D._native_ptr(), _method_set_override_pose_2586408642_name._native_ptr(), 2586408642)
        assert(BoneAttachment3D._method_set_override_pose_2586408642 != nil)
        let _method_get_override_pose_36873697_name = StringName(from: "get_override_pose")
        self._method_get_override_pose_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoneAttachment3D._native_ptr(), _method_get_override_pose_36873697_name._native_ptr(), 36873697)
        assert(BoneAttachment3D._method_get_override_pose_36873697 != nil)
        let _method_set_use_external_skeleton_2586408642_name = StringName(from: "set_use_external_skeleton")
        self._method_set_use_external_skeleton_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoneAttachment3D._native_ptr(), _method_set_use_external_skeleton_2586408642_name._native_ptr(), 2586408642)
        assert(BoneAttachment3D._method_set_use_external_skeleton_2586408642 != nil)
        let _method_get_use_external_skeleton_36873697_name = StringName(from: "get_use_external_skeleton")
        self._method_get_use_external_skeleton_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoneAttachment3D._native_ptr(), _method_get_use_external_skeleton_36873697_name._native_ptr(), 36873697)
        assert(BoneAttachment3D._method_get_use_external_skeleton_36873697 != nil)
        let _method_set_external_skeleton_1348162250_name = StringName(from: "set_external_skeleton")
        self._method_set_external_skeleton_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoneAttachment3D._native_ptr(), _method_set_external_skeleton_1348162250_name._native_ptr(), 1348162250)
        assert(BoneAttachment3D._method_set_external_skeleton_1348162250 != nil)
        let _method_get_external_skeleton_4075236667_name = StringName(from: "get_external_skeleton")
        self._method_get_external_skeleton_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_BoneAttachment3D._native_ptr(), _method_get_external_skeleton_4075236667_name._native_ptr(), 4075236667)
        assert(BoneAttachment3D._method_get_external_skeleton_4075236667 != nil)
    }

    public func set_bone_name(bone_name: godot.String)  {
        let bone_name_native = bone_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_name_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bone_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_bone_idx(bone_idx: Int64)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_idx_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bone_idx() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_idx_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func on_bone_pose_update(bone_index: Int64)  {
        withUnsafePointer(to: bone_index) { bone_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_on_bone_pose_update_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_override_pose(override_pose: UInt8)  {
        withUnsafePointer(to: override_pose) { override_pose_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(override_pose_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_override_pose_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_override_pose() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_override_pose_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_use_external_skeleton(use_external_skeleton: UInt8)  {
        withUnsafePointer(to: use_external_skeleton) { use_external_skeleton_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_external_skeleton_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_external_skeleton_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_use_external_skeleton() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_use_external_skeleton_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_external_skeleton(external_skeleton: NodePath)  {
        let external_skeleton_native = external_skeleton._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(external_skeleton_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_external_skeleton_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_external_skeleton() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_external_skeleton_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
}