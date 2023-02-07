import godot_native

fileprivate var __godot_name_GLTFNode: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GLTFNode : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFNode }

    static var _method_get_parent_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_parent_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_height_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_height_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_xform_4183770049: GDExtensionMethodBindPtr! = nil
    static var _method_set_xform_2952846383: GDExtensionMethodBindPtr! = nil
    static var _method_get_mesh_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_mesh_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_camera_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_camera_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_skin_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_skin_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_skeleton_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_skeleton_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_joint_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_joint_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_3783033775: GDExtensionMethodBindPtr! = nil
    static var _method_set_position_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_rotation_2916281908: GDExtensionMethodBindPtr! = nil
    static var _method_set_rotation_1727505552: GDExtensionMethodBindPtr! = nil
    static var _method_get_scale_3783033775: GDExtensionMethodBindPtr! = nil
    static var _method_set_scale_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_children_969006518: GDExtensionMethodBindPtr! = nil
    static var _method_set_children_3614634198: GDExtensionMethodBindPtr! = nil
    static var _method_get_light_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_set_light_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_additional_data_2138907829: GDExtensionMethodBindPtr! = nil
    static var _method_set_additional_data_3776071444: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GLTFNode = StringName(from: "GLTFNode")

        let _method_get_parent_2455072627_name = StringName(from: "get_parent")
        self._method_get_parent_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_parent_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFNode._method_get_parent_2455072627 != nil)
        let _method_set_parent_1286410249_name = StringName(from: "set_parent")
        self._method_set_parent_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_parent_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFNode._method_set_parent_1286410249 != nil)
        let _method_get_height_2455072627_name = StringName(from: "get_height")
        self._method_get_height_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_height_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFNode._method_get_height_2455072627 != nil)
        let _method_set_height_1286410249_name = StringName(from: "set_height")
        self._method_set_height_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_height_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFNode._method_set_height_1286410249 != nil)
        let _method_get_xform_4183770049_name = StringName(from: "get_xform")
        self._method_get_xform_4183770049 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_xform_4183770049_name._native_ptr(), 4183770049)
        assert(GLTFNode._method_get_xform_4183770049 != nil)
        let _method_set_xform_2952846383_name = StringName(from: "set_xform")
        self._method_set_xform_2952846383 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_xform_2952846383_name._native_ptr(), 2952846383)
        assert(GLTFNode._method_set_xform_2952846383 != nil)
        let _method_get_mesh_2455072627_name = StringName(from: "get_mesh")
        self._method_get_mesh_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mesh_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFNode._method_get_mesh_2455072627 != nil)
        let _method_set_mesh_1286410249_name = StringName(from: "set_mesh")
        self._method_set_mesh_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mesh_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFNode._method_set_mesh_1286410249 != nil)
        let _method_get_camera_2455072627_name = StringName(from: "get_camera")
        self._method_get_camera_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_camera_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFNode._method_get_camera_2455072627 != nil)
        let _method_set_camera_1286410249_name = StringName(from: "set_camera")
        self._method_set_camera_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_camera_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFNode._method_set_camera_1286410249 != nil)
        let _method_get_skin_2455072627_name = StringName(from: "get_skin")
        self._method_get_skin_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skin_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFNode._method_get_skin_2455072627 != nil)
        let _method_set_skin_1286410249_name = StringName(from: "set_skin")
        self._method_set_skin_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_skin_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFNode._method_set_skin_1286410249 != nil)
        let _method_get_skeleton_2455072627_name = StringName(from: "get_skeleton")
        self._method_get_skeleton_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skeleton_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFNode._method_get_skeleton_2455072627 != nil)
        let _method_set_skeleton_1286410249_name = StringName(from: "set_skeleton")
        self._method_set_skeleton_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_skeleton_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFNode._method_set_skeleton_1286410249 != nil)
        let _method_get_joint_2240911060_name = StringName(from: "get_joint")
        self._method_get_joint_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_joint_2240911060_name._native_ptr(), 2240911060)
        assert(GLTFNode._method_get_joint_2240911060 != nil)
        let _method_set_joint_2586408642_name = StringName(from: "set_joint")
        self._method_set_joint_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_joint_2586408642_name._native_ptr(), 2586408642)
        assert(GLTFNode._method_set_joint_2586408642 != nil)
        let _method_get_position_3783033775_name = StringName(from: "get_position")
        self._method_get_position_3783033775 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_position_3783033775_name._native_ptr(), 3783033775)
        assert(GLTFNode._method_get_position_3783033775 != nil)
        let _method_set_position_3460891852_name = StringName(from: "set_position")
        self._method_set_position_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_position_3460891852_name._native_ptr(), 3460891852)
        assert(GLTFNode._method_set_position_3460891852 != nil)
        let _method_get_rotation_2916281908_name = StringName(from: "get_rotation")
        self._method_get_rotation_2916281908 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rotation_2916281908_name._native_ptr(), 2916281908)
        assert(GLTFNode._method_get_rotation_2916281908 != nil)
        let _method_set_rotation_1727505552_name = StringName(from: "set_rotation")
        self._method_set_rotation_1727505552 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rotation_1727505552_name._native_ptr(), 1727505552)
        assert(GLTFNode._method_set_rotation_1727505552 != nil)
        let _method_get_scale_3783033775_name = StringName(from: "get_scale")
        self._method_get_scale_3783033775 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_scale_3783033775_name._native_ptr(), 3783033775)
        assert(GLTFNode._method_get_scale_3783033775 != nil)
        let _method_set_scale_3460891852_name = StringName(from: "set_scale")
        self._method_set_scale_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scale_3460891852_name._native_ptr(), 3460891852)
        assert(GLTFNode._method_set_scale_3460891852 != nil)
        let _method_get_children_969006518_name = StringName(from: "get_children")
        self._method_get_children_969006518 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_children_969006518_name._native_ptr(), 969006518)
        assert(GLTFNode._method_get_children_969006518 != nil)
        let _method_set_children_3614634198_name = StringName(from: "set_children")
        self._method_set_children_3614634198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_children_3614634198_name._native_ptr(), 3614634198)
        assert(GLTFNode._method_set_children_3614634198 != nil)
        let _method_get_light_2455072627_name = StringName(from: "get_light")
        self._method_get_light_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_light_2455072627_name._native_ptr(), 2455072627)
        assert(GLTFNode._method_get_light_2455072627 != nil)
        let _method_set_light_1286410249_name = StringName(from: "set_light")
        self._method_set_light_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_light_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFNode._method_set_light_1286410249 != nil)
        let _method_get_additional_data_2138907829_name = StringName(from: "get_additional_data")
        self._method_get_additional_data_2138907829 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_additional_data_2138907829_name._native_ptr(), 2138907829)
        assert(GLTFNode._method_get_additional_data_2138907829 != nil)
        let _method_set_additional_data_3776071444_name = StringName(from: "set_additional_data")
        self._method_set_additional_data_3776071444 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_additional_data_3776071444_name._native_ptr(), 3776071444)
        assert(GLTFNode._method_set_additional_data_3776071444 != nil)
    }

    public func get_parent() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parent_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_parent(parent: Int64)  {
        withUnsafePointer(to: parent) { parent_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parent_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_parent_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_height() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_height_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_height(height: Int64)  {
        withUnsafePointer(to: height) { height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_height_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_xform() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_xform_4183770049,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func set_xform(xform: Transform3D)  {
        let xform_native = xform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(xform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_xform_2952846383,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_mesh() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mesh_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_mesh(mesh: Int64)  {
        withUnsafePointer(to: mesh) { mesh_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mesh_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_camera() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_camera_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_camera(camera: Int64)  {
        withUnsafePointer(to: camera) { camera_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_camera_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_skin() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skin_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_skin(skin: Int64)  {
        withUnsafePointer(to: skin) { skin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_skin_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
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
    public func get_joint() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_joint_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_joint(joint: UInt8)  {
        withUnsafePointer(to: joint) { joint_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_joint_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_position_3783033775,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_position(position: Vector3)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_position_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_rotation() -> Quaternion {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rotation_2916281908,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Quaternion(from: __resPtr.pointee)
    }
    public func set_rotation(rotation: Quaternion)  {
        let rotation_native = rotation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rotation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rotation_1727505552,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scale() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scale_3783033775,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_scale(scale: Vector3)  {
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scale_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_children() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_children_969006518,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func set_children(children: PackedInt32Array)  {
        let children_native = children._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(children_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_children_3614634198,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_light() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_light_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_light(light: Int64)  {
        withUnsafePointer(to: light) { light_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_light_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_additional_data(extension_name: StringName) -> Variant {
        let extension_name_native = extension_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extension_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_additional_data_2138907829,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func set_additional_data(extension_name: StringName, additional_data: Variant)  {
        let additional_data_native = additional_data._native_ptr()
        let extension_name_native = extension_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extension_name_native), .init(additional_data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_additional_data_3776071444,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}