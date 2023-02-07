import godot_native

fileprivate var __godot_name_NavigationPathQueryParameters3D: StringName! = nil

/// Parameters to be sent to a 3D navigation path query.
/// 
/// This class contains the start and target position and other parameters to be used with [method NavigationServer3D.query_path].
public class NavigationPathQueryParameters3D : RefCounted {

    public enum PathfindingAlgorithm : Int32 {
        case PATHFINDING_ALGORITHM_ASTAR = 0
    }
    public enum PathPostProcessing : Int32 {
        case PATH_POSTPROCESSING_CORRIDORFUNNEL = 0
        case PATH_POSTPROCESSING_EDGECENTERED = 1
    }
    public struct PathMetadataFlags: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let PATH_METADATA_INCLUDE_NONE: PathMetadataFlags = []
        static let PATH_METADATA_INCLUDE_TYPES = PathMetadataFlags(rawValue: 1)
        static let PATH_METADATA_INCLUDE_RIDS = PathMetadataFlags(rawValue: 2)
        static let PATH_METADATA_INCLUDE_OWNERS = PathMetadataFlags(rawValue: 4)
        static let PATH_METADATA_INCLUDE_ALL = PathMetadataFlags(rawValue: 7)
    }

    public override class var __godot_name: StringName { __godot_name_NavigationPathQueryParameters3D }

    static var _method_set_pathfinding_algorithm_394560454: GDExtensionMethodBindPtr! = nil
    static var _method_get_pathfinding_algorithm_3398491350: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_postprocessing_2267362344: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_postprocessing_3883858360: GDExtensionMethodBindPtr! = nil
    static var _method_set_map_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_get_map_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_start_position_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_start_position_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_target_position_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_position_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_layers_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_layers_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_metadata_flags_2713846708: GDExtensionMethodBindPtr! = nil
    static var _method_get_metadata_flags_1582332802: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_NavigationPathQueryParameters3D = StringName(from: "NavigationPathQueryParameters3D")

        let _method_set_pathfinding_algorithm_394560454_name = StringName(from: "set_pathfinding_algorithm")
        self._method_set_pathfinding_algorithm_394560454 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pathfinding_algorithm_394560454_name._native_ptr(), 394560454)
        assert(NavigationPathQueryParameters3D._method_set_pathfinding_algorithm_394560454 != nil)
        let _method_get_pathfinding_algorithm_3398491350_name = StringName(from: "get_pathfinding_algorithm")
        self._method_get_pathfinding_algorithm_3398491350 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pathfinding_algorithm_3398491350_name._native_ptr(), 3398491350)
        assert(NavigationPathQueryParameters3D._method_get_pathfinding_algorithm_3398491350 != nil)
        let _method_set_path_postprocessing_2267362344_name = StringName(from: "set_path_postprocessing")
        self._method_set_path_postprocessing_2267362344 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_path_postprocessing_2267362344_name._native_ptr(), 2267362344)
        assert(NavigationPathQueryParameters3D._method_set_path_postprocessing_2267362344 != nil)
        let _method_get_path_postprocessing_3883858360_name = StringName(from: "get_path_postprocessing")
        self._method_get_path_postprocessing_3883858360 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_postprocessing_3883858360_name._native_ptr(), 3883858360)
        assert(NavigationPathQueryParameters3D._method_get_path_postprocessing_3883858360 != nil)
        let _method_set_map_2722037293_name = StringName(from: "set_map")
        self._method_set_map_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_map_2722037293_name._native_ptr(), 2722037293)
        assert(NavigationPathQueryParameters3D._method_set_map_2722037293 != nil)
        let _method_get_map_2944877500_name = StringName(from: "get_map")
        self._method_get_map_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_map_2944877500_name._native_ptr(), 2944877500)
        assert(NavigationPathQueryParameters3D._method_get_map_2944877500 != nil)
        let _method_set_start_position_3460891852_name = StringName(from: "set_start_position")
        self._method_set_start_position_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_start_position_3460891852_name._native_ptr(), 3460891852)
        assert(NavigationPathQueryParameters3D._method_set_start_position_3460891852 != nil)
        let _method_get_start_position_3360562783_name = StringName(from: "get_start_position")
        self._method_get_start_position_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_start_position_3360562783_name._native_ptr(), 3360562783)
        assert(NavigationPathQueryParameters3D._method_get_start_position_3360562783 != nil)
        let _method_set_target_position_3460891852_name = StringName(from: "set_target_position")
        self._method_set_target_position_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_target_position_3460891852_name._native_ptr(), 3460891852)
        assert(NavigationPathQueryParameters3D._method_set_target_position_3460891852 != nil)
        let _method_get_target_position_3360562783_name = StringName(from: "get_target_position")
        self._method_get_target_position_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_target_position_3360562783_name._native_ptr(), 3360562783)
        assert(NavigationPathQueryParameters3D._method_get_target_position_3360562783 != nil)
        let _method_set_navigation_layers_1286410249_name = StringName(from: "set_navigation_layers")
        self._method_set_navigation_layers_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_navigation_layers_1286410249_name._native_ptr(), 1286410249)
        assert(NavigationPathQueryParameters3D._method_set_navigation_layers_1286410249 != nil)
        let _method_get_navigation_layers_3905245786_name = StringName(from: "get_navigation_layers")
        self._method_get_navigation_layers_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_navigation_layers_3905245786_name._native_ptr(), 3905245786)
        assert(NavigationPathQueryParameters3D._method_get_navigation_layers_3905245786 != nil)
        let _method_set_metadata_flags_2713846708_name = StringName(from: "set_metadata_flags")
        self._method_set_metadata_flags_2713846708 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_metadata_flags_2713846708_name._native_ptr(), 2713846708)
        assert(NavigationPathQueryParameters3D._method_set_metadata_flags_2713846708 != nil)
        let _method_get_metadata_flags_1582332802_name = StringName(from: "get_metadata_flags")
        self._method_get_metadata_flags_1582332802 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_metadata_flags_1582332802_name._native_ptr(), 1582332802)
        assert(NavigationPathQueryParameters3D._method_get_metadata_flags_1582332802 != nil)
    }

    public func set_pathfinding_algorithm(pathfinding_algorithm: NavigationPathQueryParameters3D.PathfindingAlgorithm)  {
        withUnsafePointer(to: pathfinding_algorithm.rawValue) { pathfinding_algorithm_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pathfinding_algorithm_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pathfinding_algorithm_394560454,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pathfinding_algorithm() -> NavigationPathQueryParameters3D.PathfindingAlgorithm {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pathfinding_algorithm_3398491350,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationPathQueryParameters3D.PathfindingAlgorithm(from: __resPtr.pointee)
    }
    public func set_path_postprocessing(path_postprocessing: NavigationPathQueryParameters3D.PathPostProcessing)  {
        withUnsafePointer(to: path_postprocessing.rawValue) { path_postprocessing_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_postprocessing_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_postprocessing_2267362344,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_path_postprocessing() -> NavigationPathQueryParameters3D.PathPostProcessing {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_postprocessing_3883858360,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationPathQueryParameters3D.PathPostProcessing(from: __resPtr.pointee)
    }
    public func set_map(map: RID)  {
        let map_native = map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(map_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_map_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_map() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_map_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func set_start_position(start_position: Vector3)  {
        let start_position_native = start_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_start_position_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_start_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_start_position_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_target_position(target_position: Vector3)  {
        let target_position_native = target_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(target_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_target_position_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_target_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_target_position_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_navigation_layers(navigation_layers: Int64)  {
        withUnsafePointer(to: navigation_layers) { navigation_layers_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(navigation_layers_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_navigation_layers_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_navigation_layers() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_layers_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_metadata_flags(flags: NavigationPathQueryParameters3D.PathMetadataFlags)  {
        withUnsafePointer(to: flags.rawValue) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_metadata_flags_2713846708,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_metadata_flags() -> NavigationPathQueryParameters3D.PathMetadataFlags {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_metadata_flags_1582332802,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationPathQueryParameters3D.PathMetadataFlags(from: __resPtr.pointee)
    }
}