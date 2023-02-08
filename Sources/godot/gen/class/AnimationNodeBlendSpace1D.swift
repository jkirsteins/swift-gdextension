import godot_native

fileprivate var __godot_name_AnimationNodeBlendSpace1D: StringName! = nil

/// Blends linearly between two of any number of [AnimationNode] of any type placed on a virtual axis.
/// 
/// A resource to add to an [AnimationNodeBlendTree].
///  
/// This is a virtual axis on which you can add any type of [AnimationNode] using [method add_blend_point].
///  
/// Outputs the linear blend of the two [AnimationNode]s closest to the node's current value.
///  
/// You can set the extents of the axis using the [member min_space] and [member max_space].
open class AnimationNodeBlendSpace1D : AnimationRootNode {

    public enum BlendMode : Int32 {
        case BLEND_MODE_INTERPOLATED = 0
        case BLEND_MODE_DISCRETE = 1
        case BLEND_MODE_DISCRETE_CARRY = 2
    }

    public override class var __godot_name: StringName { __godot_name_AnimationNodeBlendSpace1D }

    static var _method_add_blend_point_4069484420: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_point_position_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_point_position_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_point_node_4240341528: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_point_node_665599029: GDExtensionMethodBindPtr! = nil
    static var _method_remove_blend_point_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_point_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_min_space_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_min_space_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_space_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_space_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_snap_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_snap_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_value_label_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_value_label_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_mode_2600869457: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_mode_1547667849: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_sync_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_sync_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AnimationNodeBlendSpace1D = StringName(from: "AnimationNodeBlendSpace1D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_add_blend_point_4069484420_name = StringName(from: "add_blend_point")
        self._method_add_blend_point_4069484420 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_add_blend_point_4069484420_name._native_ptr(), 4069484420)
        assert(AnimationNodeBlendSpace1D._method_add_blend_point_4069484420 != nil)
        let _method_set_blend_point_position_1602489585_name = StringName(from: "set_blend_point_position")
        self._method_set_blend_point_position_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_set_blend_point_position_1602489585_name._native_ptr(), 1602489585)
        assert(AnimationNodeBlendSpace1D._method_set_blend_point_position_1602489585 != nil)
        let _method_get_blend_point_position_2339986948_name = StringName(from: "get_blend_point_position")
        self._method_get_blend_point_position_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_get_blend_point_position_2339986948_name._native_ptr(), 2339986948)
        assert(AnimationNodeBlendSpace1D._method_get_blend_point_position_2339986948 != nil)
        let _method_set_blend_point_node_4240341528_name = StringName(from: "set_blend_point_node")
        self._method_set_blend_point_node_4240341528 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_set_blend_point_node_4240341528_name._native_ptr(), 4240341528)
        assert(AnimationNodeBlendSpace1D._method_set_blend_point_node_4240341528 != nil)
        let _method_get_blend_point_node_665599029_name = StringName(from: "get_blend_point_node")
        self._method_get_blend_point_node_665599029 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_get_blend_point_node_665599029_name._native_ptr(), 665599029)
        assert(AnimationNodeBlendSpace1D._method_get_blend_point_node_665599029 != nil)
        let _method_remove_blend_point_1286410249_name = StringName(from: "remove_blend_point")
        self._method_remove_blend_point_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_remove_blend_point_1286410249_name._native_ptr(), 1286410249)
        assert(AnimationNodeBlendSpace1D._method_remove_blend_point_1286410249 != nil)
        let _method_get_blend_point_count_3905245786_name = StringName(from: "get_blend_point_count")
        self._method_get_blend_point_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_get_blend_point_count_3905245786_name._native_ptr(), 3905245786)
        assert(AnimationNodeBlendSpace1D._method_get_blend_point_count_3905245786 != nil)
        let _method_set_min_space_373806689_name = StringName(from: "set_min_space")
        self._method_set_min_space_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_set_min_space_373806689_name._native_ptr(), 373806689)
        assert(AnimationNodeBlendSpace1D._method_set_min_space_373806689 != nil)
        let _method_get_min_space_1740695150_name = StringName(from: "get_min_space")
        self._method_get_min_space_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_get_min_space_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationNodeBlendSpace1D._method_get_min_space_1740695150 != nil)
        let _method_set_max_space_373806689_name = StringName(from: "set_max_space")
        self._method_set_max_space_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_set_max_space_373806689_name._native_ptr(), 373806689)
        assert(AnimationNodeBlendSpace1D._method_set_max_space_373806689 != nil)
        let _method_get_max_space_1740695150_name = StringName(from: "get_max_space")
        self._method_get_max_space_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_get_max_space_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationNodeBlendSpace1D._method_get_max_space_1740695150 != nil)
        let _method_set_snap_373806689_name = StringName(from: "set_snap")
        self._method_set_snap_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_set_snap_373806689_name._native_ptr(), 373806689)
        assert(AnimationNodeBlendSpace1D._method_set_snap_373806689 != nil)
        let _method_get_snap_1740695150_name = StringName(from: "get_snap")
        self._method_get_snap_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_get_snap_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationNodeBlendSpace1D._method_get_snap_1740695150 != nil)
        let _method_set_value_label_83702148_name = StringName(from: "set_value_label")
        self._method_set_value_label_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_set_value_label_83702148_name._native_ptr(), 83702148)
        assert(AnimationNodeBlendSpace1D._method_set_value_label_83702148 != nil)
        let _method_get_value_label_201670096_name = StringName(from: "get_value_label")
        self._method_get_value_label_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_get_value_label_201670096_name._native_ptr(), 201670096)
        assert(AnimationNodeBlendSpace1D._method_get_value_label_201670096 != nil)
        let _method_set_blend_mode_2600869457_name = StringName(from: "set_blend_mode")
        self._method_set_blend_mode_2600869457 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_set_blend_mode_2600869457_name._native_ptr(), 2600869457)
        assert(AnimationNodeBlendSpace1D._method_set_blend_mode_2600869457 != nil)
        let _method_get_blend_mode_1547667849_name = StringName(from: "get_blend_mode")
        self._method_get_blend_mode_1547667849 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_get_blend_mode_1547667849_name._native_ptr(), 1547667849)
        assert(AnimationNodeBlendSpace1D._method_get_blend_mode_1547667849 != nil)
        let _method_set_use_sync_2586408642_name = StringName(from: "set_use_sync")
        self._method_set_use_sync_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_set_use_sync_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationNodeBlendSpace1D._method_set_use_sync_2586408642 != nil)
        let _method_is_using_sync_36873697_name = StringName(from: "is_using_sync")
        self._method_is_using_sync_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeBlendSpace1D._native_ptr(), _method_is_using_sync_36873697_name._native_ptr(), 36873697)
        assert(AnimationNodeBlendSpace1D._method_is_using_sync_36873697 != nil)
    }

    public func add_blend_point(node: AnimationRootNode, pos: Float64, at_index: Int64)  {
        withUnsafePointer(to: at_index) { at_index_native in
        withUnsafePointer(to: pos) { pos_native in
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native), .init(pos_native), .init(at_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_blend_point_4069484420,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func set_blend_point_position(point: Int64, pos: Float64)  {
        withUnsafePointer(to: pos) { pos_native in
        withUnsafePointer(to: point) { point_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native), .init(pos_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_point_position_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_blend_point_position(point: Int64) -> Float64 {
        withUnsafePointer(to: point) { point_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_point_position_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
    public func set_min_space(min_space: Float64)  {
        withUnsafePointer(to: min_space) { min_space_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(min_space_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_min_space_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_min_space() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_min_space_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_max_space(max_space: Float64)  {
        withUnsafePointer(to: max_space) { max_space_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_space_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_space_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_space() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_space_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_snap(snap: Float64)  {
        withUnsafePointer(to: snap) { snap_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(snap_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_snap_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_snap() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_snap_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_value_label(text: godot.String)  {
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_value_label_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_value_label() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_value_label_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_blend_mode(mode: AnimationNodeBlendSpace1D.BlendMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_mode_2600869457,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_blend_mode() -> AnimationNodeBlendSpace1D.BlendMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_mode_1547667849,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationNodeBlendSpace1D.BlendMode(godot: __resPtr.pointee)
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