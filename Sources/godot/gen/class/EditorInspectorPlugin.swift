import godot_native

fileprivate var __godot_name_EditorInspectorPlugin: StringName! = nil

/// Plugin for adding custom property editors on the inspector.
/// 
/// [EditorInspectorPlugin] allows adding custom property editors to [EditorInspector].
///  
/// When an object is edited, the [method _can_handle] function is called and must return [code]true[/code] if the object type is supported.
///  
/// If supported, the function [method _parse_begin] will be called, allowing to place custom controls at the beginning of the class.
///  
/// Subsequently, the [method _parse_category] and [method _parse_property] are called for every category and property. They offer the ability to add custom controls to the inspector too.
///  
/// Finally, [method _parse_end] will be called.
///  
/// On each of these calls, the "add" functions can be called.
///  
/// To use [EditorInspectorPlugin], register it using the [method EditorPlugin.add_inspector_plugin] method first.
open class EditorInspectorPlugin : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorInspectorPlugin }

    static var _method__can_handle_0: StringName! = nil
    static var _method__parse_begin_0: StringName! = nil
    static var _method__parse_category_0: StringName! = nil
    static var _method__parse_group_0: StringName! = nil
    static var _method__parse_property_0: StringName! = nil
    static var _method__parse_end_0: StringName! = nil
    static var _method_add_custom_control_1496901182: StringName! = nil
    static var _method_add_property_editor_3406284123: StringName! = nil
    static var _method_add_property_editor_for_multiple_properties_788598683: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorInspectorPlugin == nil)
        __godot_name_EditorInspectorPlugin = StringName(from: "EditorInspectorPlugin")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_custom_control_1496901182 = StringName(from: "add_custom_control")
        assert(self._method_add_custom_control_1496901182 != nil)
        self._method_add_property_editor_3406284123 = StringName(from: "add_property_editor")
        assert(self._method_add_property_editor_3406284123 != nil)
        self._method_add_property_editor_for_multiple_properties_788598683 = StringName(from: "add_property_editor_for_multiple_properties")
        assert(self._method_add_property_editor_for_multiple_properties_788598683 != nil)
    }

    public func _can_handle(object: Variant) -> UInt8 {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _parse_begin(object: Object)  {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _parse_category(object: Object, category: godot.String)  {
        let category_native = category._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(category_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _parse_group(object: Object, group: godot.String)  {
        let group_native = group._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(group_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _parse_property(object: Object, `type`: Variant.`Typ`, name: godot.String, hint_type: PropertyHint, hint_string: godot.String, usage_flags: PropertyUsageFlags, wide: UInt8) -> UInt8 {
        withUnsafePointer(to: wide) { wide_native in
        withUnsafePointer(to: usage_flags.rawValue) { usage_flags_native in
        withUnsafePointer(to: hint_type.rawValue) { hint_type_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let hint_string_native = hint_string._native_ptr()
        let name_native = name._native_ptr()
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native), .init(type_native), .init(name_native), .init(hint_type_native), .init(hint_string_native), .init(usage_flags_native), .init(wide_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func _parse_end(object: Object)  {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func add_custom_control(control: Control)  {
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_custom_control_1496901182._native_ptr(),
                    1496901182)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_property_editor(property: godot.String, editor: Control, add_to_end: UInt8)  {
        withUnsafePointer(to: add_to_end) { add_to_end_native in
        let editor_native = editor._native_ptr()
        let property_native = property._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(property_native), .init(editor_native), .init(add_to_end_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_property_editor_3406284123._native_ptr(),
                    3406284123)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_property_editor_for_multiple_properties(label: godot.String, properties: PackedStringArray, editor: Control)  {
        let editor_native = editor._native_ptr()
        let properties_native = properties._native_ptr()
        let label_native = label._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native), .init(properties_native), .init(editor_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_property_editor_for_multiple_properties_788598683._native_ptr(),
                    788598683)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}