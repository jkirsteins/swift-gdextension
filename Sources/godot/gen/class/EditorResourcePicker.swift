import godot_native

fileprivate var __godot_name_EditorResourcePicker: StringName! = nil

/// Godot editor's control for selecting [Resource] type properties.
/// 
/// This [Control] node is used in the editor's Inspector dock to allow editing of [Resource] type properties. It provides options for creating, loading, saving and converting resources. Can be used with [EditorInspectorPlugin] to recreate the same behavior.
///  
/// [b]Note:[/b] This [Control] does not include any editor for the resource, as editing is controlled by the Inspector dock itself or sub-Inspectors.
public class EditorResourcePicker : HBoxContainer {

    

    public override class var __godot_name: StringName { __godot_name_EditorResourcePicker }

    static var _method__set_create_options_0: GDExtensionMethodBindPtr! = nil
    static var _method__handle_menu_selected_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_base_type_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_base_type_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_allowed_types_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_set_edited_resource_968641751: GDExtensionMethodBindPtr! = nil
    static var _method_get_edited_resource_2674603643: GDExtensionMethodBindPtr! = nil
    static var _method_set_toggle_mode_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_toggle_mode_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_toggle_pressed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_editable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_editable_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorResourcePicker = StringName(from: "EditorResourcePicker")

        let _method_set_base_type_83702148_name = StringName(from: "set_base_type")
        self._method_set_base_type_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_base_type_83702148_name._native_ptr(), 83702148)
        assert(EditorResourcePicker._method_set_base_type_83702148 != nil)
        let _method_get_base_type_201670096_name = StringName(from: "get_base_type")
        self._method_get_base_type_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_base_type_201670096_name._native_ptr(), 201670096)
        assert(EditorResourcePicker._method_get_base_type_201670096 != nil)
        let _method_get_allowed_types_1139954409_name = StringName(from: "get_allowed_types")
        self._method_get_allowed_types_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_allowed_types_1139954409_name._native_ptr(), 1139954409)
        assert(EditorResourcePicker._method_get_allowed_types_1139954409 != nil)
        let _method_set_edited_resource_968641751_name = StringName(from: "set_edited_resource")
        self._method_set_edited_resource_968641751 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_edited_resource_968641751_name._native_ptr(), 968641751)
        assert(EditorResourcePicker._method_set_edited_resource_968641751 != nil)
        let _method_get_edited_resource_2674603643_name = StringName(from: "get_edited_resource")
        self._method_get_edited_resource_2674603643 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_edited_resource_2674603643_name._native_ptr(), 2674603643)
        assert(EditorResourcePicker._method_get_edited_resource_2674603643 != nil)
        let _method_set_toggle_mode_2586408642_name = StringName(from: "set_toggle_mode")
        self._method_set_toggle_mode_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_toggle_mode_2586408642_name._native_ptr(), 2586408642)
        assert(EditorResourcePicker._method_set_toggle_mode_2586408642 != nil)
        let _method_is_toggle_mode_36873697_name = StringName(from: "is_toggle_mode")
        self._method_is_toggle_mode_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_toggle_mode_36873697_name._native_ptr(), 36873697)
        assert(EditorResourcePicker._method_is_toggle_mode_36873697 != nil)
        let _method_set_toggle_pressed_2586408642_name = StringName(from: "set_toggle_pressed")
        self._method_set_toggle_pressed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_toggle_pressed_2586408642_name._native_ptr(), 2586408642)
        assert(EditorResourcePicker._method_set_toggle_pressed_2586408642 != nil)
        let _method_set_editable_2586408642_name = StringName(from: "set_editable")
        self._method_set_editable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_editable_2586408642_name._native_ptr(), 2586408642)
        assert(EditorResourcePicker._method_set_editable_2586408642 != nil)
        let _method_is_editable_36873697_name = StringName(from: "is_editable")
        self._method_is_editable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_editable_36873697_name._native_ptr(), 36873697)
        assert(EditorResourcePicker._method_is_editable_36873697 != nil)
    }

    public func _set_create_options(menu_node: Object)  {
        let menu_node_native = menu_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(menu_node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_create_options_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _handle_menu_selected(id: Int64) -> UInt8 {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__handle_menu_selected_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_base_type(base_type: String)  {
        withUnsafePointer(to: base_type) { base_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_base_type_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_base_type() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_base_type_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_allowed_types() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_allowed_types_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func set_edited_resource(resource: Resource)  {
        let resource_native = resource._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resource_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_edited_resource_968641751,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_edited_resource() -> Resource {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_edited_resource_2674603643,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(from: __resPtr.pointee)
    }
    public func set_toggle_mode(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_toggle_mode_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_toggle_mode() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_toggle_mode_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_toggle_pressed(pressed: UInt8)  {
        withUnsafePointer(to: pressed) { pressed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pressed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_toggle_pressed_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_editable(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
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
}