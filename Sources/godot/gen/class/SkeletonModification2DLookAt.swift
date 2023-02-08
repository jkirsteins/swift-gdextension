import godot_native

fileprivate var __godot_name_SkeletonModification2DLookAt: StringName! = nil

/// A modification that rotates a [Bone2D] node to look at a target.
/// 
/// This [SkeletonModification2D] rotates a bone to look a target. This is extremely helpful for moving character's head to look at the player, rotating a turret to look at a target, or any other case where you want to make a bone rotate towards something quickly and easily.
open class SkeletonModification2DLookAt : SkeletonModification2D {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonModification2DLookAt }

    static var _method_set_bone2d_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone2d_node_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_bone_index_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_index_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_target_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_node_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_additional_rotation_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_additional_rotation_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_enable_constraint_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enable_constraint_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_constraint_angle_min_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_constraint_angle_min_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_constraint_angle_max_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_constraint_angle_max_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_constraint_angle_invert_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_constraint_angle_invert_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SkeletonModification2DLookAt = StringName(from: "SkeletonModification2DLookAt")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_bone2d_node_1348162250_name = StringName(from: "set_bone2d_node")
        self._method_set_bone2d_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_set_bone2d_node_1348162250_name._native_ptr(), 1348162250)
        assert(SkeletonModification2DLookAt._method_set_bone2d_node_1348162250 != nil)
        let _method_get_bone2d_node_4075236667_name = StringName(from: "get_bone2d_node")
        self._method_get_bone2d_node_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_get_bone2d_node_4075236667_name._native_ptr(), 4075236667)
        assert(SkeletonModification2DLookAt._method_get_bone2d_node_4075236667 != nil)
        let _method_set_bone_index_1286410249_name = StringName(from: "set_bone_index")
        self._method_set_bone_index_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_set_bone_index_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonModification2DLookAt._method_set_bone_index_1286410249 != nil)
        let _method_get_bone_index_3905245786_name = StringName(from: "get_bone_index")
        self._method_get_bone_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_get_bone_index_3905245786_name._native_ptr(), 3905245786)
        assert(SkeletonModification2DLookAt._method_get_bone_index_3905245786 != nil)
        let _method_set_target_node_1348162250_name = StringName(from: "set_target_node")
        self._method_set_target_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_set_target_node_1348162250_name._native_ptr(), 1348162250)
        assert(SkeletonModification2DLookAt._method_set_target_node_1348162250 != nil)
        let _method_get_target_node_4075236667_name = StringName(from: "get_target_node")
        self._method_get_target_node_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_get_target_node_4075236667_name._native_ptr(), 4075236667)
        assert(SkeletonModification2DLookAt._method_get_target_node_4075236667 != nil)
        let _method_set_additional_rotation_373806689_name = StringName(from: "set_additional_rotation")
        self._method_set_additional_rotation_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_set_additional_rotation_373806689_name._native_ptr(), 373806689)
        assert(SkeletonModification2DLookAt._method_set_additional_rotation_373806689 != nil)
        let _method_get_additional_rotation_1740695150_name = StringName(from: "get_additional_rotation")
        self._method_get_additional_rotation_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_get_additional_rotation_1740695150_name._native_ptr(), 1740695150)
        assert(SkeletonModification2DLookAt._method_get_additional_rotation_1740695150 != nil)
        let _method_set_enable_constraint_2586408642_name = StringName(from: "set_enable_constraint")
        self._method_set_enable_constraint_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_set_enable_constraint_2586408642_name._native_ptr(), 2586408642)
        assert(SkeletonModification2DLookAt._method_set_enable_constraint_2586408642 != nil)
        let _method_get_enable_constraint_36873697_name = StringName(from: "get_enable_constraint")
        self._method_get_enable_constraint_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_get_enable_constraint_36873697_name._native_ptr(), 36873697)
        assert(SkeletonModification2DLookAt._method_get_enable_constraint_36873697 != nil)
        let _method_set_constraint_angle_min_373806689_name = StringName(from: "set_constraint_angle_min")
        self._method_set_constraint_angle_min_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_set_constraint_angle_min_373806689_name._native_ptr(), 373806689)
        assert(SkeletonModification2DLookAt._method_set_constraint_angle_min_373806689 != nil)
        let _method_get_constraint_angle_min_1740695150_name = StringName(from: "get_constraint_angle_min")
        self._method_get_constraint_angle_min_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_get_constraint_angle_min_1740695150_name._native_ptr(), 1740695150)
        assert(SkeletonModification2DLookAt._method_get_constraint_angle_min_1740695150 != nil)
        let _method_set_constraint_angle_max_373806689_name = StringName(from: "set_constraint_angle_max")
        self._method_set_constraint_angle_max_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_set_constraint_angle_max_373806689_name._native_ptr(), 373806689)
        assert(SkeletonModification2DLookAt._method_set_constraint_angle_max_373806689 != nil)
        let _method_get_constraint_angle_max_1740695150_name = StringName(from: "get_constraint_angle_max")
        self._method_get_constraint_angle_max_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_get_constraint_angle_max_1740695150_name._native_ptr(), 1740695150)
        assert(SkeletonModification2DLookAt._method_get_constraint_angle_max_1740695150 != nil)
        let _method_set_constraint_angle_invert_2586408642_name = StringName(from: "set_constraint_angle_invert")
        self._method_set_constraint_angle_invert_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_set_constraint_angle_invert_2586408642_name._native_ptr(), 2586408642)
        assert(SkeletonModification2DLookAt._method_set_constraint_angle_invert_2586408642 != nil)
        let _method_get_constraint_angle_invert_36873697_name = StringName(from: "get_constraint_angle_invert")
        self._method_get_constraint_angle_invert_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DLookAt._native_ptr(), _method_get_constraint_angle_invert_36873697_name._native_ptr(), 36873697)
        assert(SkeletonModification2DLookAt._method_get_constraint_angle_invert_36873697 != nil)
    }

    public func set_bone2d_node(bone2d_nodepath: NodePath)  {
        let bone2d_nodepath_native = bone2d_nodepath._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone2d_nodepath_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone2d_node_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bone2d_node() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone2d_node_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_bone_index(bone_idx: Int64)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bone_index_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bone_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_index_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_target_node(target_nodepath: NodePath)  {
        let target_nodepath_native = target_nodepath._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(target_nodepath_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_target_node_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_target_node() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_target_node_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func set_additional_rotation(rotation: Float64)  {
        withUnsafePointer(to: rotation) { rotation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rotation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_additional_rotation_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_additional_rotation() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_additional_rotation_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_enable_constraint(enable_constraint: UInt8)  {
        withUnsafePointer(to: enable_constraint) { enable_constraint_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_constraint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enable_constraint_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_enable_constraint() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enable_constraint_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_constraint_angle_min(angle_min: Float64)  {
        withUnsafePointer(to: angle_min) { angle_min_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angle_min_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constraint_angle_min_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_constraint_angle_min() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constraint_angle_min_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_constraint_angle_max(angle_max: Float64)  {
        withUnsafePointer(to: angle_max) { angle_max_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angle_max_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constraint_angle_max_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_constraint_angle_max() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constraint_angle_max_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_constraint_angle_invert(invert: UInt8)  {
        withUnsafePointer(to: invert) { invert_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(invert_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constraint_angle_invert_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_constraint_angle_invert() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constraint_angle_invert_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}