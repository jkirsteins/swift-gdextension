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

    static var _method__get_child_nodes_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_parameter_list_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_child_by_name_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_parameter_default_value_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_parameter_read_only_0: GDExtensionMethodBindPtr! = nil
    static var _method__process_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_caption_0: GDExtensionMethodBindPtr! = nil
    static var _method__has_filter_0: GDExtensionMethodBindPtr! = nil
    static var _method_add_input_2323990056: GDExtensionMethodBindPtr! = nil
    static var _method_remove_input_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_input_name_215573526: GDExtensionMethodBindPtr! = nil
    static var _method_get_input_name_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_input_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_find_input_1321353865: GDExtensionMethodBindPtr! = nil
    static var _method_set_filter_path_3868023870: GDExtensionMethodBindPtr! = nil
    static var _method_is_path_filtered_861721659: GDExtensionMethodBindPtr! = nil
    static var _method_set_filter_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_filter_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_blend_animation_11797022: GDExtensionMethodBindPtr! = nil
    static var _method_blend_node_308530085: GDExtensionMethodBindPtr! = nil
    static var _method_blend_input_1365393708: GDExtensionMethodBindPtr! = nil
    static var _method_set_parameter_3776071444: GDExtensionMethodBindPtr! = nil
    static var _method_get_parameter_2760726917: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AnimationNode = StringName(from: "AnimationNode")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_add_input_2323990056_name = StringName(from: "add_input")
        self._method_add_input_2323990056 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_add_input_2323990056_name._native_ptr(), 2323990056)
        assert(AnimationNode._method_add_input_2323990056 != nil)
        let _method_remove_input_1286410249_name = StringName(from: "remove_input")
        self._method_remove_input_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_remove_input_1286410249_name._native_ptr(), 1286410249)
        assert(AnimationNode._method_remove_input_1286410249 != nil)
        let _method_set_input_name_215573526_name = StringName(from: "set_input_name")
        self._method_set_input_name_215573526 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_set_input_name_215573526_name._native_ptr(), 215573526)
        assert(AnimationNode._method_set_input_name_215573526 != nil)
        let _method_get_input_name_844755477_name = StringName(from: "get_input_name")
        self._method_get_input_name_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_get_input_name_844755477_name._native_ptr(), 844755477)
        assert(AnimationNode._method_get_input_name_844755477 != nil)
        let _method_get_input_count_3905245786_name = StringName(from: "get_input_count")
        self._method_get_input_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_get_input_count_3905245786_name._native_ptr(), 3905245786)
        assert(AnimationNode._method_get_input_count_3905245786 != nil)
        let _method_find_input_1321353865_name = StringName(from: "find_input")
        self._method_find_input_1321353865 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_find_input_1321353865_name._native_ptr(), 1321353865)
        assert(AnimationNode._method_find_input_1321353865 != nil)
        let _method_set_filter_path_3868023870_name = StringName(from: "set_filter_path")
        self._method_set_filter_path_3868023870 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_set_filter_path_3868023870_name._native_ptr(), 3868023870)
        assert(AnimationNode._method_set_filter_path_3868023870 != nil)
        let _method_is_path_filtered_861721659_name = StringName(from: "is_path_filtered")
        self._method_is_path_filtered_861721659 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_is_path_filtered_861721659_name._native_ptr(), 861721659)
        assert(AnimationNode._method_is_path_filtered_861721659 != nil)
        let _method_set_filter_enabled_2586408642_name = StringName(from: "set_filter_enabled")
        self._method_set_filter_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_set_filter_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationNode._method_set_filter_enabled_2586408642 != nil)
        let _method_is_filter_enabled_36873697_name = StringName(from: "is_filter_enabled")
        self._method_is_filter_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_is_filter_enabled_36873697_name._native_ptr(), 36873697)
        assert(AnimationNode._method_is_filter_enabled_36873697 != nil)
        let _method_blend_animation_11797022_name = StringName(from: "blend_animation")
        self._method_blend_animation_11797022 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_blend_animation_11797022_name._native_ptr(), 11797022)
        assert(AnimationNode._method_blend_animation_11797022 != nil)
        let _method_blend_node_308530085_name = StringName(from: "blend_node")
        self._method_blend_node_308530085 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_blend_node_308530085_name._native_ptr(), 308530085)
        assert(AnimationNode._method_blend_node_308530085 != nil)
        let _method_blend_input_1365393708_name = StringName(from: "blend_input")
        self._method_blend_input_1365393708 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_blend_input_1365393708_name._native_ptr(), 1365393708)
        assert(AnimationNode._method_blend_input_1365393708 != nil)
        let _method_set_parameter_3776071444_name = StringName(from: "set_parameter")
        self._method_set_parameter_3776071444 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_set_parameter_3776071444_name._native_ptr(), 3776071444)
        assert(AnimationNode._method_set_parameter_3776071444 != nil)
        let _method_get_parameter_2760726917_name = StringName(from: "get_parameter")
        self._method_get_parameter_2760726917 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNode._native_ptr(), _method_get_parameter_2760726917_name._native_ptr(), 2760726917)
        assert(AnimationNode._method_get_parameter_2760726917 != nil)
    }

    public func _get_child_nodes() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_child_nodes_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func _get_parameter_list() -> Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_parameter_list_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_child_by_name_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_parameter_default_value_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_parameter_read_only_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__process_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_caption_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__has_filter_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_input_2323990056,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_input_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_input_name_215573526,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_input_name_844755477,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_input_count_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_input_1321353865,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_filter_path_3868023870,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_path_filtered_861721659,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_filter_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_filter_enabled_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_blend_animation_11797022,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_blend_node_308530085,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_blend_input_1365393708,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_parameter_3776071444,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parameter_2760726917,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
}