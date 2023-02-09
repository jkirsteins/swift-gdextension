import godot_native

fileprivate var __godot_name_SkeletonModification2DPhysicalBones: StringName! = nil

/// A modification that applies the transforms of [PhysicalBone2D] nodes to [Bone2D] nodes.
/// 
/// This modification takes the transforms of [PhysicalBone2D] nodes and applies them to [Bone2D] nodes. This allows the [Bone2D] nodes to react to physics thanks to the linked [PhysicalBone2D] nodes.
///  
/// Experimental. Physical bones may be changed in the future to perform the position update of [Bone2D] on their own.
open class SkeletonModification2DPhysicalBones : SkeletonModification2D {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonModification2DPhysicalBones }

    static var _method_set_physical_bone_chain_length_1286410249: StringName! = nil
    static var _method_get_physical_bone_chain_length_2455072627: StringName! = nil
    static var _method_set_physical_bone_node_2761262315: StringName! = nil
    static var _method_get_physical_bone_node_408788394: StringName! = nil
    static var _method_fetch_physical_bones_3218959716: StringName! = nil
    static var _method_start_simulation_2787316981: StringName! = nil
    static var _method_stop_simulation_2787316981: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SkeletonModification2DPhysicalBones == nil)
        __godot_name_SkeletonModification2DPhysicalBones = StringName(from: "SkeletonModification2DPhysicalBones")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_physical_bone_chain_length_1286410249 = StringName(from: "set_physical_bone_chain_length")
        assert(self._method_set_physical_bone_chain_length_1286410249 != nil)
        self._method_get_physical_bone_chain_length_2455072627 = StringName(from: "get_physical_bone_chain_length")
        assert(self._method_get_physical_bone_chain_length_2455072627 != nil)
        self._method_set_physical_bone_node_2761262315 = StringName(from: "set_physical_bone_node")
        assert(self._method_set_physical_bone_node_2761262315 != nil)
        self._method_get_physical_bone_node_408788394 = StringName(from: "get_physical_bone_node")
        assert(self._method_get_physical_bone_node_408788394 != nil)
        self._method_fetch_physical_bones_3218959716 = StringName(from: "fetch_physical_bones")
        assert(self._method_fetch_physical_bones_3218959716 != nil)
        self._method_start_simulation_2787316981 = StringName(from: "start_simulation")
        assert(self._method_start_simulation_2787316981 != nil)
        self._method_stop_simulation_2787316981 = StringName(from: "stop_simulation")
        assert(self._method_stop_simulation_2787316981 != nil)
    }

    public func set_physical_bone_chain_length(length: Int64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_physical_bone_chain_length_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_physical_bone_chain_length() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_physical_bone_chain_length_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_physical_bone_node(joint_idx: Int64, physicalbone2d_node: NodePath)  {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let physicalbone2d_node_native = physicalbone2d_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native), .init(physicalbone2d_node_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_physical_bone_node_2761262315._native_ptr(),
                    2761262315)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_physical_bone_node(joint_idx: Int64) -> NodePath {
        withUnsafePointer(to: joint_idx) { joint_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_physical_bone_node_408788394._native_ptr(),
                    408788394)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
        }
    }
    public func fetch_physical_bones()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_fetch_physical_bones_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func start_simulation(bones: [StringName])  {
        let bones_native = bones._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bones_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_start_simulation_2787316981._native_ptr(),
                    2787316981)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func stop_simulation(bones: [StringName])  {
        let bones_native = bones._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bones_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_stop_simulation_2787316981._native_ptr(),
                    2787316981)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}