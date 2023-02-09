import godot_native

fileprivate var __godot_name_TabContainer: StringName! = nil

/// Tabbed container.
/// 
/// Arranges [Control] children into a tabbed view, creating a tab for each one. The active tab's corresponding [Control] has its [code]visible[/code] property set to [code]true[/code], and all other children's to [code]false[/code].
///  
/// Ignores non-[Control] children.
///  
/// [b]Note:[/b] The drawing of the clickable tabs themselves is handled by this node. Adding [TabBar]s as children is not needed.
open class TabContainer : Container {

    

    public override class var __godot_name: StringName { __godot_name_TabContainer }

    static var _method_get_tab_count_3905245786: StringName! = nil
    static var _method_set_current_tab_1286410249: StringName! = nil
    static var _method_get_current_tab_3905245786: StringName! = nil
    static var _method_get_previous_tab_3905245786: StringName! = nil
    static var _method_get_current_tab_control_2783021301: StringName! = nil
    static var _method_get_tab_control_1065994134: StringName! = nil
    static var _method_set_tab_alignment_2413632353: StringName! = nil
    static var _method_get_tab_alignment_2178122193: StringName! = nil
    static var _method_set_clip_tabs_2586408642: StringName! = nil
    static var _method_get_clip_tabs_36873697: StringName! = nil
    static var _method_set_tabs_visible_2586408642: StringName! = nil
    static var _method_are_tabs_visible_36873697: StringName! = nil
    static var _method_set_all_tabs_in_front_2586408642: StringName! = nil
    static var _method_is_all_tabs_in_front_36873697: StringName! = nil
    static var _method_set_tab_title_501894301: StringName! = nil
    static var _method_get_tab_title_844755477: StringName! = nil
    static var _method_set_tab_icon_666127730: StringName! = nil
    static var _method_get_tab_icon_3536238170: StringName! = nil
    static var _method_set_tab_disabled_300928843: StringName! = nil
    static var _method_is_tab_disabled_1116898809: StringName! = nil
    static var _method_set_tab_hidden_300928843: StringName! = nil
    static var _method_is_tab_hidden_1116898809: StringName! = nil
    static var _method_set_tab_button_icon_666127730: StringName! = nil
    static var _method_get_tab_button_icon_3536238170: StringName! = nil
    static var _method_get_tab_idx_at_point_3820158470: StringName! = nil
    static var _method_get_tab_idx_from_control_2787397975: StringName! = nil
    static var _method_set_popup_1078189570: StringName! = nil
    static var _method_get_popup_111095082: StringName! = nil
    static var _method_set_drag_to_rearrange_enabled_2586408642: StringName! = nil
    static var _method_get_drag_to_rearrange_enabled_36873697: StringName! = nil
    static var _method_set_tabs_rearrange_group_1286410249: StringName! = nil
    static var _method_get_tabs_rearrange_group_3905245786: StringName! = nil
    static var _method_set_use_hidden_tabs_for_min_size_2586408642: StringName! = nil
    static var _method_get_use_hidden_tabs_for_min_size_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TabContainer == nil)
        __godot_name_TabContainer = StringName(from: "TabContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_tab_count_3905245786 = StringName(from: "get_tab_count")
        assert(self._method_get_tab_count_3905245786 != nil)
        self._method_set_current_tab_1286410249 = StringName(from: "set_current_tab")
        assert(self._method_set_current_tab_1286410249 != nil)
        self._method_get_current_tab_3905245786 = StringName(from: "get_current_tab")
        assert(self._method_get_current_tab_3905245786 != nil)
        self._method_get_previous_tab_3905245786 = StringName(from: "get_previous_tab")
        assert(self._method_get_previous_tab_3905245786 != nil)
        self._method_get_current_tab_control_2783021301 = StringName(from: "get_current_tab_control")
        assert(self._method_get_current_tab_control_2783021301 != nil)
        self._method_get_tab_control_1065994134 = StringName(from: "get_tab_control")
        assert(self._method_get_tab_control_1065994134 != nil)
        self._method_set_tab_alignment_2413632353 = StringName(from: "set_tab_alignment")
        assert(self._method_set_tab_alignment_2413632353 != nil)
        self._method_get_tab_alignment_2178122193 = StringName(from: "get_tab_alignment")
        assert(self._method_get_tab_alignment_2178122193 != nil)
        self._method_set_clip_tabs_2586408642 = StringName(from: "set_clip_tabs")
        assert(self._method_set_clip_tabs_2586408642 != nil)
        self._method_get_clip_tabs_36873697 = StringName(from: "get_clip_tabs")
        assert(self._method_get_clip_tabs_36873697 != nil)
        self._method_set_tabs_visible_2586408642 = StringName(from: "set_tabs_visible")
        assert(self._method_set_tabs_visible_2586408642 != nil)
        self._method_are_tabs_visible_36873697 = StringName(from: "are_tabs_visible")
        assert(self._method_are_tabs_visible_36873697 != nil)
        self._method_set_all_tabs_in_front_2586408642 = StringName(from: "set_all_tabs_in_front")
        assert(self._method_set_all_tabs_in_front_2586408642 != nil)
        self._method_is_all_tabs_in_front_36873697 = StringName(from: "is_all_tabs_in_front")
        assert(self._method_is_all_tabs_in_front_36873697 != nil)
        self._method_set_tab_title_501894301 = StringName(from: "set_tab_title")
        assert(self._method_set_tab_title_501894301 != nil)
        self._method_get_tab_title_844755477 = StringName(from: "get_tab_title")
        assert(self._method_get_tab_title_844755477 != nil)
        self._method_set_tab_icon_666127730 = StringName(from: "set_tab_icon")
        assert(self._method_set_tab_icon_666127730 != nil)
        self._method_get_tab_icon_3536238170 = StringName(from: "get_tab_icon")
        assert(self._method_get_tab_icon_3536238170 != nil)
        self._method_set_tab_disabled_300928843 = StringName(from: "set_tab_disabled")
        assert(self._method_set_tab_disabled_300928843 != nil)
        self._method_is_tab_disabled_1116898809 = StringName(from: "is_tab_disabled")
        assert(self._method_is_tab_disabled_1116898809 != nil)
        self._method_set_tab_hidden_300928843 = StringName(from: "set_tab_hidden")
        assert(self._method_set_tab_hidden_300928843 != nil)
        self._method_is_tab_hidden_1116898809 = StringName(from: "is_tab_hidden")
        assert(self._method_is_tab_hidden_1116898809 != nil)
        self._method_set_tab_button_icon_666127730 = StringName(from: "set_tab_button_icon")
        assert(self._method_set_tab_button_icon_666127730 != nil)
        self._method_get_tab_button_icon_3536238170 = StringName(from: "get_tab_button_icon")
        assert(self._method_get_tab_button_icon_3536238170 != nil)
        self._method_get_tab_idx_at_point_3820158470 = StringName(from: "get_tab_idx_at_point")
        assert(self._method_get_tab_idx_at_point_3820158470 != nil)
        self._method_get_tab_idx_from_control_2787397975 = StringName(from: "get_tab_idx_from_control")
        assert(self._method_get_tab_idx_from_control_2787397975 != nil)
        self._method_set_popup_1078189570 = StringName(from: "set_popup")
        assert(self._method_set_popup_1078189570 != nil)
        self._method_get_popup_111095082 = StringName(from: "get_popup")
        assert(self._method_get_popup_111095082 != nil)
        self._method_set_drag_to_rearrange_enabled_2586408642 = StringName(from: "set_drag_to_rearrange_enabled")
        assert(self._method_set_drag_to_rearrange_enabled_2586408642 != nil)
        self._method_get_drag_to_rearrange_enabled_36873697 = StringName(from: "get_drag_to_rearrange_enabled")
        assert(self._method_get_drag_to_rearrange_enabled_36873697 != nil)
        self._method_set_tabs_rearrange_group_1286410249 = StringName(from: "set_tabs_rearrange_group")
        assert(self._method_set_tabs_rearrange_group_1286410249 != nil)
        self._method_get_tabs_rearrange_group_3905245786 = StringName(from: "get_tabs_rearrange_group")
        assert(self._method_get_tabs_rearrange_group_3905245786 != nil)
        self._method_set_use_hidden_tabs_for_min_size_2586408642 = StringName(from: "set_use_hidden_tabs_for_min_size")
        assert(self._method_set_use_hidden_tabs_for_min_size_2586408642 != nil)
        self._method_get_use_hidden_tabs_for_min_size_36873697 = StringName(from: "get_use_hidden_tabs_for_min_size")
        assert(self._method_get_use_hidden_tabs_for_min_size_36873697 != nil)
    }

    public func get_tab_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_count_3905245786._native_ptr(),
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
    public func set_current_tab(tab_idx: Int64)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_current_tab_1286410249._native_ptr(),
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
    public func get_current_tab() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_current_tab_3905245786._native_ptr(),
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
    public func get_previous_tab() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_previous_tab_3905245786._native_ptr(),
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
    public func get_current_tab_control() -> Control {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_current_tab_control_2783021301._native_ptr(),
                    2783021301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control(godot: __resPtr.pointee)
    }
    public func get_tab_control(tab_idx: Int64) -> Control {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_control_1065994134._native_ptr(),
                    1065994134)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control(godot: __resPtr.pointee)
        }
    }
    public func set_tab_alignment(alignment: TabBar.AlignmentMode)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_alignment_2413632353._native_ptr(),
                    2413632353)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tab_alignment() -> TabBar.AlignmentMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_alignment_2178122193._native_ptr(),
                    2178122193)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TabBar.AlignmentMode(godot: __resPtr.pointee)
    }
    public func set_clip_tabs(clip_tabs: UInt8)  {
        withUnsafePointer(to: clip_tabs) { clip_tabs_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(clip_tabs_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_clip_tabs_2586408642._native_ptr(),
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
    public func get_clip_tabs() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_clip_tabs_36873697._native_ptr(),
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
    public func set_tabs_visible(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tabs_visible_2586408642._native_ptr(),
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
    public func are_tabs_visible() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_are_tabs_visible_36873697._native_ptr(),
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
    public func set_all_tabs_in_front(is_front: UInt8)  {
        withUnsafePointer(to: is_front) { is_front_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(is_front_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_all_tabs_in_front_2586408642._native_ptr(),
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
    public func is_all_tabs_in_front() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_all_tabs_in_front_36873697._native_ptr(),
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
    public func set_tab_title(tab_idx: Int64, title: godot.String)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let title_native = title._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(title_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_title_501894301._native_ptr(),
                    501894301)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tab_title(tab_idx: Int64) -> godot.String {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_title_844755477._native_ptr(),
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
    public func set_tab_icon(tab_idx: Int64, icon: Texture2D)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(icon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_icon_666127730._native_ptr(),
                    666127730)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tab_icon(tab_idx: Int64) -> Texture2D {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_icon_3536238170._native_ptr(),
                    3536238170)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
        }
    }
    public func set_tab_disabled(tab_idx: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(disabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_disabled_300928843._native_ptr(),
                    300928843)
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
    public func is_tab_disabled(tab_idx: Int64) -> UInt8 {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_tab_disabled_1116898809._native_ptr(),
                    1116898809)
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
    public func set_tab_hidden(tab_idx: Int64, hidden: UInt8)  {
        withUnsafePointer(to: hidden) { hidden_native in
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(hidden_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_hidden_300928843._native_ptr(),
                    300928843)
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
    public func is_tab_hidden(tab_idx: Int64) -> UInt8 {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_tab_hidden_1116898809._native_ptr(),
                    1116898809)
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
    public func set_tab_button_icon(tab_idx: Int64, icon: Texture2D)  {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let icon_native = icon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native), .init(icon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tab_button_icon_666127730._native_ptr(),
                    666127730)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tab_button_icon(tab_idx: Int64) -> Texture2D {
        withUnsafePointer(to: tab_idx) { tab_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(tab_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_button_icon_3536238170._native_ptr(),
                    3536238170)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
        }
    }
    public func get_tab_idx_at_point(point: Vector2) -> Int64 {
        let point_native = point._native_ptr()
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
                    Self._method_get_tab_idx_at_point_3820158470._native_ptr(),
                    3820158470)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_tab_idx_from_control(control: Control) -> Int64 {
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tab_idx_from_control_2787397975._native_ptr(),
                    2787397975)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_popup(popup: Node)  {
        let popup_native = popup._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(popup_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_popup_1078189570._native_ptr(),
                    1078189570)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_popup() -> Popup {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_popup_111095082._native_ptr(),
                    111095082)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Popup(godot: __resPtr.pointee)
    }
    public func set_drag_to_rearrange_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_drag_to_rearrange_enabled_2586408642._native_ptr(),
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
    public func get_drag_to_rearrange_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_drag_to_rearrange_enabled_36873697._native_ptr(),
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
    public func set_tabs_rearrange_group(group_id: Int64)  {
        withUnsafePointer(to: group_id) { group_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(group_id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tabs_rearrange_group_1286410249._native_ptr(),
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
    public func get_tabs_rearrange_group() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tabs_rearrange_group_3905245786._native_ptr(),
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
    public func set_use_hidden_tabs_for_min_size(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_hidden_tabs_for_min_size_2586408642._native_ptr(),
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
    public func get_use_hidden_tabs_for_min_size() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_use_hidden_tabs_for_min_size_36873697._native_ptr(),
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