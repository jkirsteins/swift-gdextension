import godot_native

fileprivate var __godot_name_GLTFSkeleton: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GLTFSkeleton : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFSkeleton }

    static var _method_get_joints_969006518: StringName! = nil
    static var _method_set_joints_3614634198: StringName! = nil
    static var _method_get_roots_969006518: StringName! = nil
    static var _method_set_roots_3614634198: StringName! = nil
    static var _method_get_godot_skeleton_1814733083: StringName! = nil
    static var _method_get_unique_names_2915620761: StringName! = nil
    static var _method_set_unique_names_381264803: StringName! = nil
    static var _method_get_godot_bone_node_2382534195: StringName! = nil
    static var _method_set_godot_bone_node_4155329257: StringName! = nil
    static var _method_get_bone_attachment_count_2455072627: StringName! = nil
    static var _method_get_bone_attachment_945440495: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GLTFSkeleton == nil)
        __godot_name_GLTFSkeleton = StringName(from: "GLTFSkeleton")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_joints_969006518 = StringName(from: "get_joints")
        assert(self._method_get_joints_969006518 != nil)
        self._method_set_joints_3614634198 = StringName(from: "set_joints")
        assert(self._method_set_joints_3614634198 != nil)
        self._method_get_roots_969006518 = StringName(from: "get_roots")
        assert(self._method_get_roots_969006518 != nil)
        self._method_set_roots_3614634198 = StringName(from: "set_roots")
        assert(self._method_set_roots_3614634198 != nil)
        self._method_get_godot_skeleton_1814733083 = StringName(from: "get_godot_skeleton")
        assert(self._method_get_godot_skeleton_1814733083 != nil)
        self._method_get_unique_names_2915620761 = StringName(from: "get_unique_names")
        assert(self._method_get_unique_names_2915620761 != nil)
        self._method_set_unique_names_381264803 = StringName(from: "set_unique_names")
        assert(self._method_set_unique_names_381264803 != nil)
        self._method_get_godot_bone_node_2382534195 = StringName(from: "get_godot_bone_node")
        assert(self._method_get_godot_bone_node_2382534195 != nil)
        self._method_set_godot_bone_node_4155329257 = StringName(from: "set_godot_bone_node")
        assert(self._method_set_godot_bone_node_4155329257 != nil)
        self._method_get_bone_attachment_count_2455072627 = StringName(from: "get_bone_attachment_count")
        assert(self._method_get_bone_attachment_count_2455072627 != nil)
        self._method_get_bone_attachment_945440495 = StringName(from: "get_bone_attachment")
        assert(self._method_get_bone_attachment_945440495 != nil)
    }

    public func get_joints() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_joints_969006518._native_ptr(),
                    969006518)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_joints(joints: PackedInt32Array)  {
        let joints_native = joints._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joints_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_joints_3614634198._native_ptr(),
                    3614634198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_roots_969006518._native_ptr(),
                    969006518)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_roots(roots: PackedInt32Array)  {
        let roots_native = roots._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(roots_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_roots_3614634198._native_ptr(),
                    3614634198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_godot_skeleton_1814733083._native_ptr(),
                    1814733083)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skeleton3D(godot: __resPtr.pointee)
    }
    public func get_unique_names() -> [godot.String] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_unique_names_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [godot.String](godot: __resPtr.pointee)
    }
    public func set_unique_names(unique_names: [godot.String])  {
        let unique_names_native = unique_names._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unique_names_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_unique_names_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_godot_bone_node_2382534195._native_ptr(),
                    2382534195)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func set_godot_bone_node(godot_bone_node: Dictionary)  {
        let godot_bone_node_native = godot_bone_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(godot_bone_node_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_godot_bone_node_4155329257._native_ptr(),
                    4155329257)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bone_attachment_count_2455072627._native_ptr(),
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
    public func get_bone_attachment(idx: Int64) -> BoneAttachment3D {
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
                    Self._method_get_bone_attachment_945440495._native_ptr(),
                    945440495)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BoneAttachment3D(godot: __resPtr.pointee)
        }
    }
}