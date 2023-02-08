import godot_native

fileprivate var __godot_name_EditorProperty: StringName! = nil

/// Custom control to edit properties for adding into the inspector.
/// 
/// This control allows property editing for one or multiple properties into [EditorInspector]. It is added via [EditorInspectorPlugin].
open class EditorProperty : Container {

    

    public override class var __godot_name: StringName { __godot_name_EditorProperty }

    static var _method__update_property_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_read_only_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_label_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_label_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_read_only_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_read_only_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_checkable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_checkable_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_checked_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_checked_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_warning_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_draw_warning_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_keying_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_keying_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_deletable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_deletable_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_edited_property_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_get_edited_object_2050059866: GDExtensionMethodBindPtr! = nil
    static var _method_update_property_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_add_focusable_1496901182: GDExtensionMethodBindPtr! = nil
    static var _method_set_bottom_editor_1496901182: GDExtensionMethodBindPtr! = nil
    static var _method_emit_changed_3069422438: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_EditorProperty = StringName(from: "EditorProperty")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_label_83702148_name = StringName(from: "set_label")
        self._method_set_label_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_set_label_83702148_name._native_ptr(), 83702148)
        assert(EditorProperty._method_set_label_83702148 != nil)
        let _method_get_label_201670096_name = StringName(from: "get_label")
        self._method_get_label_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_get_label_201670096_name._native_ptr(), 201670096)
        assert(EditorProperty._method_get_label_201670096 != nil)
        let _method_set_read_only_2586408642_name = StringName(from: "set_read_only")
        self._method_set_read_only_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_set_read_only_2586408642_name._native_ptr(), 2586408642)
        assert(EditorProperty._method_set_read_only_2586408642 != nil)
        let _method_is_read_only_36873697_name = StringName(from: "is_read_only")
        self._method_is_read_only_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_is_read_only_36873697_name._native_ptr(), 36873697)
        assert(EditorProperty._method_is_read_only_36873697 != nil)
        let _method_set_checkable_2586408642_name = StringName(from: "set_checkable")
        self._method_set_checkable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_set_checkable_2586408642_name._native_ptr(), 2586408642)
        assert(EditorProperty._method_set_checkable_2586408642 != nil)
        let _method_is_checkable_36873697_name = StringName(from: "is_checkable")
        self._method_is_checkable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_is_checkable_36873697_name._native_ptr(), 36873697)
        assert(EditorProperty._method_is_checkable_36873697 != nil)
        let _method_set_checked_2586408642_name = StringName(from: "set_checked")
        self._method_set_checked_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_set_checked_2586408642_name._native_ptr(), 2586408642)
        assert(EditorProperty._method_set_checked_2586408642 != nil)
        let _method_is_checked_36873697_name = StringName(from: "is_checked")
        self._method_is_checked_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_is_checked_36873697_name._native_ptr(), 36873697)
        assert(EditorProperty._method_is_checked_36873697 != nil)
        let _method_set_draw_warning_2586408642_name = StringName(from: "set_draw_warning")
        self._method_set_draw_warning_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_set_draw_warning_2586408642_name._native_ptr(), 2586408642)
        assert(EditorProperty._method_set_draw_warning_2586408642 != nil)
        let _method_is_draw_warning_36873697_name = StringName(from: "is_draw_warning")
        self._method_is_draw_warning_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_is_draw_warning_36873697_name._native_ptr(), 36873697)
        assert(EditorProperty._method_is_draw_warning_36873697 != nil)
        let _method_set_keying_2586408642_name = StringName(from: "set_keying")
        self._method_set_keying_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_set_keying_2586408642_name._native_ptr(), 2586408642)
        assert(EditorProperty._method_set_keying_2586408642 != nil)
        let _method_is_keying_36873697_name = StringName(from: "is_keying")
        self._method_is_keying_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_is_keying_36873697_name._native_ptr(), 36873697)
        assert(EditorProperty._method_is_keying_36873697 != nil)
        let _method_set_deletable_2586408642_name = StringName(from: "set_deletable")
        self._method_set_deletable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_set_deletable_2586408642_name._native_ptr(), 2586408642)
        assert(EditorProperty._method_set_deletable_2586408642 != nil)
        let _method_is_deletable_36873697_name = StringName(from: "is_deletable")
        self._method_is_deletable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_is_deletable_36873697_name._native_ptr(), 36873697)
        assert(EditorProperty._method_is_deletable_36873697 != nil)
        let _method_get_edited_property_2002593661_name = StringName(from: "get_edited_property")
        self._method_get_edited_property_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_get_edited_property_2002593661_name._native_ptr(), 2002593661)
        assert(EditorProperty._method_get_edited_property_2002593661 != nil)
        let _method_get_edited_object_2050059866_name = StringName(from: "get_edited_object")
        self._method_get_edited_object_2050059866 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_get_edited_object_2050059866_name._native_ptr(), 2050059866)
        assert(EditorProperty._method_get_edited_object_2050059866 != nil)
        let _method_update_property_3218959716_name = StringName(from: "update_property")
        self._method_update_property_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_update_property_3218959716_name._native_ptr(), 3218959716)
        assert(EditorProperty._method_update_property_3218959716 != nil)
        let _method_add_focusable_1496901182_name = StringName(from: "add_focusable")
        self._method_add_focusable_1496901182 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_add_focusable_1496901182_name._native_ptr(), 1496901182)
        assert(EditorProperty._method_add_focusable_1496901182 != nil)
        let _method_set_bottom_editor_1496901182_name = StringName(from: "set_bottom_editor")
        self._method_set_bottom_editor_1496901182 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_set_bottom_editor_1496901182_name._native_ptr(), 1496901182)
        assert(EditorProperty._method_set_bottom_editor_1496901182 != nil)
        let _method_emit_changed_3069422438_name = StringName(from: "emit_changed")
        self._method_emit_changed_3069422438 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorProperty._native_ptr(), _method_emit_changed_3069422438_name._native_ptr(), 3069422438)
        assert(EditorProperty._method_emit_changed_3069422438 != nil)
    }

    public func _update_property()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__update_property_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _set_read_only(read_only: UInt8)  {
        withUnsafePointer(to: read_only) { read_only_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(read_only_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_read_only_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_label(text: godot.String)  {
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_label_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_label() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_label_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_read_only(read_only: UInt8)  {
        withUnsafePointer(to: read_only) { read_only_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(read_only_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_read_only_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_read_only() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_read_only_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_checkable(checkable: UInt8)  {
        withUnsafePointer(to: checkable) { checkable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(checkable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_checkable_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_checkable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_checkable_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_checked(checked: UInt8)  {
        withUnsafePointer(to: checked) { checked_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(checked_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_checked_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_checked() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_checked_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_draw_warning(draw_warning: UInt8)  {
        withUnsafePointer(to: draw_warning) { draw_warning_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_warning_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_warning_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_draw_warning() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_draw_warning_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_keying(keying: UInt8)  {
        withUnsafePointer(to: keying) { keying_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keying_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_keying_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_keying() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_keying_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_deletable(deletable: UInt8)  {
        withUnsafePointer(to: deletable) { deletable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(deletable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_deletable_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_deletable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_deletable_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_edited_property() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_edited_property_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func get_edited_object() -> Object {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_edited_object_2050059866,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(godot: __resPtr.pointee)
    }
    public func update_property()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_update_property_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_focusable(control: Control)  {
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_focusable_1496901182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_bottom_editor(editor: Control)  {
        let editor_native = editor._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(editor_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bottom_editor_1496901182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func emit_changed(property: StringName, value: Variant, field: StringName, changing: UInt8)  {
        withUnsafePointer(to: changing) { changing_native in
        let field_native = field._native_ptr()
        let value_native = value._native_ptr()
        let property_native = property._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(property_native), .init(value_native), .init(field_native), .init(changing_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_emit_changed_3069422438,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}