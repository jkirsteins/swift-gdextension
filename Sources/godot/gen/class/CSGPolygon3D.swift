import godot_native

fileprivate var __godot_name_CSGPolygon3D: StringName! = nil

/// MISSING
/// 
/// MISSING
public class CSGPolygon3D : CSGPrimitive3D {

    public enum Mode : Int32 {
        case MODE_DEPTH = 0
        case MODE_SPIN = 1
        case MODE_PATH = 2
    }
    public enum PathRotation : Int32 {
        case PATH_ROTATION_POLYGON = 0
        case PATH_ROTATION_PATH = 1
        case PATH_ROTATION_PATH_FOLLOW = 2
    }
    public enum PathIntervalType : Int32 {
        case PATH_INTERVAL_DISTANCE = 0
        case PATH_INTERVAL_SUBDIVIDE = 1
    }

    public override class var __godot_name: StringName { __godot_name_CSGPolygon3D }

    static var _method_set_polygon_1509147220: GDExtensionMethodBindPtr! = nil
    static var _method_get_polygon_2961356807: GDExtensionMethodBindPtr! = nil
    static var _method_set_mode_3158377035: GDExtensionMethodBindPtr! = nil
    static var _method_get_mode_1201612222: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_spin_degrees_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_spin_degrees_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_spin_sides_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_spin_sides_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_node_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_node_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_interval_type_3744240707: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_interval_type_3434618397: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_interval_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_interval_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_simplify_angle_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_simplify_angle_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_rotation_1412947288: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_rotation_647219346: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_local_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_path_local_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_continuous_u_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_path_continuous_u_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_u_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_u_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_joined_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_path_joined_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_material_2757459619: GDExtensionMethodBindPtr! = nil
    static var _method_get_material_5934680: GDExtensionMethodBindPtr! = nil
    static var _method_set_smooth_faces_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_smooth_faces_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CSGPolygon3D = StringName(from: "CSGPolygon3D")

