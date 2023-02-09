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

    static var _method_add_blend_point_4069484420: StringName! = nil
    static var _method_set_blend_point_position_1602489585: StringName! = nil
    static var _method_get_blend_point_position_2339986948: StringName! = nil
    static var _method_set_blend_point_node_4240341528: StringName! = nil
    static var _method_get_blend_point_node_665599029: StringName! = nil
    static var _method_remove_blend_point_1286410249: StringName! = nil
    static var _method_get_blend_point_count_3905245786: StringName! = nil
    static var _method_set_min_space_373806689: StringName! = nil
    static var _method_get_min_space_1740695150: StringName! = nil
    static var _method_set_max_space_373806689: StringName! = nil
    static var _method_get_max_space_1740695150: StringName! = nil
    static var _method_set_snap_373806689: StringName! = nil
    static var _method_get_snap_1740695150: StringName! = nil
    static var _method_set_value_label_83702148: StringName! = nil
    static var _method_get_value_label_201670096: StringName! = nil
    static var _method_set_blend_mode_2600869457: StringName! = nil
    static var _method_get_blend_mode_1547667849: StringName! = nil
    static var _method_set_use_sync_2586408642: StringName! = nil
    static var _method_is_using_sync_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AnimationNodeBlendSpace1D == nil)
        __godot_name_AnimationNodeBlendSpace1D = StringName(from: "AnimationNodeBlendSpace1D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_blend_point_4069484420 = StringName(from: "add_blend_point")
        assert(self._method_add_blend_point_4069484420 != nil)
        self._method_set_blend_point_position_1602489585 = StringName(from: "set_blend_point_position")
        assert(self._method_set_blend_point_position_1602489585 != nil)
        self._method_get_blend_point_position_2339986948 = StringName(from: "get_blend_point_position")
        assert(self._method_get_blend_point_position_2339986948 != nil)
        self._method_set_blend_point_node_4240341528 = StringName(from: "set_blend_point_node")
        assert(self._method_set_blend_point_node_4240341528 != nil)
        self._method_get_blend_point_node_665599029 = StringName(from: "get_blend_point_node")
        assert(self._method_get_blend_point_node_665599029 != nil)
        self._method_remove_blend_point_1286410249 = StringName(from: "remove_blend_point")
        assert(self._method_remove_blend_point_1286410249 != nil)
        self._method_get_blend_point_count_3905245786 = StringName(from: "get_blend_point_count")
        assert(self._method_get_blend_point_count_3905245786 != nil)
        self._method_set_min_space_373806689 = StringName(from: "set_min_space")
        assert(self._method_set_min_space_373806689 != nil)
        self._method_get_min_space_1740695150 = StringName(from: "get_min_space")
        assert(self._method_get_min_space_1740695150 != nil)
        self._method_set_max_space_373806689 = StringName(from: "set_max_space")
        assert(self._method_set_max_space_373806689 != nil)
        self._method_get_max_space_1740695150 = StringName(from: "get_max_space")
        assert(self._method_get_max_space_1740695150 != nil)
        self._method_set_snap_373806689 = StringName(from: "set_snap")
        assert(self._method_set_snap_373806689 != nil)
        self._method_get_snap_1740695150 = StringName(from: "get_snap")
        assert(self._method_get_snap_1740695150 != nil)
        self._method_set_value_label_83702148 = StringName(from: "set_value_label")
        assert(self._method_set_value_label_83702148 != nil)
        self._method_get_value_label_201670096 = StringName(from: "get_value_label")
        assert(self._method_get_value_label_201670096 != nil)
        self._method_set_blend_mode_2600869457 = StringName(from: "set_blend_mode")
        assert(self._method_set_blend_mode_2600869457 != nil)
        self._method_get_blend_mode_1547667849 = StringName(from: "get_blend_mode")
        assert(self._method_get_blend_mode_1547667849 != nil)
        self._method_set_use_sync_2586408642 = StringName(from: "set_use_sync")
        assert(self._method_set_use_sync_2586408642 != nil)
        self._method_is_using_sync_36873697 = StringName(from: "is_using_sync")
        assert(self._method_is_using_sync_36873697 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_blend_point_4069484420._native_ptr(),
                    4069484420)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_blend_point_position_1602489585._native_ptr(),
                    1602489585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_point_position_2339986948._native_ptr(),
                    2339986948)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_blend_point_node_4240341528._native_ptr(),
                    4240341528)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_point_node_665599029._native_ptr(),
                    665599029)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_blend_point_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_point_count_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_min_space_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_min_space_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_space_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_space_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_snap_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_snap_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_value_label_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_value_label_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_blend_mode_2600869457._native_ptr(),
                    2600869457)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_mode_1547667849._native_ptr(),
                    1547667849)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_sync_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_sync_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}