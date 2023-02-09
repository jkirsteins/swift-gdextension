import godot_native

fileprivate var __godot_name_SpinBox: StringName! = nil

/// Numerical input text field.
/// 
/// SpinBox is a numerical input text field. It allows entering integers and floats.
///  
/// [b]Example:[/b]
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var spin_box = SpinBox.new()
///  
/// add_child(spin_box)
///  
/// var line_edit = spin_box.get_line_edit()
///  
/// line_edit.context_menu_enabled = false
///  
/// spin_box.horizontal_alignment = LineEdit.HORIZONTAL_ALIGNMENT_RIGHT
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var spinBox = new SpinBox();
///  
/// AddChild(spinBox);
///  
/// var lineEdit = spinBox.GetLineEdit();
///  
/// lineEdit.ContextMenuEnabled = false;
///  
/// spinBox.AlignHorizontal = LineEdit.HorizontalAlignEnum.Right;
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// The above code will create a [SpinBox], disable context menu on it and set the text alignment to right.
///  
/// See [Range] class for more options over the [SpinBox].
///  
/// [b]Note:[/b] [SpinBox] relies on an underlying [LineEdit] node. To theme a [SpinBox]'s background, add theme items for [LineEdit] and customize them.
///  
/// [b]Note:[/b] If you want to implement drag and drop for the underlying [LineEdit], you can use [method Control.set_drag_forwarding] on the node returned by [method get_line_edit].
open class SpinBox : Range {

    

    public override class var __godot_name: StringName { __godot_name_SpinBox }

    static var _method_set_horizontal_alignment_2312603777: StringName! = nil
    static var _method_get_horizontal_alignment_341400642: StringName! = nil
    static var _method_set_suffix_83702148: StringName! = nil
    static var _method_get_suffix_201670096: StringName! = nil
    static var _method_set_prefix_83702148: StringName! = nil
    static var _method_get_prefix_201670096: StringName! = nil
    static var _method_set_editable_2586408642: StringName! = nil
    static var _method_set_custom_arrow_step_373806689: StringName! = nil
    static var _method_get_custom_arrow_step_1740695150: StringName! = nil
    static var _method_is_editable_36873697: StringName! = nil
    static var _method_set_update_on_text_changed_2586408642: StringName! = nil
    static var _method_get_update_on_text_changed_36873697: StringName! = nil
    static var _method_set_select_all_on_focus_2586408642: StringName! = nil
    static var _method_is_select_all_on_focus_36873697: StringName! = nil
    static var _method_apply_3218959716: StringName! = nil
    static var _method_get_line_edit_4071694264: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SpinBox == nil)
        __godot_name_SpinBox = StringName(from: "SpinBox")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_horizontal_alignment_2312603777 = StringName(from: "set_horizontal_alignment")
        assert(self._method_set_horizontal_alignment_2312603777 != nil)
        self._method_get_horizontal_alignment_341400642 = StringName(from: "get_horizontal_alignment")
        assert(self._method_get_horizontal_alignment_341400642 != nil)
        self._method_set_suffix_83702148 = StringName(from: "set_suffix")
        assert(self._method_set_suffix_83702148 != nil)
        self._method_get_suffix_201670096 = StringName(from: "get_suffix")
        assert(self._method_get_suffix_201670096 != nil)
        self._method_set_prefix_83702148 = StringName(from: "set_prefix")
        assert(self._method_set_prefix_83702148 != nil)
        self._method_get_prefix_201670096 = StringName(from: "get_prefix")
        assert(self._method_get_prefix_201670096 != nil)
        self._method_set_editable_2586408642 = StringName(from: "set_editable")
        assert(self._method_set_editable_2586408642 != nil)
        self._method_set_custom_arrow_step_373806689 = StringName(from: "set_custom_arrow_step")
        assert(self._method_set_custom_arrow_step_373806689 != nil)
        self._method_get_custom_arrow_step_1740695150 = StringName(from: "get_custom_arrow_step")
        assert(self._method_get_custom_arrow_step_1740695150 != nil)
        self._method_is_editable_36873697 = StringName(from: "is_editable")
        assert(self._method_is_editable_36873697 != nil)
        self._method_set_update_on_text_changed_2586408642 = StringName(from: "set_update_on_text_changed")
        assert(self._method_set_update_on_text_changed_2586408642 != nil)
        self._method_get_update_on_text_changed_36873697 = StringName(from: "get_update_on_text_changed")
        assert(self._method_get_update_on_text_changed_36873697 != nil)
        self._method_set_select_all_on_focus_2586408642 = StringName(from: "set_select_all_on_focus")
        assert(self._method_set_select_all_on_focus_2586408642 != nil)
        self._method_is_select_all_on_focus_36873697 = StringName(from: "is_select_all_on_focus")
        assert(self._method_is_select_all_on_focus_36873697 != nil)
        self._method_apply_3218959716 = StringName(from: "apply")
        assert(self._method_apply_3218959716 != nil)
        self._method_get_line_edit_4071694264 = StringName(from: "get_line_edit")
        assert(self._method_get_line_edit_4071694264 != nil)
    }

    public func set_horizontal_alignment(alignment: HorizontalAlignment)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_horizontal_alignment_2312603777._native_ptr(),
                    2312603777)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_horizontal_alignment() -> HorizontalAlignment {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_horizontal_alignment_341400642._native_ptr(),
                    341400642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HorizontalAlignment(godot: __resPtr.pointee)
    }
    public func set_suffix(suffix: godot.String)  {
        let suffix_native = suffix._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(suffix_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_suffix_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_suffix() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_suffix_201670096._native_ptr(),
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
    public func set_prefix(prefix: godot.String)  {
        let prefix_native = prefix._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(prefix_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_prefix_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_prefix() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_prefix_201670096._native_ptr(),
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
    public func set_editable(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_editable_2586408642._native_ptr(),
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
    public func set_custom_arrow_step(arrow_step: Float64)  {
        withUnsafePointer(to: arrow_step) { arrow_step_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(arrow_step_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_custom_arrow_step_373806689._native_ptr(),
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
    public func get_custom_arrow_step() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_custom_arrow_step_1740695150._native_ptr(),
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
    public func is_editable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_editable_36873697._native_ptr(),
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
    public func set_update_on_text_changed(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_update_on_text_changed_2586408642._native_ptr(),
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
    public func get_update_on_text_changed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_update_on_text_changed_36873697._native_ptr(),
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
    public func set_select_all_on_focus(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_select_all_on_focus_2586408642._native_ptr(),
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
    public func is_select_all_on_focus() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_select_all_on_focus_36873697._native_ptr(),
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
    public func apply()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_apply_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_line_edit() -> LineEdit {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_line_edit_4071694264._native_ptr(),
                    4071694264)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LineEdit(godot: __resPtr.pointee)
    }
}