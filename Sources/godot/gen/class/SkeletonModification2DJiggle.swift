import godot_native

fileprivate var __godot_name_SkeletonModification2DJiggle: StringName! = nil

/// A modification that jiggles [Bone2D] nodes as they move towards a target.
/// 
/// This modification moves a series of bones, typically called a bone chain, towards a target. What makes this modification special is that it calculates the velocity and acceleration for each bone in the bone chain, and runs a very light physics-like calculation using the inputted values. This allows the bones to overshoot the target and "jiggle" around. It can be configured to act more like a spring, or sway around like cloth might.
///  
/// This modification is useful for adding additional motion to things like hair, the edges of clothing, and more. It has several settings to that allow control over how the joint moves when the target moves.
///  
/// [b]Note:[/b] The Jiggle modifier has [code]jiggle_joints[/code], which are the data objects that hold the data for each joint in the Jiggle chain. This is different from than [Bone2D] nodes! Jiggle joints hold the data needed for each [Bone2D] in the bone chain used by the Jiggle modification.
open class SkeletonModification2DJiggle : SkeletonModification2D {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonModification2DJiggle }

    static var _method_set_target_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_node_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_jiggle_data_chain_length_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_jiggle_data_chain_length_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_stiffness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_stiffness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_mass_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_mass_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_damping_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_damping_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_gravity_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_use_gravity_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_colliders_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_use_colliders_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_jiggle_joint_bone2d_node_2761262315: GDExtensionMethodBindPtr! = nil
    static var _method_get_jiggle_joint_bone2d_node_408788394: GDExtensionMethodBindPtr! = nil
    static var _method_set_jiggle_joint_bone_index_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_get_jiggle_joint_bone_index_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_set_jiggle_joint_override_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_jiggle_joint_override_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_jiggle_joint_stiffness_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_jiggle_joint_stiffness_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_jiggle_joint_mass_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_jiggle_joint_mass_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_jiggle_joint_damping_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_jiggle_joint_damping_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_jiggle_joint_use_gravity_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_jiggle_joint_use_gravity_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_jiggle_joint_gravity_163021252: GDExtensionMethodBindPtr! = nil
    static var _method_get_jiggle_joint_gravity_2299179447: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_SkeletonModification2DJiggle = StringName(from: "SkeletonModification2DJiggle")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_target_node_1348162250_name = StringName(from: "set_target_node")
        self._method_set_target_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_target_node_1348162250_name._native_ptr(), 1348162250)
        assert(SkeletonModification2DJiggle._method_set_target_node_1348162250 != nil)
        let _method_get_target_node_4075236667_name = StringName(from: "get_target_node")
        self._method_get_target_node_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_target_node_4075236667_name._native_ptr(), 4075236667)
        assert(SkeletonModification2DJiggle._method_get_target_node_4075236667 != nil)
        let _method_set_jiggle_data_chain_length_1286410249_name = StringName(from: "set_jiggle_data_chain_length")
        self._method_set_jiggle_data_chain_length_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_jiggle_data_chain_length_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonModification2DJiggle._method_set_jiggle_data_chain_length_1286410249 != nil)
        let _method_get_jiggle_data_chain_length_2455072627_name = StringName(from: "get_jiggle_data_chain_length")
        self._method_get_jiggle_data_chain_length_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_jiggle_data_chain_length_2455072627_name._native_ptr(), 2455072627)
        assert(SkeletonModification2DJiggle._method_get_jiggle_data_chain_length_2455072627 != nil)
        let _method_set_stiffness_373806689_name = StringName(from: "set_stiffness")
        self._method_set_stiffness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_stiffness_373806689_name._native_ptr(), 373806689)
        assert(SkeletonModification2DJiggle._method_set_stiffness_373806689 != nil)
        let _method_get_stiffness_1740695150_name = StringName(from: "get_stiffness")
        self._method_get_stiffness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_stiffness_1740695150_name._native_ptr(), 1740695150)
        assert(SkeletonModification2DJiggle._method_get_stiffness_1740695150 != nil)
        let _method_set_mass_373806689_name = StringName(from: "set_mass")
        self._method_set_mass_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_mass_373806689_name._native_ptr(), 373806689)
        assert(SkeletonModification2DJiggle._method_set_mass_373806689 != nil)
        let _method_get_mass_1740695150_name = StringName(from: "get_mass")
        self._method_get_mass_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_mass_1740695150_name._native_ptr(), 1740695150)
        assert(SkeletonModification2DJiggle._method_get_mass_1740695150 != nil)
        let _method_set_damping_373806689_name = StringName(from: "set_damping")
        self._method_set_damping_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_damping_373806689_name._native_ptr(), 373806689)
        assert(SkeletonModification2DJiggle._method_set_damping_373806689 != nil)
        let _method_get_damping_1740695150_name = StringName(from: "get_damping")
        self._method_get_damping_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_damping_1740695150_name._native_ptr(), 1740695150)
        assert(SkeletonModification2DJiggle._method_get_damping_1740695150 != nil)
        let _method_set_use_gravity_2586408642_name = StringName(from: "set_use_gravity")
        self._method_set_use_gravity_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_use_gravity_2586408642_name._native_ptr(), 2586408642)
        assert(SkeletonModification2DJiggle._method_set_use_gravity_2586408642 != nil)
        let _method_get_use_gravity_36873697_name = StringName(from: "get_use_gravity")
        self._method_get_use_gravity_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_use_gravity_36873697_name._native_ptr(), 36873697)
        assert(SkeletonModification2DJiggle._method_get_use_gravity_36873697 != nil)
        let _method_set_gravity_743155724_name = StringName(from: "set_gravity")
        self._method_set_gravity_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_gravity_743155724_name._native_ptr(), 743155724)
        assert(SkeletonModification2DJiggle._method_set_gravity_743155724 != nil)
        let _method_get_gravity_3341600327_name = StringName(from: "get_gravity")
        self._method_get_gravity_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_gravity_3341600327_name._native_ptr(), 3341600327)
        assert(SkeletonModification2DJiggle._method_get_gravity_3341600327 != nil)
        let _method_set_use_colliders_2586408642_name = StringName(from: "set_use_colliders")
        self._method_set_use_colliders_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_use_colliders_2586408642_name._native_ptr(), 2586408642)
        assert(SkeletonModification2DJiggle._method_set_use_colliders_2586408642 != nil)
        let _method_get_use_colliders_36873697_name = StringName(from: "get_use_colliders")
        self._method_get_use_colliders_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_use_colliders_36873697_name._native_ptr(), 36873697)
        assert(SkeletonModification2DJiggle._method_get_use_colliders_36873697 != nil)
        let _method_set_collision_mask_1286410249_name = StringName(from: "set_collision_mask")
        self._method_set_collision_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_collision_mask_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonModification2DJiggle._method_set_collision_mask_1286410249 != nil)
        let _method_get_collision_mask_3905245786_name = StringName(from: "get_collision_mask")
        self._method_get_collision_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_collision_mask_3905245786_name._native_ptr(), 3905245786)
        assert(SkeletonModification2DJiggle._method_get_collision_mask_3905245786 != nil)
        let _method_set_jiggle_joint_bone2d_node_2761262315_name = StringName(from: "set_jiggle_joint_bone2d_node")
        self._method_set_jiggle_joint_bone2d_node_2761262315 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_jiggle_joint_bone2d_node_2761262315_name._native_ptr(), 2761262315)
        assert(SkeletonModification2DJiggle._method_set_jiggle_joint_bone2d_node_2761262315 != nil)
        let _method_get_jiggle_joint_bone2d_node_408788394_name = StringName(from: "get_jiggle_joint_bone2d_node")
        self._method_get_jiggle_joint_bone2d_node_408788394 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_jiggle_joint_bone2d_node_408788394_name._native_ptr(), 408788394)
        assert(SkeletonModification2DJiggle._method_get_jiggle_joint_bone2d_node_408788394 != nil)
        let _method_set_jiggle_joint_bone_index_3937882851_name = StringName(from: "set_jiggle_joint_bone_index")
        self._method_set_jiggle_joint_bone_index_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_jiggle_joint_bone_index_3937882851_name._native_ptr(), 3937882851)
        assert(SkeletonModification2DJiggle._method_set_jiggle_joint_bone_index_3937882851 != nil)
        let _method_get_jiggle_joint_bone_index_923996154_name = StringName(from: "get_jiggle_joint_bone_index")
        self._method_get_jiggle_joint_bone_index_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_jiggle_joint_bone_index_923996154_name._native_ptr(), 923996154)
        assert(SkeletonModification2DJiggle._method_get_jiggle_joint_bone_index_923996154 != nil)
        let _method_set_jiggle_joint_override_300928843_name = StringName(from: "set_jiggle_joint_override")
        self._method_set_jiggle_joint_override_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_jiggle_joint_override_300928843_name._native_ptr(), 300928843)
        assert(SkeletonModification2DJiggle._method_set_jiggle_joint_override_300928843 != nil)
        let _method_get_jiggle_joint_override_1116898809_name = StringName(from: "get_jiggle_joint_override")
        self._method_get_jiggle_joint_override_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_jiggle_joint_override_1116898809_name._native_ptr(), 1116898809)
        assert(SkeletonModification2DJiggle._method_get_jiggle_joint_override_1116898809 != nil)
        let _method_set_jiggle_joint_stiffness_1602489585_name = StringName(from: "set_jiggle_joint_stiffness")
        self._method_set_jiggle_joint_stiffness_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_jiggle_joint_stiffness_1602489585_name._native_ptr(), 1602489585)
        assert(SkeletonModification2DJiggle._method_set_jiggle_joint_stiffness_1602489585 != nil)
        let _method_get_jiggle_joint_stiffness_2339986948_name = StringName(from: "get_jiggle_joint_stiffness")
        self._method_get_jiggle_joint_stiffness_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_jiggle_joint_stiffness_2339986948_name._native_ptr(), 2339986948)
        assert(SkeletonModification2DJiggle._method_get_jiggle_joint_stiffness_2339986948 != nil)
        let _method_set_jiggle_joint_mass_1602489585_name = StringName(from: "set_jiggle_joint_mass")
        self._method_set_jiggle_joint_mass_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_jiggle_joint_mass_1602489585_name._native_ptr(), 1602489585)
        assert(SkeletonModification2DJiggle._method_set_jiggle_joint_mass_1602489585 != nil)
        let _method_get_jiggle_joint_mass_2339986948_name = StringName(from: "get_jiggle_joint_mass")
        self._method_get_jiggle_joint_mass_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_jiggle_joint_mass_2339986948_name._native_ptr(), 2339986948)
        assert(SkeletonModification2DJiggle._method_get_jiggle_joint_mass_2339986948 != nil)
        let _method_set_jiggle_joint_damping_1602489585_name = StringName(from: "set_jiggle_joint_damping")
        self._method_set_jiggle_joint_damping_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_jiggle_joint_damping_1602489585_name._native_ptr(), 1602489585)
        assert(SkeletonModification2DJiggle._method_set_jiggle_joint_damping_1602489585 != nil)
        let _method_get_jiggle_joint_damping_2339986948_name = StringName(from: "get_jiggle_joint_damping")
        self._method_get_jiggle_joint_damping_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_jiggle_joint_damping_2339986948_name._native_ptr(), 2339986948)
        assert(SkeletonModification2DJiggle._method_get_jiggle_joint_damping_2339986948 != nil)
        let _method_set_jiggle_joint_use_gravity_300928843_name = StringName(from: "set_jiggle_joint_use_gravity")
        self._method_set_jiggle_joint_use_gravity_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_jiggle_joint_use_gravity_300928843_name._native_ptr(), 300928843)
        assert(SkeletonModification2DJiggle._method_set_jiggle_joint_use_gravity_300928843 != nil)
        let _method_get_jiggle_joint_use_gravity_1116898809_name = StringName(from: "get_jiggle_joint_use_gravity")
        self._method_get_jiggle_joint_use_gravity_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_jiggle_joint_use_gravity_1116898809_name._native_ptr(), 1116898809)
        assert(SkeletonModification2DJiggle._method_get_jiggle_joint_use_gravity_1116898809 != nil)
        let _method_set_jiggle_joint_gravity_163021252_name = StringName(from: "set_jiggle_joint_gravity")
        self._method_set_jiggle_joint_gravity_163021252 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_set_jiggle_joint_gravity_163021252_name._native_ptr(), 163021252)
        assert(SkeletonModification2DJiggle._method_set_jiggle_joint_gravity_163021252 != nil)
        let _method_get_jiggle_joint_gravity_2299179447_name = StringName(from: "get_jiggle_joint_gravity")
        self._method_get_jiggle_joint_gravity_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name_SkeletonModification2DJiggle._native_ptr(), _method_get_jiggle_joint_gravity_2299179447_name._native_ptr(), 2299179447)
        assert(SkeletonModification2DJiggle._method_get_jiggle_joint_gravity_2299179447 != nil)
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
    public func set_jiggle_data_chain_length(length: Int64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_jiggle_data_chain_length_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_jiggle_data_chain_length() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_jiggle_data_chain_length_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_stiffness(stiffness: Float64)  {
        withUnsafePointer(to: stiffness) { stiffness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stiffness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stiffness_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_stiffness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stiffness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_mass(mass: Float64)  {
        withUnsafePointer(to: mass) { mass_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mass_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mass_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mass() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mass_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_damping(damping: Float64)  {
        withUnsafePointer(to: damping) { damping_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(damping_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_damping_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_damping() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_damping_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_use_gravity(use_gravity: UInt8)  {
        withUnsafePointer(to: use_gravity) { use_gravity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_gravity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_gravity_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_use_gravity() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_use_gravity_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_gravity(gravity: Vector2)  {
        let gravity_native = gravity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gravity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_gravity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_use_colliders(use_colliders: UInt8)  {
        withUnsafePointer(to: use_colliders) { use_colliders_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_colliders_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_colliders_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_use_colliders() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_use_colliders_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_collision_mask(collision_mask: Int64)  {
        withUnsafePointer(to: collision_mask) { collision_mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_collision_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_jiggle_joint_bone2d_node(joint_idx: Int64, bone2d_node: NodePath)  {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let bone2d_node_native = bone2d_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(bone2d_node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_jiggle_joint_bone2d_node_2761262315,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_jiggle_joint_bone2d_node(joint_idx: Int64) -> NodePath {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_jiggle_joint_bone2d_node_408788394,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
        }
    }
    public func set_jiggle_joint_bone_index(joint_idx: Int64, bone_idx: Int64)  {
        withUnsafePointer(to: bone_idx) { bone_idx_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(bone_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_jiggle_joint_bone_index_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_jiggle_joint_bone_index(joint_idx: Int64) -> Int64 {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_jiggle_joint_bone_index_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func set_jiggle_joint_override(joint_idx: Int64, override: UInt8)  {
        withUnsafePointer(to: override) { override_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(override_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_jiggle_joint_override_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_jiggle_joint_override(joint_idx: Int64) -> UInt8 {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_jiggle_joint_override_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_jiggle_joint_stiffness(joint_idx: Int64, stiffness: Float64)  {
        withUnsafePointer(to: stiffness) { stiffness_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(stiffness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_jiggle_joint_stiffness_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_jiggle_joint_stiffness(joint_idx: Int64) -> Float64 {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_jiggle_joint_stiffness_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_jiggle_joint_mass(joint_idx: Int64, mass: Float64)  {
        withUnsafePointer(to: mass) { mass_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(mass_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_jiggle_joint_mass_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_jiggle_joint_mass(joint_idx: Int64) -> Float64 {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_jiggle_joint_mass_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_jiggle_joint_damping(joint_idx: Int64, damping: Float64)  {
        withUnsafePointer(to: damping) { damping_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(damping_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_jiggle_joint_damping_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_jiggle_joint_damping(joint_idx: Int64) -> Float64 {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_jiggle_joint_damping_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_jiggle_joint_use_gravity(joint_idx: Int64, use_gravity: UInt8)  {
        withUnsafePointer(to: use_gravity) { use_gravity_native in
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(use_gravity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_jiggle_joint_use_gravity_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_jiggle_joint_use_gravity(joint_idx: Int64) -> UInt8 {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_jiggle_joint_use_gravity_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_jiggle_joint_gravity(joint_idx: Int64, gravity: Vector2)  {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let gravity_native = gravity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(gravity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_jiggle_joint_gravity_163021252,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_jiggle_joint_gravity(joint_idx: Int64) -> Vector2 {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_jiggle_joint_gravity_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
}