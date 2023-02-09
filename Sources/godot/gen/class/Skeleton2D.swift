import godot_native

fileprivate var __godot_name_Skeleton2D: StringName! = nil

/// Skeleton for 2D characters and animated objects.
/// 
/// Skeleton2D parents a hierarchy of [Bone2D] objects. It is a requirement of [Bone2D]. Skeleton2D holds a reference to the rest pose of its children and acts as a single point of access to its bones.
///  
/// To setup different types of inverse kinematics for the given Skeleton2D, a [SkeletonModificationStack2D] should be created. They can be applied by creating the desired number of modifications, which can be done by increasing [member SkeletonModificationStack2D.modification_count].
open class Skeleton2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_Skeleton2D }

    static var _method_get_bone_count_3905245786: StringName! = nil
    static var _method_get_bone_2556267111: StringName! = nil
    static var _method_get_skeleton_2944877500: StringName! = nil
    static var _method_set_modification_stack_3907307132: StringName! = nil
    static var _method_get_modification_stack_2107508396: StringName! = nil
    static var _method_execute_modifications_1005356550: StringName! = nil
    static var _method_set_bone_local_pose_override_555457532: StringName! = nil
    static var _method_get_bone_local_pose_override_2995540667: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Skeleton2D == nil)
        __godot_name_Skeleton2D = StringName(from: "Skeleton2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_bone_count_3905245786 = StringName(from: "get_bone_count")
        assert(self._method_get_bone_count_3905245786 != nil)
        self._method_get_bone_2556267111 = StringName(from: "get_bone")
        assert(self._method_get_bone_2556267111 != nil)
        self._method_get_skeleton_2944877500 = StringName(from: "get_skeleton")
        assert(self._method_get_skeleton_2944877500 != nil)
        self._method_set_modification_stack_3907307132 = StringName(from: "set_modification_stack")
        assert(self._method_set_modification_stack_3907307132 != nil)
        self._method_get_modification_stack_2107508396 = StringName(from: "get_modification_stack")
        assert(self._method_get_modification_stack_2107508396 != nil)
        self._method_execute_modifications_1005356550 = StringName(from: "execute_modifications")
        assert(self._method_execute_modifications_1005356550 != nil)
        self._method_set_bone_local_pose_override_555457532 = StringName(from: "set_bone_local_pose_override")
        assert(self._method_set_bone_local_pose_override_555457532 != nil)
        self._method_get_bone_local_pose_override_2995540667 = StringName(from: "get_bone_local_pose_override")
        assert(self._method_get_bone_local_pose_override_2995540667 != nil)
    }

    public func get_bone_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bone_count_3905245786._native_ptr(),
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
    public func get_bone(idx: Int64) -> Bone2D {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bone_2556267111._native_ptr(),
                    2556267111)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Bone2D(godot: __resPtr.pointee)
        }
    }
    public func get_skeleton() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_skeleton_2944877500._native_ptr(),
                    2944877500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func set_modification_stack(modification_stack: SkeletonModificationStack2D)  {
        let modification_stack_native = modification_stack._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(modification_stack_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_modification_stack_3907307132._native_ptr(),
                    3907307132)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_modification_stack() -> SkeletonModificationStack2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_modification_stack_2107508396._native_ptr(),
                    2107508396)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SkeletonModificationStack2D(godot: __resPtr.pointee)
    }
    public func execute_modifications(delta: Float64, execution_mode: Int64)  {
        withUnsafePointer(to: execution_mode) { execution_mode_native in
        withUnsafePointer(to: delta) { delta_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native), .init(execution_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_execute_modifications_1005356550._native_ptr(),
                    1005356550)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_bone_local_pose_override(bone_idx: Int64, override_pose: Transform2D, strength: Float64, persistent: UInt8)  {
        withUnsafePointer(to: persistent) { persistent_native in
        withUnsafePointer(to: strength) { strength_native in
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let override_pose_native = override_pose._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native), .init(override_pose_native), .init(strength_native), .init(persistent_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bone_local_pose_override_555457532._native_ptr(),
                    555457532)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func get_bone_local_pose_override(bone_idx: Int64) -> Transform2D {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bone_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bone_local_pose_override_2995540667._native_ptr(),
                    2995540667)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
        }
    }
}