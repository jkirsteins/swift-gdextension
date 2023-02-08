import godot_native

fileprivate var __godot_name_AnimationNodeBlendSpace2D: StringName! = nil

/// Blends linearly between three [AnimationNode] of any type placed in a 2D space.
/// 
/// A resource to add to an [AnimationNodeBlendTree].
///  
/// This node allows you to blend linearly between three animations using a [Vector2] weight.
///  
/// You can add vertices to the blend space with [method add_blend_point] and automatically triangulate it by setting [member auto_triangles] to [code]true[/code]. Otherwise, use [method add_triangle] and [method remove_triangle] to create up the blend space by hand.
open class AnimationNodeBlendSpace2D : AnimationRootNode {

    public enum BlendMode : Int32 {
        case BLEND_MODE_INTERPOLATED = 0
        case BLEND_MODE_DISCRETE = 1
        case BLEND_MODE_DISCRETE_CARRY = 2
    }

    public override class var __godot_name: StringName { __godot_name_AnimationNodeBlendSpace2D }

    static var _method_add_blend_point_1533588937: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_point_position_163021252: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_point_position_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_point_node_4240341528: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_point_node_665599029: GDExtensionMethodBindPtr! = nil
    static var _method_remove_blend_point_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_point_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_triangle_642454959: GDExtensionMethodBindPtr! = nil
    static var _method_get_triangle_point_50157827: GDExtensionMethodBindPtr! = nil
    static var _method_remove_triangle_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_triangle_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_min_space_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_min_space_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_space_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_space_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_snap_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_snap_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_x_label_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_x_label_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_y_label_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_y_label_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_auto_triangles_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_auto_triangles_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_mode_81193520: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_mode_1398433632: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_sync_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_sync_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AnimationNodeBlendSpace2D = StringName(from: "AnimationNodeBlendSpace2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_add_blend_point_1533588937_name = StringName(from: "add_blend_point")
        self._method_add_blend_point_1533588937 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_add_blend_point_1533588937_name._native_ptr(), 1533588937)
        assert(AnimationNodeBlendSpace2D._method_add_blend_point_1533588937 != nil)
        let _method_set_blend_point_position_163021252_name = StringName(from: "set_blend_point_position")
        self._method_set_blend_point_position_163021252 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_set_blend_point_position_163021252_name._native_ptr(), 163021252)
        assert(AnimationNodeBlendSpace2D._method_set_blend_point_position_163021252 != nil)
        let _method_get_blend_point_position_2299179447_name = StringName(from: "get_blend_point_position")
        self._method_get_blend_point_position_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_get_blend_point_position_2299179447_name._native_ptr(), 2299179447)
        assert(AnimationNodeBlendSpace2D._method_get_blend_point_position_2299179447 != nil)
        let _method_set_blend_point_node_4240341528_name = StringName(from: "set_blend_point_node")
        self._method_set_blend_point_node_4240341528 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_set_blend_point_node_4240341528_name._native_ptr(), 4240341528)
        assert(AnimationNodeBlendSpace2D._method_set_blend_point_node_4240341528 != nil)
        let _method_get_blend_point_node_665599029_name = StringName(from: "get_blend_point_node")
        self._method_get_blend_point_node_665599029 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_get_blend_point_node_665599029_name._native_ptr(), 665599029)
        assert(AnimationNodeBlendSpace2D._method_get_blend_point_node_665599029 != nil)
        let _method_remove_blend_point_1286410249_name = StringName(from: "remove_blend_point")
        self._method_remove_blend_point_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_remove_blend_point_1286410249_name._native_ptr(), 1286410249)
        assert(AnimationNodeBlendSpace2D._method_remove_blend_point_1286410249 != nil)
        let _method_get_blend_point_count_3905245786_name = StringName(from: "get_blend_point_count")
        self._method_get_blend_point_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_get_blend_point_count_3905245786_name._native_ptr(), 3905245786)
        assert(AnimationNodeBlendSpace2D._method_get_blend_point_count_3905245786 != nil)
        let _method_add_triangle_642454959_name = StringName(from: "add_triangle")
        self._method_add_triangle_642454959 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_add_triangle_642454959_name._native_ptr(), 642454959)
        assert(AnimationNodeBlendSpace2D._method_add_triangle_642454959 != nil)
        let _method_get_triangle_point_50157827_name = StringName(from: "get_triangle_point")
        self._method_get_triangle_point_50157827 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_get_triangle_point_50157827_name._native_ptr(), 50157827)
        assert(AnimationNodeBlendSpace2D._method_get_triangle_point_50157827 != nil)
        let _method_remove_triangle_1286410249_name = StringName(from: "remove_triangle")
        self._method_remove_triangle_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_remove_triangle_1286410249_name._native_ptr(), 1286410249)
        assert(AnimationNodeBlendSpace2D._method_remove_triangle_1286410249 != nil)
        let _method_get_triangle_count_3905245786_name = StringName(from: "get_triangle_count")
        self._method_get_triangle_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_get_triangle_count_3905245786_name._native_ptr(), 3905245786)
        assert(AnimationNodeBlendSpace2D._method_get_triangle_count_3905245786 != nil)
        let _method_set_min_space_743155724_name = StringName(from: "set_min_space")
        self._method_set_min_space_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_set_min_space_743155724_name._native_ptr(), 743155724)
        assert(AnimationNodeBlendSpace2D._method_set_min_space_743155724 != nil)
        let _method_get_min_space_3341600327_name = StringName(from: "get_min_space")
        self._method_get_min_space_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_get_min_space_3341600327_name._native_ptr(), 3341600327)
        assert(AnimationNodeBlendSpace2D._method_get_min_space_3341600327 != nil)
        let _method_set_max_space_743155724_name = StringName(from: "set_max_space")
        self._method_set_max_space_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_set_max_space_743155724_name._native_ptr(), 743155724)
        assert(AnimationNodeBlendSpace2D._method_set_max_space_743155724 != nil)
        let _method_get_max_space_3341600327_name = StringName(from: "get_max_space")
        self._method_get_max_space_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_get_max_space_3341600327_name._native_ptr(), 3341600327)
        assert(AnimationNodeBlendSpace2D._method_get_max_space_3341600327 != nil)
        let _method_set_snap_743155724_name = StringName(from: "set_snap")
        self._method_set_snap_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_set_snap_743155724_name._native_ptr(), 743155724)
        assert(AnimationNodeBlendSpace2D._method_set_snap_743155724 != nil)
        let _method_get_snap_3341600327_name = StringName(from: "get_snap")
        self._method_get_snap_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_get_snap_3341600327_name._native_ptr(), 3341600327)
        assert(AnimationNodeBlendSpace2D._method_get_snap_3341600327 != nil)
        let _method_set_x_label_83702148_name = StringName(from: "set_x_label")
        self._method_set_x_label_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_set_x_label_83702148_name._native_ptr(), 83702148)
        assert(AnimationNodeBlendSpace2D._method_set_x_label_83702148 != nil)
        let _method_get_x_label_201670096_name = StringName(from: "get_x_label")
        self._method_get_x_label_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_get_x_label_201670096_name._native_ptr(), 201670096)
        assert(AnimationNodeBlendSpace2D._method_get_x_label_201670096 != nil)
        let _method_set_y_label_83702148_name = StringName(from: "set_y_label")
        self._method_set_y_label_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_set_y_label_83702148_name._native_ptr(), 83702148)
        assert(AnimationNodeBlendSpace2D._method_set_y_label_83702148 != nil)
        let _method_get_y_label_201670096_name = StringName(from: "get_y_label")
        self._method_get_y_label_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_get_y_label_201670096_name._native_ptr(), 201670096)
        assert(AnimationNodeBlendSpace2D._method_get_y_label_201670096 != nil)
        let _method_set_auto_triangles_2586408642_name = StringName(from: "set_auto_triangles")
        self._method_set_auto_triangles_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_set_auto_triangles_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationNodeBlendSpace2D._method_set_auto_triangles_2586408642 != nil)
        let _method_get_auto_triangles_36873697_name = StringName(from: "get_auto_triangles")
        self._method_get_auto_triangles_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_get_auto_triangles_36873697_name._native_ptr(), 36873697)
        assert(AnimationNodeBlendSpace2D._method_get_auto_triangles_36873697 != nil)
        let _method_set_blend_mode_81193520_name = StringName(from: "set_blend_mode")
        self._method_set_blend_mode_81193520 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_set_blend_mode_81193520_name._native_ptr(), 81193520)
        assert(AnimationNodeBlendSpace2D._method_set_blend_mode_81193520 != nil)
        let _method_get_blend_mode_1398433632_name = StringName(from: "get_blend_mode")
        self._method_get_blend_mode_1398433632 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_get_blend_mode_1398433632_name._native_ptr(), 1398433632)
        assert(AnimationNodeBlendSpace2D._method_get_blend_mode_1398433632 != nil)
        let _method_set_use_sync_2586408642_name = StringName(from: "set_use_sync")
        self._method_set_use_sync_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_set_use_sync_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationNodeBlendSpace2D._method_set_use_sync_2586408642 != nil)
        let _method_is_using_sync_36873697_name = StringName(from: "is_using_sync")
        self._method_is_using_sync_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace2D._native_ptr(), _method_is_using_sync_36873697_name._native_ptr(), 36873697)
        assert(AnimationNodeBlendSpace2D._method_is_using_sync_36873697 != nil)
    }

    public func add_blend_point(node: AnimationRootNode, pos: Vector2, at_index: Int64)  {
        withUnsafePointer(to: at_index) { at_index_native in
        let pos_native = pos._native_ptr()
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native), .init(pos_native), .init(at_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_blend_point_1533588937,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_blend_point_position(point: Int64, pos: Vector2)  {
        withUnsafePointer(to: point) { point_native in
        let pos_native = pos._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(pos_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_point_position_163021252,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_blend_point_position(point: Int64) -> Vector2 {
        withUnsafePointer(to: point) { point_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_point_position_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func set_blend_point_node(point: Int64, node: AnimationRootNode)  {
        withUnsafePointer(to: point) { point_native in
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_point_node_4240341528,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_blend_point_node(point: Int64) -> AnimationRootNode {
        withUnsafePointer(to: point) { point_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_point_node_665599029,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationRootNode(godot: __resPtr.pointee)
        }
    }
    public func remove_blend_point(point: Int64)  {
        withUnsafePointer(to: point) { point_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_blend_point_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_blend_point_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_point_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func add_triangle(x: Int64, y: Int64, z: Int64, at_index: Int64)  {
        withUnsafePointer(to: at_index) { at_index_native in
        withUnsafePointer(to: z) { z_native in
        withUnsafePointer(to: y) { y_native in
        withUnsafePointer(to: x) { x_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(x_native), .init(y_native), .init(z_native), .init(at_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_triangle_642454959,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func get_triangle_point(triangle: Int64, point: Int64) -> Int64 {
        withUnsafePointer(to: point) { point_native in
        withUnsafePointer(to: triangle) { triangle_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(triangle_native), .init(point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_triangle_point_50157827,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func remove_triangle(triangle: Int64)  {
        withUnsafePointer(to: triangle) { triangle_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(triangle_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_triangle_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_triangle_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_triangle_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_min_space(min_space: Vector2)  {
        let min_space_native = min_space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(min_space_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_min_space_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_min_space() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_min_space_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_max_space(max_space: Vector2)  {
        let max_space_native = max_space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_space_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_space_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_max_space() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_space_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_snap(snap: Vector2)  {
        let snap_native = snap._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(snap_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_snap_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_snap() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_snap_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_x_label(text: godot.String)  {
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_x_label_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_x_label() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_x_label_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_y_label(text: godot.String)  {
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_y_label_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_y_label() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_y_label_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_auto_triangles(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_auto_triangles_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_auto_triangles() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_auto_triangles_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_blend_mode(mode: AnimationNodeBlendSpace2D.BlendMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_mode_81193520,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_blend_mode() -> AnimationNodeBlendSpace2D.BlendMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_mode_1398433632,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationNodeBlendSpace2D.BlendMode(godot: __resPtr.pointee)
    }
    public func set_use_sync(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_sync_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_sync() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_sync_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}