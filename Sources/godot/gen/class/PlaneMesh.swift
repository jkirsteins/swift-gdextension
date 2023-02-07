import godot_native

fileprivate var __godot_name_PlaneMesh: StringName! = nil

/// Class representing a planar [PrimitiveMesh].
/// 
/// Class representing a planar [PrimitiveMesh]. This flat mesh does not have a thickness. By default, this mesh is aligned on the X and Z axes; this default rotation isn't suited for use with billboarded materials. For billboarded materials, change [member orientation] to [constant FACE_Z].
///  
/// [b]Note:[/b] When using a large textured [PlaneMesh] (e.g. as a floor), you may stumble upon UV jittering issues depending on the camera angle. To solve this, increase [member subdivide_depth] and [member subdivide_width] until you no longer notice UV jittering.
public class PlaneMesh : PrimitiveMesh {

    public enum Orientation : Int32 {
        case FACE_X = 0
        case FACE_Y = 1
        case FACE_Z = 2
    }

    public override class var __godot_name: StringName { __godot_name_PlaneMesh }

    static var _method_set_size_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_subdivide_width_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_subdivide_width_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_subdivide_depth_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_subdivide_depth_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_center_offset_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_center_offset_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_orientation_2751399687: GDExtensionMethodBindPtr! = nil
    static var _method_get_orientation_3227599250: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PlaneMesh = StringName(from: "PlaneMesh")

        let _method_set_size_743155724_name = StringName(from: "set_size")
        self._method_set_size_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_743155724_name._native_ptr(), 743155724)
        assert(PlaneMesh._method_set_size_743155724 != nil)
        let _method_get_size_3341600327_name = StringName(from: "get_size")
        self._method_get_size_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3341600327_name._native_ptr(), 3341600327)
        assert(PlaneMesh._method_get_size_3341600327 != nil)
        let _method_set_subdivide_width_1286410249_name = StringName(from: "set_subdivide_width")
        self._method_set_subdivide_width_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_subdivide_width_1286410249_name._native_ptr(), 1286410249)
        assert(PlaneMesh._method_set_subdivide_width_1286410249 != nil)
        let _method_get_subdivide_width_3905245786_name = StringName(from: "get_subdivide_width")
        self._method_get_subdivide_width_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_subdivide_width_3905245786_name._native_ptr(), 3905245786)
        assert(PlaneMesh._method_get_subdivide_width_3905245786 != nil)
        let _method_set_subdivide_depth_1286410249_name = StringName(from: "set_subdivide_depth")
        self._method_set_subdivide_depth_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_subdivide_depth_1286410249_name._native_ptr(), 1286410249)
        assert(PlaneMesh._method_set_subdivide_depth_1286410249 != nil)
        let _method_get_subdivide_depth_3905245786_name = StringName(from: "get_subdivide_depth")
        self._method_get_subdivide_depth_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_subdivide_depth_3905245786_name._native_ptr(), 3905245786)
        assert(PlaneMesh._method_get_subdivide_depth_3905245786 != nil)
        let _method_set_center_offset_3460891852_name = StringName(from: "set_center_offset")
        self._method_set_center_offset_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_center_offset_3460891852_name._native_ptr(), 3460891852)
        assert(PlaneMesh._method_set_center_offset_3460891852 != nil)
        let _method_get_center_offset_3360562783_name = StringName(from: "get_center_offset")
        self._method_get_center_offset_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_center_offset_3360562783_name._native_ptr(), 3360562783)
        assert(PlaneMesh._method_get_center_offset_3360562783 != nil)
        let _method_set_orientation_2751399687_name = StringName(from: "set_orientation")
        self._method_set_orientation_2751399687 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_orientation_2751399687_name._native_ptr(), 2751399687)
        assert(PlaneMesh._method_set_orientation_2751399687 != nil)
        let _method_get_orientation_3227599250_name = StringName(from: "get_orientation")
        self._method_get_orientation_3227599250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_orientation_3227599250_name._native_ptr(), 3227599250)
        assert(PlaneMesh._method_get_orientation_3227599250 != nil)
    }

    public func set_size(size: Vector2)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_subdivide_width(subdivide: Int64)  {
        withUnsafePointer(to: subdivide) { subdivide_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subdivide_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_subdivide_width_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_subdivide_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subdivide_width_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_subdivide_depth(subdivide: Int64)  {
        withUnsafePointer(to: subdivide) { subdivide_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subdivide_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_subdivide_depth_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_subdivide_depth() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subdivide_depth_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_center_offset(offset: Vector3)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_center_offset_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_center_offset() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_center_offset_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_orientation(orientation: PlaneMesh.Orientation)  {
        withUnsafePointer(to: orientation.rawValue) { orientation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(orientation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_orientation_2751399687,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_orientation() -> PlaneMesh.Orientation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_orientation_3227599250,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PlaneMesh.Orientation(from: __resPtr.pointee)
    }
}