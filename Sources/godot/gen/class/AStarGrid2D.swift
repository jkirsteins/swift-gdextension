import godot_native

fileprivate var __godot_name_AStarGrid2D: StringName! = nil

/// A* (or "A-Star") pathfinding tailored to find the shortest paths on 2D grids.
/// 
/// Compared to [AStar2D] you don't need to manually create points or connect them together. It also supports multiple type of heuristics and modes for diagonal movement. This class also provides a jumping mode which is faster to calculate than without it in the [AStar2D] class.
///  
/// In contrast to [AStar2D], you only need set the [member size] of the grid, optionally set the [member cell_size] and then call the [method update] method:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var astar_grid = AStarGrid2D.new()
///  
/// astar_grid.size = Vector2i(32, 32)
///  
/// astar_grid.cell_size = Vector2(16, 16)
///  
/// astar_grid.update()
///  
/// print(astar_grid.get_id_path(Vector2i(0, 0), Vector2i(3, 4))) # prints (0, 0), (1, 1), (2, 2), (3, 3), (3, 4)
///  
/// print(astar_grid.get_point_path(Vector2i(0, 0), Vector2i(3, 4))) # prints (0, 0), (16, 16), (32, 32), (48, 48), (48, 64)
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// AStarGrid2D astarGrid = new AStarGrid2D();
///  
/// astarGrid.Size = new Vector2I(32, 32);
///  
/// astarGrid.CellSize = new Vector2I(16, 16);
///  
/// astarGrid.Update();
///  
/// GD.Print(astarGrid.GetIdPath(Vector2I.Zero, new Vector2I(3, 4))); // prints (0, 0), (1, 1), (2, 2), (3, 3), (3, 4)
///  
/// GD.Print(astarGrid.GetPointPath(Vector2I.Zero, new Vector2I(3, 4))); // prints (0, 0), (16, 16), (32, 32), (48, 48), (48, 64)
///  
/// [/csharp]
///  
/// [/codeblocks]
public class AStarGrid2D : RefCounted {

    public enum Heuristic : Int32 {
        case HEURISTIC_EUCLIDEAN = 0
        case HEURISTIC_MANHATTAN = 1
        case HEURISTIC_OCTILE = 2
        case HEURISTIC_CHEBYSHEV = 3
        case HEURISTIC_MAX = 4
    }
    public enum DiagonalMode : Int32 {
        case DIAGONAL_MODE_ALWAYS = 0
        case DIAGONAL_MODE_NEVER = 1
        case DIAGONAL_MODE_AT_LEAST_ONE_WALKABLE = 2
        case DIAGONAL_MODE_ONLY_IF_NO_OBSTACLES = 3
        case DIAGONAL_MODE_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_AStarGrid2D }

    static var _method__estimate_cost_0: GDExtensionMethodBindPtr! = nil
    static var _method__compute_cost_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_size_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_set_offset_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_offset_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_cell_size_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_cell_size_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_is_in_bounds_2522259332: GDExtensionMethodBindPtr! = nil
    static var _method_is_in_boundsv_3900751641: GDExtensionMethodBindPtr! = nil
    static var _method_is_dirty_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_update_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_jumping_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_jumping_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_diagonal_mode_1017829798: GDExtensionMethodBindPtr! = nil
    static var _method_get_diagonal_mode_3129282674: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_compute_heuristic_1044375519: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_compute_heuristic_2074731422: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_estimate_heuristic_1044375519: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_estimate_heuristic_2074731422: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_solid_2825551965: GDExtensionMethodBindPtr! = nil
    static var _method_is_point_solid_3900751641: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_weight_scale_2262553149: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_weight_scale_719993801: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_position_108438297: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_path_690373547: GDExtensionMethodBindPtr! = nil
    static var _method_get_id_path_1989391000: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AStarGrid2D = StringName(from: "AStarGrid2D")

