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
public class SpinBox : Range {

    

    public override class var __godot_name: StringName { __godot_name_SpinBox }

    static var _method_set_horizontal_alignment_2312603777: GDExtensionMethodBindPtr! = nil
    static var _method_get_horizontal_alignment_341400642: GDExtensionMethodBindPtr! = nil
    static var _method_set_suffix_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_suffix_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_prefix_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_prefix_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_editable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_custom_arrow_step_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_arrow_step_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_is_editable_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_update_on_text_changed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_update_on_text_changed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_select_all_on_focus_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_select_all_on_focus_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_apply_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_edit_4071694264: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SpinBox = StringName(from: "SpinBox")

        let _method_set_horizontal_alignment_2312603777_name = StringName(from: "set_horizontal_alignment")
        self._method_set_horizontal_alignment_2312603777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_horizontal_alignment_2312603777_name._native_ptr(), 2312603777)
        assert(SpinBox._method_set_horizontal_alignment_2312603777 != nil)
        let _method_get_horizontal_alignment_341400642_name = StringName(from: "get_horizontal_alignment")
        self._method_get_horizontal_alignment_341400642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_horizontal_alignment_341400642_name._native_ptr(), 341400642)
        assert(SpinBox._method_get_horizontal_alignment_341400642 != nil)
        let _method_set_suffix_83702148_name = StringName(from: "set_suffix")
        self._method_set_suffix_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_suffix_83702148_name._native_ptr(), 83702148)
        assert(SpinBox._method_set_suffix_83702148 != nil)
        let _method_get_suffix_201670096_name = StringName(from: "get_suffix")
        self._method_get_suffix_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_suffix_201670096_name._native_ptr(), 201670096)
        assert(SpinBox._method_get_suffix_201670096 != nil)
        let _method_set_prefix_83702148_name = StringName(from: "set_prefix")
        self._method_set_prefix_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_prefix_83702148_name._native_ptr(), 83702148)
        assert(SpinBox._method_set_prefix_83702148 != nil)
        let _method_get_prefix_201670096_name = StringName(from: "get_prefix")
        self._method_get_prefix_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_prefix_201670096_name._native_ptr(), 201670096)
        assert(SpinBox._method_get_prefix_201670096 != nil)
        let _method_set_editable_2586408642_name = StringName(from: "set_editable")
        self._method_set_editable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_editable_2586408642_name._native_ptr(), 2586408642)
        assert(SpinBox._method_set_editable_2586408642 != nil)
        let _method_set_custom_arrow_step_373806689_name = StringName(from: "set_custom_arrow_step")
        self._method_set_custom_arrow_step_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_custom_arrow_step_373806689_name._native_ptr(), 373806689)
        assert(SpinBox._method_set_custom_arrow_step_373806689 != nil)
        let _method_get_custom_arrow_step_1740695150_name = StringName(from: "get_custom_arrow_step")
        self._method_get_custom_arrow_step_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_custom_arrow_step_1740695150_name._native_ptr(), 1740695150)
        assert(SpinBox._method_get_custom_arrow_step_1740695150 != nil)
        let _method_is_editable_36873697_name = StringName(from: "is_editable")
        self._method_is_editable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_editable_36873697_name._native_ptr(), 36873697)
        assert(SpinBox._method_is_editable_36873697 != nil)
        let _method_set_update_on_text_changed_2586408642_name = StringName(from: "set_update_on_text_changed")
        self._method_set_update_on_text_changed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_update_on_text_changed_2586408642_name._native_ptr(), 2586408642)
        assert(SpinBox._method_set_update_on_text_changed_2586408642 != nil)
        let _method_get_update_on_text_changed_36873697_name = StringName(from: "get_update_on_text_changed")
        self._method_get_update_on_text_changed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_update_on_text_changed_36873697_name._native_ptr(), 36873697)
        assert(SpinBox._method_get_update_on_text_changed_36873697 != nil)
        let _method_set_select_all_on_focus_2586408642_name = StringName(from: "set_select_all_on_focus")
        self._method_set_select_all_on_focus_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_select_all_on_focus_2586408642_name._native_ptr(), 2586408642)
        assert(SpinBox._method_set_select_all_on_focus_2586408642 != nil)
        let _method_is_select_all_on_focus_36873697_name = StringName(from: "is_select_all_on_focus")
        self._method_is_select_all_on_focus_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_select_all_on_focus_36873697_name._native_ptr(), 36873697)
        assert(SpinBox._method_is_select_all_on_focus_36873697 != nil)
        let _method_apply_3218959716_name = StringName(from: "apply")
        self._method_apply_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_apply_3218959716_name._native_ptr(), 3218959716)
        assert(SpinBox._method_apply_3218959716 != nil)
        let _method_get_line_edit_4071694264_name = StringName(from: "get_line_edit")
        self._method_get_line_edit_4071694264 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_edit_4071694264_name._native_ptr(), 4071694264)
        assert(SpinBox._method_get_line_edit_4071694264 != nil)
    }

    public func set_horizontal_alignment(alignment: HorizontalAlignment)  {
        withUnsafePointer(to: alignment.rawValue) { alignment_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alignment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_horizontal_alignment_2312603777,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_horizontal_alignment_341400642,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return HorizontalAlignment(from: __resPtr.pointee)
    }
    public func set_suffix(suffix: String)  {
        withUnsafePointer(to: suffix) { suffix_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(suffix_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_suffix_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_suffix() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_suffix_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_prefix(prefix: String)  {
        withUnsafePointer(to: prefix) { prefix_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(prefix_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_prefix_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_prefix() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_prefix_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_editable(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_editable_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_arrow_step_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_arrow_step_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func is_editable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_editable_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_update_on_text_changed(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_update_on_text_changed_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_update_on_text_changed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_select_all_on_focus(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_select_all_on_focus_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_select_all_on_focus_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func apply()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_edit_4071694264,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return LineEdit(from: __resPtr.pointee)
    }
}