        let _method_set_polygon_1509147220_name = StringName(from: "set_polygon")
        self._method_set_polygon_1509147220 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_polygon_1509147220_name._native_ptr(), 1509147220)
        assert(CSGPolygon3D._method_set_polygon_1509147220 != nil)
        let _method_get_polygon_2961356807_name = StringName(from: "get_polygon")
        self._method_get_polygon_2961356807 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_polygon_2961356807_name._native_ptr(), 2961356807)
        assert(CSGPolygon3D._method_get_polygon_2961356807 != nil)
        let _method_set_mode_3158377035_name = StringName(from: "set_mode")
        self._method_set_mode_3158377035 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mode_3158377035_name._native_ptr(), 3158377035)
        assert(CSGPolygon3D._method_set_mode_3158377035 != nil)
        let _method_get_mode_1201612222_name = StringName(from: "get_mode")
        self._method_get_mode_1201612222 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mode_1201612222_name._native_ptr(), 1201612222)
        assert(CSGPolygon3D._method_get_mode_1201612222 != nil)
        let _method_set_depth_373806689_name = StringName(from: "set_depth")
        self._method_set_depth_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_depth_373806689_name._native_ptr(), 373806689)
        assert(CSGPolygon3D._method_set_depth_373806689 != nil)
        let _method_get_depth_1740695150_name = StringName(from: "get_depth")
        self._method_get_depth_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_depth_1740695150_name._native_ptr(), 1740695150)
        assert(CSGPolygon3D._method_get_depth_1740695150 != nil)
        let _method_set_spin_degrees_373806689_name = StringName(from: "set_spin_degrees")
        self._method_set_spin_degrees_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_spin_degrees_373806689_name._native_ptr(), 373806689)
        assert(CSGPolygon3D._method_set_spin_degrees_373806689 != nil)
        let _method_get_spin_degrees_1740695150_name = StringName(from: "get_spin_degrees")
        self._method_get_spin_degrees_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_spin_degrees_1740695150_name._native_ptr(), 1740695150)
        assert(CSGPolygon3D._method_get_spin_degrees_1740695150 != nil)
        let _method_set_spin_sides_1286410249_name = StringName(from: "set_spin_sides")
        self._method_set_spin_sides_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_spin_sides_1286410249_name._native_ptr(), 1286410249)
        assert(CSGPolygon3D._method_set_spin_sides_1286410249 != nil)
        let _method_get_spin_sides_3905245786_name = StringName(from: "get_spin_sides")
        self._method_get_spin_sides_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_spin_sides_3905245786_name._native_ptr(), 3905245786)
        assert(CSGPolygon3D._method_get_spin_sides_3905245786 != nil)
        let _method_set_path_node_1348162250_name = StringName(from: "set_path_node")
        self._method_set_path_node_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_node_1348162250_name._native_ptr(), 1348162250)
        assert(CSGPolygon3D._method_set_path_node_1348162250 != nil)
        let _method_get_path_node_4075236667_name = StringName(from: "get_path_node")
        self._method_get_path_node_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_node_4075236667_name._native_ptr(), 4075236667)
        assert(CSGPolygon3D._method_get_path_node_4075236667 != nil)
        let _method_set_path_interval_type_3744240707_name = StringName(from: "set_path_interval_type")
        self._method_set_path_interval_type_3744240707 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_interval_type_3744240707_name._native_ptr(), 3744240707)
        assert(CSGPolygon3D._method_set_path_interval_type_3744240707 != nil)
        let _method_get_path_interval_type_3434618397_name = StringName(from: "get_path_interval_type")
        self._method_get_path_interval_type_3434618397 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_interval_type_3434618397_name._native_ptr(), 3434618397)
        assert(CSGPolygon3D._method_get_path_interval_type_3434618397 != nil)
        let _method_set_path_interval_373806689_name = StringName(from: "set_path_interval")
        self._method_set_path_interval_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_interval_373806689_name._native_ptr(), 373806689)
        assert(CSGPolygon3D._method_set_path_interval_373806689 != nil)
        let _method_get_path_interval_1740695150_name = StringName(from: "get_path_interval")
        self._method_get_path_interval_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_interval_1740695150_name._native_ptr(), 1740695150)
        assert(CSGPolygon3D._method_get_path_interval_1740695150 != nil)
        let _method_set_path_simplify_angle_373806689_name = StringName(from: "set_path_simplify_angle")
        self._method_set_path_simplify_angle_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_simplify_angle_373806689_name._native_ptr(), 373806689)
        assert(CSGPolygon3D._method_set_path_simplify_angle_373806689 != nil)
        let _method_get_path_simplify_angle_1740695150_name = StringName(from: "get_path_simplify_angle")
        self._method_get_path_simplify_angle_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_simplify_angle_1740695150_name._native_ptr(), 1740695150)
        assert(CSGPolygon3D._method_get_path_simplify_angle_1740695150 != nil)
        let _method_set_path_rotation_1412947288_name = StringName(from: "set_path_rotation")
        self._method_set_path_rotation_1412947288 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_rotation_1412947288_name._native_ptr(), 1412947288)
        assert(CSGPolygon3D._method_set_path_rotation_1412947288 != nil)
        let _method_get_path_rotation_647219346_name = StringName(from: "get_path_rotation")
        self._method_get_path_rotation_647219346 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_rotation_647219346_name._native_ptr(), 647219346)
        assert(CSGPolygon3D._method_get_path_rotation_647219346 != nil)
        let _method_set_path_local_2586408642_name = StringName(from: "set_path_local")
        self._method_set_path_local_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_local_2586408642_name._native_ptr(), 2586408642)
        assert(CSGPolygon3D._method_set_path_local_2586408642 != nil)
        let _method_is_path_local_36873697_name = StringName(from: "is_path_local")
        self._method_is_path_local_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_path_local_36873697_name._native_ptr(), 36873697)
        assert(CSGPolygon3D._method_is_path_local_36873697 != nil)
        let _method_set_path_continuous_u_2586408642_name = StringName(from: "set_path_continuous_u")
        self._method_set_path_continuous_u_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_continuous_u_2586408642_name._native_ptr(), 2586408642)
        assert(CSGPolygon3D._method_set_path_continuous_u_2586408642 != nil)
        let _method_is_path_continuous_u_36873697_name = StringName(from: "is_path_continuous_u")
        self._method_is_path_continuous_u_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_path_continuous_u_36873697_name._native_ptr(), 36873697)
        assert(CSGPolygon3D._method_is_path_continuous_u_36873697 != nil)
        let _method_set_path_u_distance_373806689_name = StringName(from: "set_path_u_distance")
        self._method_set_path_u_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_u_distance_373806689_name._native_ptr(), 373806689)
        assert(CSGPolygon3D._method_set_path_u_distance_373806689 != nil)
        let _method_get_path_u_distance_1740695150_name = StringName(from: "get_path_u_distance")
        self._method_get_path_u_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_u_distance_1740695150_name._native_ptr(), 1740695150)
        assert(CSGPolygon3D._method_get_path_u_distance_1740695150 != nil)
        let _method_set_path_joined_2586408642_name = StringName(from: "set_path_joined")
        self._method_set_path_joined_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_joined_2586408642_name._native_ptr(), 2586408642)
        assert(CSGPolygon3D._method_set_path_joined_2586408642 != nil)
        let _method_is_path_joined_36873697_name = StringName(from: "is_path_joined")
        self._method_is_path_joined_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_path_joined_36873697_name._native_ptr(), 36873697)
        assert(CSGPolygon3D._method_is_path_joined_36873697 != nil)
        let _method_set_material_2757459619_name = StringName(from: "set_material")
        self._method_set_material_2757459619 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_material_2757459619_name._native_ptr(), 2757459619)
        assert(CSGPolygon3D._method_set_material_2757459619 != nil)
        let _method_get_material_5934680_name = StringName(from: "get_material")
        self._method_get_material_5934680 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_material_5934680_name._native_ptr(), 5934680)
        assert(CSGPolygon3D._method_get_material_5934680 != nil)
        let _method_set_smooth_faces_2586408642_name = StringName(from: "set_smooth_faces")
        self._method_set_smooth_faces_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_smooth_faces_2586408642_name._native_ptr(), 2586408642)
        assert(CSGPolygon3D._method_set_smooth_faces_2586408642 != nil)
        let _method_get_smooth_faces_36873697_name = StringName(from: "get_smooth_faces")
        self._method_get_smooth_faces_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_smooth_faces_36873697_name._native_ptr(), 36873697)
        assert(CSGPolygon3D._method_get_smooth_faces_36873697 != nil)
    }

    public func set_polygon(polygon: PackedVector2Array)  {
        let polygon_native = polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(polygon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_polygon_1509147220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_polygon() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_polygon_2961356807,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
    }
    public func set_mode(mode: CSGPolygon3D.Mode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mode_3158377035,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mode() -> CSGPolygon3D.Mode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mode_1201612222,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CSGPolygon3D.Mode(from: __resPtr.pointee)
    }
    public func set_depth(depth: Float64)  {
        withUnsafePointer(to: depth) { depth_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(depth_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_depth() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_spin_degrees(degrees: Float64)  {
        withUnsafePointer(to: degrees) { degrees_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(degrees_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_spin_degrees_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_spin_degrees() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_spin_degrees_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_spin_sides(spin_sides: Int64)  {
        withUnsafePointer(to: spin_sides) { spin_sides_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(spin_sides_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_spin_sides_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_spin_sides() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_spin_sides_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_path_node(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_node_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_path_node() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_node_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(from: __resPtr.pointee)
    }
    public func set_path_interval_type(interval_type: CSGPolygon3D.PathIntervalType)  {
        withUnsafePointer(to: interval_type.rawValue) { interval_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interval_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_interval_type_3744240707,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_path_interval_type() -> CSGPolygon3D.PathIntervalType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_interval_type_3434618397,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CSGPolygon3D.PathIntervalType(from: __resPtr.pointee)
    }
    public func set_path_interval(interval: Float64)  {
        withUnsafePointer(to: interval) { interval_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interval_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_interval_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_path_interval() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_interval_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_path_simplify_angle(degrees: Float64)  {
        withUnsafePointer(to: degrees) { degrees_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(degrees_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_simplify_angle_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_path_simplify_angle() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_simplify_angle_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_path_rotation(path_rotation: CSGPolygon3D.PathRotation)  {
        withUnsafePointer(to: path_rotation.rawValue) { path_rotation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_rotation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_rotation_1412947288,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_path_rotation() -> CSGPolygon3D.PathRotation {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_rotation_647219346,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CSGPolygon3D.PathRotation(from: __resPtr.pointee)
    }
    public func set_path_local(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_local_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_path_local() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_path_local_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_path_continuous_u(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_continuous_u_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_path_continuous_u() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_path_continuous_u_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_path_u_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_u_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_path_u_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_u_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_path_joined(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_joined_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_path_joined() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_path_joined_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_material(material: Material)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_material_2757459619,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_material() -> Material {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_material_5934680,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(from: __resPtr.pointee)
    }
    public func set_smooth_faces(smooth_faces: UInt8)  {
        withUnsafePointer(to: smooth_faces) { smooth_faces_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(smooth_faces_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_smooth_faces_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_smooth_faces() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_smooth_faces_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}