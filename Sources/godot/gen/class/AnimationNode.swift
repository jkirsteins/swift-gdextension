import godot_native

fileprivate var __godot_name_AnimationNode: StringName! = nil

/// Base resource for [AnimationTree] nodes.
/// 
/// Base resource for [AnimationTree] nodes. In general, it's not used directly, but you can create custom ones with custom blending formulas.
///  
/// Inherit this when creating nodes mainly for use in [AnimationNodeBlendTree], otherwise [AnimationRootNode] should be used instead.
open class AnimationNode : Resource {

    public enum FilterAction : Int32 {
        case FILTER_IGNORE = 0
        case FILTER_PASS = 1
        case FILTER_STOP = 2
        case FILTER_BLEND = 3
    }

    public override class var __godot_name: StringName { __godot_name_AnimationNode }

    static var _method__get_child_nodes_0: StringName! = nil
    static var _method__get_parameter_list_0: StringName! = nil
    static var _method__get_child_by_name_0: StringName! = nil
    static var _method__get_parameter_default_value_0: StringName! = nil
    static var _method__is_parameter_read_only_0: StringName! = nil
    static var _method__process_0: StringName! = nil
    static var _method__get_caption_0: StringName! = nil
    static var _method__has_filter_0: StringName! = nil
    static var _method_add_input_2323990056: StringName! = nil
    static var _method_remove_input_1286410249: StringName! = nil
    static var _method_set_input_name_215573526: StringName! = nil
    static var _method_get_input_name_844755477: StringName! = nil
    static var _method_get_input_count_3905245786: StringName! = nil
    static var _method_find_input_1321353865: StringName! = nil
    static var _method_set_filter_path_3868023870: StringName! = nil
    static var _method_is_path_filtered_861721659: StringName! = nil
    static var _method_set_filter_enabled_2586408642: StringName! = nil
    static var _method_is_filter_enabled_36873697: StringName! = nil
    static var _method_blend_animation_11797022: StringName! = nil
    static var _method_blend_node_308530085: StringName! = nil
    static var _method_blend_input_1365393708: StringName! = nil
    static var _method_set_parameter_3776071444: StringName! = nil
    static var _method_get_parameter_2760726917: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AnimationNode == nil)
        __godot_name_AnimationNode = StringName(from: "AnimationNode")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_input_2323990056 = StringName(from: "add_input")
        assert(self._method_add_input_2323990056 != nil)
        self._method_remove_input_1286410249 = StringName(from: "remove_input")
        assert(self._method_remove_input_1286410249 != nil)
        self._method_set_input_name_215573526 = StringName(from: "set_input_name")
        assert(self._method_set_input_name_215573526 != nil)
        self._method_get_input_name_844755477 = StringName(from: "get_input_name")
        assert(self._method_get_input_name_844755477 != nil)
        self._method_get_input_count_3905245786 = StringName(from: "get_input_count")
        assert(self._method_get_input_count_3905245786 != nil)
        self._method_find_input_1321353865 = StringName(from: "find_input")
        assert(self._method_find_input_1321353865 != nil)
        self._method_set_filter_path_3868023870 = StringName(from: "set_filter_path")
        assert(self._method_set_filter_path_3868023870 != nil)
        self._method_is_path_filtered_861721659 = StringName(from: "is_path_filtered")
        assert(self._method_is_path_filtered_861721659 != nil)
        self._method_set_filter_enabled_2586408642 = StringName(from: "set_filter_enabled")
        assert(self._method_set_filter_enabled_2586408642 != nil)
        self._method_is_filter_enabled_36873697 = StringName(from: "is_filter_enabled")
        assert(self._method_is_filter_enabled_36873697 != nil)
        self._method_blend_animation_11797022 = StringName(from: "blend_animation")
        assert(self._method_blend_animation_11797022 != nil)
        self._method_blend_node_308530085 = StringName(from: "blend_node")
        assert(self._method_blend_node_308530085 != nil)
        self._method_blend_input_1365393708 = StringName(from: "blend_input")
        assert(self._method_blend_input_1365393708 != nil)
        self._method_set_parameter_3776071444 = StringName(from: "set_parameter")
        assert(self._method_set_parameter_3776071444 != nil)
        self._method_get_parameter_2760726917 = StringName(from: "get_parameter")
        assert(self._method_get_parameter_2760726917 != nil)
    }

    public func _get_child_nodes() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Dictionary(godot: __resPtr.pointee)
    }
    public func _get_parameter_list() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Array(godot: __resPtr.pointee)
    }
    public func _get_child_by_name(name: StringName) -> AnimationNode {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return AnimationNode(godot: __resPtr.pointee)
    }
    public func _get_parameter_default_value(parameter: StringName) -> Variant {
        let parameter_native = parameter._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parameter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Variant(godot: __resPtr.pointee)
    }
    public func _is_parameter_read_only(parameter: StringName) -> UInt8 {
        let parameter_native = parameter._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(parameter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _process(time: Float64, seek: UInt8, is_external_seeking: UInt8) -> Float64 {
        withUnsafePointer(to: is_external_seeking) { is_external_seeking_native in
        withUnsafePointer(to: seek) { seek_native in
        withUnsafePointer(to: time) { time_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_native), .init(seek_native), .init(is_external_seeking_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return Float64(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func _get_caption() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _has_filter() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func add_input(name: godot.String) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_input_2323990056._native_ptr(),
                    2323990056)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func remove_input(index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_input_1286410249._native_ptr(),
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
    public func set_input_name(input: Int64, name: godot.String) -> UInt8 {
        withUnsafePointer(to: input) { input_native in
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_native), .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_input_name_215573526._native_ptr(),
                    215573526)
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
    public func get_input_name(input: Int64) -> godot.String {
        withUnsafePointer(to: input) { input_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_input_name_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_input_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_input_count_3905245786._native_ptr(),
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
    public func find_input(name: godot.String) -> Int64 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_find_input_1321353865._native_ptr(),
                    1321353865)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_filter_path(path: NodePath, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_filter_path_3868023870._native_ptr(),
                    3868023870)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_path_filtered(path: NodePath) -> UInt8 {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_path_filtered_861721659._native_ptr(),
                    861721659)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_filter_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_filter_enabled_2586408642._native_ptr(),
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
    public func is_filter_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_filter_enabled_36873697._native_ptr(),
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
    public func blend_animation(animation: StringName, time: Float64, delta: Float64, seeked: UInt8, is_external_seeking: UInt8, blend: Float64, looped_flag: Animation.LoopedFlag)  {
        withUnsafePointer(to: blend) { blend_native in
        withUnsafePointer(to: is_external_seeking) { is_external_seeking_native in
        withUnsafePointer(to: seeked) { seeked_native in
        withUnsafePointer(to: delta) { delta_native in
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: looped_flag.rawValue) { looped_flag_native in
        let animation_native = animation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(animation_native), .init(time_native), .init(delta_native), .init(seeked_native), .init(is_external_seeking_native), .init(blend_native), .init(looped_flag_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_blend_animation_11797022._native_ptr(),
                    11797022)
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
        }
        }
        }
    }
    public func blend_node(name: StringName, node: AnimationNode, time: Float64, seek: UInt8, is_external_seeking: UInt8, blend: Float64, filter: AnimationNode.FilterAction, sync: UInt8) -> Float64 {
        withUnsafePointer(to: sync) { sync_native in
        withUnsafePointer(to: blend) { blend_native in
        withUnsafePointer(to: is_external_seeking) { is_external_seeking_native in
        withUnsafePointer(to: seek) { seek_native in
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: filter.rawValue) { filter_native in
        let node_native = node._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 8)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(node_native), .init(time_native), .init(seek_native), .init(is_external_seeking_native), .init(blend_native), .init(filter_native), .init(sync_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_blend_node_308530085._native_ptr(),
                    308530085)
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
        }
        }
        }
        }
    }
    public func blend_input(input_index: Int64, time: Float64, seek: UInt8, is_external_seeking: UInt8, blend: Float64, filter: AnimationNode.FilterAction, sync: UInt8) -> Float64 {
        withUnsafePointer(to: sync) { sync_native in
        withUnsafePointer(to: blend) { blend_native in
        withUnsafePointer(to: is_external_seeking) { is_external_seeking_native in
        withUnsafePointer(to: seek) { seek_native in
        withUnsafePointer(to: time) { time_native in
        withUnsafePointer(to: input_index) { input_index_native in
        withUnsafePointer(to: filter.rawValue) { filter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_index_native), .init(time_native), .init(seek_native), .init(is_external_seeking_native), .init(blend_native), .init(filter_native), .init(sync_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_blend_input_1365393708._native_ptr(),
                    1365393708)
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
        }
        }
        }
        }
        }
    }
    public func set_parameter(name: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_parameter_3776071444._native_ptr(),
                    3776071444)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_parameter(name: StringName) -> Variant {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_parameter_2760726917._native_ptr(),
                    2760726917)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
}