        let _method_set_size_1130785943_name = StringName(from: "set_size")
        self._method_set_size_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_1130785943_name._native_ptr(), 1130785943)
        assert(AStarGrid2D._method_set_size_1130785943 != nil)
        let _method_get_size_3690982128_name = StringName(from: "get_size")
        self._method_get_size_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3690982128_name._native_ptr(), 3690982128)
        assert(AStarGrid2D._method_get_size_3690982128 != nil)
        let _method_set_offset_743155724_name = StringName(from: "set_offset")
        self._method_set_offset_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_offset_743155724_name._native_ptr(), 743155724)
        assert(AStarGrid2D._method_set_offset_743155724 != nil)
        let _method_get_offset_3341600327_name = StringName(from: "get_offset")
        self._method_get_offset_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_offset_3341600327_name._native_ptr(), 3341600327)
        assert(AStarGrid2D._method_get_offset_3341600327 != nil)
        let _method_set_cell_size_743155724_name = StringName(from: "set_cell_size")
        self._method_set_cell_size_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cell_size_743155724_name._native_ptr(), 743155724)
        assert(AStarGrid2D._method_set_cell_size_743155724 != nil)
        let _method_get_cell_size_3341600327_name = StringName(from: "get_cell_size")
        self._method_get_cell_size_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cell_size_3341600327_name._native_ptr(), 3341600327)
        assert(AStarGrid2D._method_get_cell_size_3341600327 != nil)
        let _method_is_in_bounds_2522259332_name = StringName(from: "is_in_bounds")
        self._method_is_in_bounds_2522259332 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_in_bounds_2522259332_name._native_ptr(), 2522259332)
        assert(AStarGrid2D._method_is_in_bounds_2522259332 != nil)
        let _method_is_in_boundsv_3900751641_name = StringName(from: "is_in_boundsv")
        self._method_is_in_boundsv_3900751641 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_in_boundsv_3900751641_name._native_ptr(), 3900751641)
        assert(AStarGrid2D._method_is_in_boundsv_3900751641 != nil)
        let _method_is_dirty_36873697_name = StringName(from: "is_dirty")
        self._method_is_dirty_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_dirty_36873697_name._native_ptr(), 36873697)
        assert(AStarGrid2D._method_is_dirty_36873697 != nil)
        let _method_update_3218959716_name = StringName(from: "update")
        self._method_update_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_update_3218959716_name._native_ptr(), 3218959716)
        assert(AStarGrid2D._method_update_3218959716 != nil)
        let _method_set_jumping_enabled_2586408642_name = StringName(from: "set_jumping_enabled")
        self._method_set_jumping_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_jumping_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(AStarGrid2D._method_set_jumping_enabled_2586408642 != nil)
        let _method_is_jumping_enabled_36873697_name = StringName(from: "is_jumping_enabled")
        self._method_is_jumping_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_jumping_enabled_36873697_name._native_ptr(), 36873697)
        assert(AStarGrid2D._method_is_jumping_enabled_36873697 != nil)
        let _method_set_diagonal_mode_1017829798_name = StringName(from: "set_diagonal_mode")
        self._method_set_diagonal_mode_1017829798 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_diagonal_mode_1017829798_name._native_ptr(), 1017829798)
        assert(AStarGrid2D._method_set_diagonal_mode_1017829798 != nil)
        let _method_get_diagonal_mode_3129282674_name = StringName(from: "get_diagonal_mode")
        self._method_get_diagonal_mode_3129282674 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_diagonal_mode_3129282674_name._native_ptr(), 3129282674)
        assert(AStarGrid2D._method_get_diagonal_mode_3129282674 != nil)
        let _method_set_default_compute_heuristic_1044375519_name = StringName(from: "set_default_compute_heuristic")
        self._method_set_default_compute_heuristic_1044375519 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_compute_heuristic_1044375519_name._native_ptr(), 1044375519)
        assert(AStarGrid2D._method_set_default_compute_heuristic_1044375519 != nil)
        let _method_get_default_compute_heuristic_2074731422_name = StringName(from: "get_default_compute_heuristic")
        self._method_get_default_compute_heuristic_2074731422 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_compute_heuristic_2074731422_name._native_ptr(), 2074731422)
        assert(AStarGrid2D._method_get_default_compute_heuristic_2074731422 != nil)
        let _method_set_default_estimate_heuristic_1044375519_name = StringName(from: "set_default_estimate_heuristic")
        self._method_set_default_estimate_heuristic_1044375519 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_estimate_heuristic_1044375519_name._native_ptr(), 1044375519)
        assert(AStarGrid2D._method_set_default_estimate_heuristic_1044375519 != nil)
        let _method_get_default_estimate_heuristic_2074731422_name = StringName(from: "get_default_estimate_heuristic")
        self._method_get_default_estimate_heuristic_2074731422 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_estimate_heuristic_2074731422_name._native_ptr(), 2074731422)
        assert(AStarGrid2D._method_get_default_estimate_heuristic_2074731422 != nil)
        let _method_set_point_solid_2825551965_name = StringName(from: "set_point_solid")
        self._method_set_point_solid_2825551965 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_solid_2825551965_name._native_ptr(), 2825551965)
        assert(AStarGrid2D._method_set_point_solid_2825551965 != nil)
        let _method_is_point_solid_3900751641_name = StringName(from: "is_point_solid")
        self._method_is_point_solid_3900751641 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_point_solid_3900751641_name._native_ptr(), 3900751641)
        assert(AStarGrid2D._method_is_point_solid_3900751641 != nil)
        let _method_set_point_weight_scale_2262553149_name = StringName(from: "set_point_weight_scale")
        self._method_set_point_weight_scale_2262553149 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_weight_scale_2262553149_name._native_ptr(), 2262553149)
        assert(AStarGrid2D._method_set_point_weight_scale_2262553149 != nil)
        let _method_get_point_weight_scale_719993801_name = StringName(from: "get_point_weight_scale")
        self._method_get_point_weight_scale_719993801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_weight_scale_719993801_name._native_ptr(), 719993801)
        assert(AStarGrid2D._method_get_point_weight_scale_719993801 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(AStarGrid2D._method_clear_3218959716 != nil)
        let _method_get_point_position_108438297_name = StringName(from: "get_point_position")
        self._method_get_point_position_108438297 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_position_108438297_name._native_ptr(), 108438297)
        assert(AStarGrid2D._method_get_point_position_108438297 != nil)
        let _method_get_point_path_690373547_name = StringName(from: "get_point_path")
        self._method_get_point_path_690373547 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_path_690373547_name._native_ptr(), 690373547)
        assert(AStarGrid2D._method_get_point_path_690373547 != nil)
        let _method_get_id_path_1989391000_name = StringName(from: "get_id_path")
        self._method_get_id_path_1989391000 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_id_path_1989391000_name._native_ptr(), 1989391000)
        assert(AStarGrid2D._method_get_id_path_1989391000 != nil)
    }

    public func _estimate_cost(from_id: Vector2i, to_id: Vector2i) -> Float64 {
        let to_id_native = to_id._native_ptr()
        let from_id_native = from_id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_id_native), .init(to_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__estimate_cost_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _compute_cost(from_id: Vector2i, to_id: Vector2i) -> Float64 {
        let to_id_native = to_id._native_ptr()
        let from_id_native = from_id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_id_native), .init(to_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__compute_cost_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_size(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func set_offset(offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_offset_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_offset() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_offset_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func set_cell_size(cell_size: Vector2)  {
        let cell_size_native = cell_size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cell_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cell_size_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_cell_size() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cell_size_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func is_in_bounds(x: Int64, y: Int64) -> UInt8 {
        withUnsafePointer(to: y) { y_native in
        withUnsafePointer(to: x) { x_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(x_native), .init(y_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_in_bounds_2522259332,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func is_in_boundsv(id: Vector2i) -> UInt8 {
        let id_native = id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_in_boundsv_3900751641,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_dirty() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_dirty_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func update()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_update_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_jumping_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_jumping_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_jumping_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_jumping_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_diagonal_mode(mode: AStarGrid2D.DiagonalMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_diagonal_mode_1017829798,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_diagonal_mode() -> AStarGrid2D.DiagonalMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_diagonal_mode_3129282674,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AStarGrid2D.DiagonalMode(from: __resPtr.pointee)
    }
    public func set_default_compute_heuristic(heuristic: AStarGrid2D.Heuristic)  {
        withUnsafePointer(to: heuristic.rawValue) { heuristic_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(heuristic_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_compute_heuristic_1044375519,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_compute_heuristic() -> AStarGrid2D.Heuristic {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_compute_heuristic_2074731422,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AStarGrid2D.Heuristic(from: __resPtr.pointee)
    }
    public func set_default_estimate_heuristic(heuristic: AStarGrid2D.Heuristic)  {
        withUnsafePointer(to: heuristic.rawValue) { heuristic_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(heuristic_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_estimate_heuristic_1044375519,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_estimate_heuristic() -> AStarGrid2D.Heuristic {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_estimate_heuristic_2074731422,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AStarGrid2D.Heuristic(from: __resPtr.pointee)
    }
    public func set_point_solid(id: Vector2i, solid: UInt8)  {
        withUnsafePointer(to: solid) { solid_native in
        let id_native = id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(solid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_solid_2825551965,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_point_solid(id: Vector2i) -> UInt8 {
        let id_native = id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_point_solid_3900751641,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_point_weight_scale(id: Vector2i, weight_scale: Float64)  {
        withUnsafePointer(to: weight_scale) { weight_scale_native in
        let id_native = id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(weight_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_weight_scale_2262553149,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_point_weight_scale(id: Vector2i) -> Float64 {
        let id_native = id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_weight_scale_719993801,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_point_position(id: Vector2i) -> Vector2 {
        let id_native = id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_position_108438297,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_point_path(from_id: Vector2i, to_id: Vector2i) -> PackedVector2Array {
        let to_id_native = to_id._native_ptr()
        let from_id_native = from_id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_id_native), .init(to_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_path_690373547,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(from: __resPtr.pointee)
    }
    public func get_id_path(from_id: Vector2i, to_id: Vector2i) -> [Vector2i] {
        let to_id_native = to_id._native_ptr()
        let from_id_native = from_id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_id_native), .init(to_id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_id_path_1989391000,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Vector2i](from: __resPtr.pointee)
    }
}