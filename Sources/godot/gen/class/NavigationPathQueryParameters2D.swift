import godot_native

fileprivate var __godot_name_NavigationPathQueryParameters2D: StringName! = nil

/// Parameters to be sent to a 2D navigation path query.
/// 
/// This class contains the start and target position and other parameters to be used with [method NavigationServer2D.query_path].
open class NavigationPathQueryParameters2D : RefCounted {

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

    public override class var __godot_name: StringName { __godot_name_NavigationPathQueryParameters2D }

    static var _method_set_pathfinding_algorithm_2783519915: GDExtensionMethodBindPtr! = nil
    static var _method_get_pathfinding_algorithm_3000421146: GDExtensionMethodBindPtr! = nil
    static var _method_set_path_postprocessing_2864409082: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_postprocessing_3798118993: GDExtensionMethodBindPtr! = nil
    static var _method_set_map_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_get_map_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_start_position_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_start_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_target_position_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_layers_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_layers_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_metadata_flags_24274129: GDExtensionMethodBindPtr! = nil
    static var _method_get_metadata_flags_488152976: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_NavigationPathQueryParameters2D = StringName(from: "NavigationPathQueryParameters2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_pathfinding_algorithm_2783519915_name = StringName(from: "set_pathfinding_algorithm")
        self._method_set_pathfinding_algorithm_2783519915 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_set_pathfinding_algorithm_2783519915_name._native_ptr(), 2783519915)
        assert(NavigationPathQueryParameters2D._method_set_pathfinding_algorithm_2783519915 != nil)
        let _method_get_pathfinding_algorithm_3000421146_name = StringName(from: "get_pathfinding_algorithm")
        self._method_get_pathfinding_algorithm_3000421146 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_get_pathfinding_algorithm_3000421146_name._native_ptr(), 3000421146)
        assert(NavigationPathQueryParameters2D._method_get_pathfinding_algorithm_3000421146 != nil)
        let _method_set_path_postprocessing_2864409082_name = StringName(from: "set_path_postprocessing")
        self._method_set_path_postprocessing_2864409082 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_set_path_postprocessing_2864409082_name._native_ptr(), 2864409082)
        assert(NavigationPathQueryParameters2D._method_set_path_postprocessing_2864409082 != nil)
        let _method_get_path_postprocessing_3798118993_name = StringName(from: "get_path_postprocessing")
        self._method_get_path_postprocessing_3798118993 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_get_path_postprocessing_3798118993_name._native_ptr(), 3798118993)
        assert(NavigationPathQueryParameters2D._method_get_path_postprocessing_3798118993 != nil)
        let _method_set_map_2722037293_name = StringName(from: "set_map")
        self._method_set_map_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_set_map_2722037293_name._native_ptr(), 2722037293)
        assert(NavigationPathQueryParameters2D._method_set_map_2722037293 != nil)
        let _method_get_map_2944877500_name = StringName(from: "get_map")
        self._method_get_map_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_get_map_2944877500_name._native_ptr(), 2944877500)
        assert(NavigationPathQueryParameters2D._method_get_map_2944877500 != nil)
        let _method_set_start_position_743155724_name = StringName(from: "set_start_position")
        self._method_set_start_position_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_set_start_position_743155724_name._native_ptr(), 743155724)
        assert(NavigationPathQueryParameters2D._method_set_start_position_743155724 != nil)
        let _method_get_start_position_3341600327_name = StringName(from: "get_start_position")
        self._method_get_start_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_get_start_position_3341600327_name._native_ptr(), 3341600327)
        assert(NavigationPathQueryParameters2D._method_get_start_position_3341600327 != nil)
        let _method_set_target_position_743155724_name = StringName(from: "set_target_position")
        self._method_set_target_position_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_set_target_position_743155724_name._native_ptr(), 743155724)
        assert(NavigationPathQueryParameters2D._method_set_target_position_743155724 != nil)
        let _method_get_target_position_3341600327_name = StringName(from: "get_target_position")
        self._method_get_target_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_get_target_position_3341600327_name._native_ptr(), 3341600327)
        assert(NavigationPathQueryParameters2D._method_get_target_position_3341600327 != nil)
        let _method_set_navigation_layers_1286410249_name = StringName(from: "set_navigation_layers")
        self._method_set_navigation_layers_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_set_navigation_layers_1286410249_name._native_ptr(), 1286410249)
        assert(NavigationPathQueryParameters2D._method_set_navigation_layers_1286410249 != nil)
        let _method_get_navigation_layers_3905245786_name = StringName(from: "get_navigation_layers")
        self._method_get_navigation_layers_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_get_navigation_layers_3905245786_name._native_ptr(), 3905245786)
        assert(NavigationPathQueryParameters2D._method_get_navigation_layers_3905245786 != nil)
        let _method_set_metadata_flags_24274129_name = StringName(from: "set_metadata_flags")
        self._method_set_metadata_flags_24274129 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_set_metadata_flags_24274129_name._native_ptr(), 24274129)
        assert(NavigationPathQueryParameters2D._method_set_metadata_flags_24274129 != nil)
        let _method_get_metadata_flags_488152976_name = StringName(from: "get_metadata_flags")
        self._method_get_metadata_flags_488152976 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationPathQueryParameters2D._native_ptr(), _method_get_metadata_flags_488152976_name._native_ptr(), 488152976)
        assert(NavigationPathQueryParameters2D._method_get_metadata_flags_488152976 != nil)
    }

    public func set_pathfinding_algorithm(pathfinding_algorithm: NavigationPathQueryParameters2D.PathfindingAlgorithm)  {
        withUnsafePointer(to: pathfinding_algorithm.rawValue) { pathfinding_algorithm_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pathfinding_algorithm_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pathfinding_algorithm_2783519915,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pathfinding_algorithm() -> NavigationPathQueryParameters2D.PathfindingAlgorithm {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pathfinding_algorithm_3000421146,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationPathQueryParameters2D.PathfindingAlgorithm(godot: __resPtr.pointee)
    }
    public func set_path_postprocessing(path_postprocessing: NavigationPathQueryParameters2D.PathPostProcessing)  {
        withUnsafePointer(to: path_postprocessing.rawValue) { path_postprocessing_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_postprocessing_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_path_postprocessing_2864409082,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_path_postprocessing() -> NavigationPathQueryParameters2D.PathPostProcessing {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_postprocessing_3798118993,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationPathQueryParameters2D.PathPostProcessing(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
    }
    public func set_start_position(start_position: Vector2)  {
        let start_position_native = start_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(start_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_start_position_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_start_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_start_position_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_target_position(target_position: Vector2)  {
        let target_position_native = target_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(target_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_target_position_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_target_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_target_position_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
    }
    public func set_metadata_flags(flags: NavigationPathQueryParameters2D.PathMetadataFlags)  {
        withUnsafePointer(to: flags.rawValue) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_metadata_flags_24274129,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_metadata_flags() -> NavigationPathQueryParameters2D.PathMetadataFlags {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_metadata_flags_488152976,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationPathQueryParameters2D.PathMetadataFlags(godot: __resPtr.pointee)
    }
}