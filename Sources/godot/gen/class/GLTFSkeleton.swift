import godot_native

fileprivate var __godot_name_GLTFSkeleton: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GLTFSkeleton : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFSkeleton }

    static var _method_get_joints_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_set_joints_3614634198: GDExtensionMethodBindPtr! = nil
    static var _method_get_roots_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_set_roots_3614634198: GDExtensionMethodBindPtr! = nil
    static var _method_get_godot_skeleton_1814733083: GDExtensionMethodBindPtr! = nil
    static var _method_get_unique_names_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_set_unique_names_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_godot_bone_node_2382534195: GDExtensionMethodBindPtr! = nil
    static var _method_set_godot_bone_node_4155329257: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_attachment_count_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_bone_attachment_945440495: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GLTFSkeleton = StringName(from: "GLTFSkeleton")

        let _method_get_joints_969006518_name = StringName(from: "get_joints")
        self._method_get_joints_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joints_969006518_name._native_ptr(), 969006518)
        assert(GLTFSkeleton._method_get_joints_969006518 != nil)
        let _method_set_joints_3614634198_name = StringName(from: "set_joints")
        self._method_set_joints_3614634198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_joints_3614634198_name._native_ptr(), 3614634198)
        assert(GLTFSkeleton._method_set_joints_3614634198 != nil)
        let _method_get_roots_969006518_name = StringName(from: "get_roots")
        self._method_get_roots_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_roots_969006518_name._native_ptr(), 969006518)
        assert(GLTFSkeleton._method_get_roots_969006518 != nil)
        let _method_set_roots_3614634198_name = StringName(from: "set_roots")
        self._method_set_roots_3614634198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_roots_3614634198_name._native_ptr(), 3614634198)
        assert(GLTFSkeleton._method_set_roots_3614634198 != nil)
        let _method_get_godot_skeleton_1814733083_name = StringName(from: "get_godot_skeleton")
        self._method_get_godot_skeleton_1814733083 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_godot_skeleton_1814733083_name._native_ptr(), 1814733083)
        assert(GLTFSkeleton._method_get_godot_skeleton_1814733083 != nil)
        let _method_get_unique_names_2915620761_name = StringName(from: "get_unique_names")
        self._method_get_unique_names_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_unique_names_2915620761_name._native_ptr(), 2915620761)
        assert(GLTFSkeleton._method_get_unique_names_2915620761 != nil)
        let _method_set_unique_names_381264803_name = StringName(from: "set_unique_names")
        self._method_set_unique_names_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_unique_names_381264803_name._native_ptr(), 381264803)
        assert(GLTFSkeleton._method_set_unique_names_381264803 != nil)
        let _method_get_godot_bone_node_2382534195_name = StringName(from: "get_godot_bone_node")
        self._method_get_godot_bone_node_2382534195 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_godot_bone_node_2382534195_name._native_ptr(), 2382534195)
        assert(GLTFSkeleton._method_get_godot_bone_node_2382534195 != nil)
        let _method_set_godot_bone_node_4155329257_name = StringName(from: "set_godot_bone_node")
        self._method_set_godot_bone_node_4155329257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_godot_bone_node_4155329257_name._native_ptr(), 4155329257)
        assert(GLTFSkeleton._method_set_godot_bone_node_4155329257 != nil)
        let _method_get_bone_attachment_count_2455072627_name = StringName(from: "get_bone_attachment_count")
        self._method_get_bone_attachment_count_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bone_attachment_count_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFSkeleton._method_get_bone_attachment_count_2455072627 != nil)
        let _method_get_bone_attachment_945440495_name = StringName(from: "get_bone_attachment")
        self._method_get_bone_attachment_945440495 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bone_attachment_945440495_name._native_ptr(), 945440495)
        assert(GLTFSkeleton._method_get_bone_attachment_945440495 != nil)
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
    public func get_godot_skeleton() -> Skeleton3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_godot_skeleton_1814733083,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skeleton3D(from: __resPtr.pointee)
    }
    public func get_unique_names() -> [String] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_unique_names_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [String](from: __resPtr.pointee)
    }
    public func set_unique_names(unique_names: [String])  {
        let unique_names_native = unique_names._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unique_names_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_unique_names_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_godot_bone_node() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_godot_bone_node_2382534195,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func set_godot_bone_node(godot_bone_node: Dictionary)  {
        let godot_bone_node_native = godot_bone_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(godot_bone_node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_godot_bone_node_4155329257,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bone_attachment_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_attachment_count_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_bone_attachment(idx: Int64) -> BoneAttachment3D {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bone_attachment_945440495,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BoneAttachment3D(from: __resPtr.pointee)
        }
    }
}