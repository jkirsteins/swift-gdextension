import godot_native

fileprivate var __godot_name_GLTFSkin: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GLTFSkin : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFSkin }

    static var _method_get_skin_root_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_skin_root_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_joints_original_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_set_joints_original_3614634198: GDExtensionMethodBindPtr! = nil
    static var _method_get_inverse_binds_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_set_inverse_binds_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_joints_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_set_joints_3614634198: GDExtensionMethodBindPtr! = nil
    static var _method_get_non_joints_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_set_non_joints_3614634198: GDExtensionMethodBindPtr! = nil
    static var _method_get_roots_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_set_roots_3614634198: GDExtensionMethodBindPtr! = nil
    static var _method_get_skeleton_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_skeleton_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_joint_i_to_bone_i_2382534195: GDExtensionMethodBindPtr! = nil
    static var _method_set_joint_i_to_bone_i_4155329257: GDExtensionMethodBindPtr! = nil
    static var _method_get_joint_i_to_name_2382534195: GDExtensionMethodBindPtr! = nil
    static var _method_set_joint_i_to_name_4155329257: GDExtensionMethodBindPtr! = nil
    static var _method_get_godot_skin_1032037385: GDExtensionMethodBindPtr! = nil
    static var _method_set_godot_skin_3971435618: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GLTFSkin = StringName(from: "GLTFSkin")

        let _method_get_skin_root_2455072627_name = StringName(from: "get_skin_root")
        self._method_get_skin_root_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skin_root_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFSkin._method_get_skin_root_2455072627 != nil)
        let _method_set_skin_root_1286410249_name = StringName(from: "set_skin_root")
        self._method_set_skin_root_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_skin_root_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFSkin._method_set_skin_root_1286410249 != nil)
        let _method_get_joints_original_969006518_name = StringName(from: "get_joints_original")
        self._method_get_joints_original_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joints_original_969006518_name._native_ptr(), 969006518)
        assert(GLTFSkin._method_get_joints_original_969006518 != nil)
        let _method_set_joints_original_3614634198_name = StringName(from: "set_joints_original")
        self._method_set_joints_original_3614634198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_joints_original_3614634198_name._native_ptr(), 3614634198)
        assert(GLTFSkin._method_set_joints_original_3614634198 != nil)
        let _method_get_inverse_binds_2915620761_name = StringName(from: "get_inverse_binds")
        self._method_get_inverse_binds_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_inverse_binds_2915620761_name._native_ptr(), 2915620761)
        assert(GLTFSkin._method_get_inverse_binds_2915620761 != nil)
        let _method_set_inverse_binds_381264803_name = StringName(from: "set_inverse_binds")
        self._method_set_inverse_binds_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_inverse_binds_381264803_name._native_ptr(), 381264803)
        assert(GLTFSkin._method_set_inverse_binds_381264803 != nil)
        let _method_get_joints_969006518_name = StringName(from: "get_joints")
        self._method_get_joints_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joints_969006518_name._native_ptr(), 969006518)
        assert(GLTFSkin._method_get_joints_969006518 != nil)
        let _method_set_joints_3614634198_name = StringName(from: "set_joints")
        self._method_set_joints_3614634198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_joints_3614634198_name._native_ptr(), 3614634198)
        assert(GLTFSkin._method_set_joints_3614634198 != nil)
        let _method_get_non_joints_969006518_name = StringName(from: "get_non_joints")
        self._method_get_non_joints_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_non_joints_969006518_name._native_ptr(), 969006518)
        assert(GLTFSkin._method_get_non_joints_969006518 != nil)
        let _method_set_non_joints_3614634198_name = StringName(from: "set_non_joints")
        self._method_set_non_joints_3614634198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_non_joints_3614634198_name._native_ptr(), 3614634198)
        assert(GLTFSkin._method_set_non_joints_3614634198 != nil)
        let _method_get_roots_969006518_name = StringName(from: "get_roots")
        self._method_get_roots_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_roots_969006518_name._native_ptr(), 969006518)
        assert(GLTFSkin._method_get_roots_969006518 != nil)
        let _method_set_roots_3614634198_name = StringName(from: "set_roots")
        self._method_set_roots_3614634198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_roots_3614634198_name._native_ptr(), 3614634198)
        assert(GLTFSkin._method_set_roots_3614634198 != nil)
        let _method_get_skeleton_2455072627_name = StringName(from: "get_skeleton")
        self._method_get_skeleton_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skeleton_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFSkin._method_get_skeleton_2455072627 != nil)
        let _method_set_skeleton_1286410249_name = StringName(from: "set_skeleton")
        self._method_set_skeleton_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_skeleton_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFSkin._method_set_skeleton_1286410249 != nil)
        let _method_get_joint_i_to_bone_i_2382534195_name = StringName(from: "get_joint_i_to_bone_i")
        self._method_get_joint_i_to_bone_i_2382534195 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joint_i_to_bone_i_2382534195_name._native_ptr(), 2382534195)
        assert(GLTFSkin._method_get_joint_i_to_bone_i_2382534195 != nil)
        let _method_set_joint_i_to_bone_i_4155329257_name = StringName(from: "set_joint_i_to_bone_i")
        self._method_set_joint_i_to_bone_i_4155329257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_joint_i_to_bone_i_4155329257_name._native_ptr(), 4155329257)
        assert(GLTFSkin._method_set_joint_i_to_bone_i_4155329257 != nil)
        let _method_get_joint_i_to_name_2382534195_name = StringName(from: "get_joint_i_to_name")
        self._method_get_joint_i_to_name_2382534195 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joint_i_to_name_2382534195_name._native_ptr(), 2382534195)
        assert(GLTFSkin._method_get_joint_i_to_name_2382534195 != nil)
        let _method_set_joint_i_to_name_4155329257_name = StringName(from: "set_joint_i_to_name")
        self._method_set_joint_i_to_name_4155329257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_joint_i_to_name_4155329257_name._native_ptr(), 4155329257)
        assert(GLTFSkin._method_set_joint_i_to_name_4155329257 != nil)
        let _method_get_godot_skin_1032037385_name = StringName(from: "get_godot_skin")
        self._method_get_godot_skin_1032037385 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_godot_skin_1032037385_name._native_ptr(), 1032037385)
        assert(GLTFSkin._method_get_godot_skin_1032037385 != nil)
        let _method_set_godot_skin_3971435618_name = StringName(from: "set_godot_skin")
        self._method_set_godot_skin_3971435618 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_godot_skin_3971435618_name._native_ptr(), 3971435618)
        assert(GLTFSkin._method_set_godot_skin_3971435618 != nil)
    }

    public func get_skin_root() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skin_root_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_skin_root(skin_root: Int64)  {
        withUnsafePointer(to: skin_root) { skin_root_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skin_root_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_skin_root_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_joints_original() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joints_original_969006518,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func set_joints_original(joints_original: PackedInt32Array)  {
        let joints_original_native = joints_original._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joints_original_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joints_original_3614634198,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_inverse_binds() -> [Transform3D] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_inverse_binds_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Transform3D](from: __resPtr.pointee)
    }
    public func set_inverse_binds(inverse_binds: [Transform3D])  {
        let inverse_binds_native = inverse_binds._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(inverse_binds_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_inverse_binds_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_joints() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joints_969006518,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func set_joints(joints: PackedInt32Array)  {
        let joints_native = joints._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joints_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joints_3614634198,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_non_joints() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_non_joints_969006518,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func set_non_joints(non_joints: PackedInt32Array)  {
        let non_joints_native = non_joints._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(non_joints_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_non_joints_3614634198,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_roots() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_roots_969006518,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func set_roots(roots: PackedInt32Array)  {
        let roots_native = roots._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(roots_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_roots_3614634198,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skeleton() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skeleton_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_skeleton(skeleton: Int64)  {
        withUnsafePointer(to: skeleton) { skeleton_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_skeleton_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_joint_i_to_bone_i() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joint_i_to_bone_i_2382534195,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func set_joint_i_to_bone_i(joint_i_to_bone_i: Dictionary)  {
        let joint_i_to_bone_i_native = joint_i_to_bone_i._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_i_to_bone_i_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joint_i_to_bone_i_4155329257,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_joint_i_to_name() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joint_i_to_name_2382534195,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func set_joint_i_to_name(joint_i_to_name: Dictionary)  {
        let joint_i_to_name_native = joint_i_to_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_i_to_name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joint_i_to_name_4155329257,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_godot_skin() -> Skin {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_godot_skin_1032037385,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skin(from: __resPtr.pointee)
    }
    public func set_godot_skin(godot_skin: Skin)  {
        let godot_skin_native = godot_skin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(godot_skin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_godot_skin_3971435618,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}