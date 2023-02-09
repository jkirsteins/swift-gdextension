import godot_native

fileprivate var __godot_name_EditorScenePostImportPlugin: StringName! = nil

/// Plugin to control and modifying the process of importing a scene.
/// 
/// This plugin type exists to modify the process of importing scenes, allowing to change the content as well as add importer options at every stage of the process.
open class EditorScenePostImportPlugin : RefCounted {

    public enum InternalImportCategory : Int32 {
        case INTERNAL_IMPORT_CATEGORY_NODE = 0
        case INTERNAL_IMPORT_CATEGORY_MESH_3D_NODE = 1
        case INTERNAL_IMPORT_CATEGORY_MESH = 2
        case INTERNAL_IMPORT_CATEGORY_MATERIAL = 3
        case INTERNAL_IMPORT_CATEGORY_ANIMATION = 4
        case INTERNAL_IMPORT_CATEGORY_ANIMATION_NODE = 5
        case INTERNAL_IMPORT_CATEGORY_SKELETON_3D_NODE = 6
        case INTERNAL_IMPORT_CATEGORY_MAX = 7
    }

    public override class var __godot_name: StringName { __godot_name_EditorScenePostImportPlugin }

    static var _method__get_internal_import_options_0: StringName! = nil
    static var _method__get_internal_option_visibility_0: StringName! = nil
    static var _method__get_internal_option_update_view_required_0: StringName! = nil
    static var _method__internal_process_0: StringName! = nil
    static var _method__get_import_options_0: StringName! = nil
    static var _method__get_option_visibility_0: StringName! = nil
    static var _method__pre_process_0: StringName! = nil
    static var _method__post_process_0: StringName! = nil
    static var _method_get_option_value_2760726917: StringName! = nil
    static var _method_add_import_option_402577236: StringName! = nil
    static var _method_add_import_option_advanced_3774155785: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorScenePostImportPlugin == nil)
        __godot_name_EditorScenePostImportPlugin = StringName(from: "EditorScenePostImportPlugin")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_option_value_2760726917 = StringName(from: "get_option_value")
        assert(self._method_get_option_value_2760726917 != nil)
        self._method_add_import_option_402577236 = StringName(from: "add_import_option")
        assert(self._method_add_import_option_402577236 != nil)
        self._method_add_import_option_advanced_3774155785 = StringName(from: "add_import_option_advanced")
        assert(self._method_add_import_option_advanced_3774155785 != nil)
    }

    public func _get_internal_import_options(category: Int64)  {
        withUnsafePointer(to: category) { category_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(category_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _get_internal_option_visibility(category: Int64, for_animation: UInt8, option: godot.String) -> Variant {
        withUnsafePointer(to: for_animation) { for_animation_native in
        withUnsafePointer(to: category) { category_native in
        let option_native = option._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(category_native), .init(for_animation_native), .init(option_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Variant(godot: __resPtr.pointee)
        }
        }
    }
    public func _get_internal_option_update_view_required(category: Int64, option: godot.String) -> Variant {
        withUnsafePointer(to: category) { category_native in
        let option_native = option._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(category_native), .init(option_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Variant(godot: __resPtr.pointee)
        }
    }
    public func _internal_process(category: Int64, base_node: Node, node: Node, resource: Resource)  {
        withUnsafePointer(to: category) { category_native in
        let resource_native = resource._native_ptr()
        let node_native = node._native_ptr()
        let base_node_native = base_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(category_native), .init(base_node_native), .init(node_native), .init(resource_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
        }
    }
    public func _get_import_options(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _get_option_visibility(path: godot.String, for_animation: UInt8, option: godot.String) -> Variant {
        withUnsafePointer(to: for_animation) { for_animation_native in
        let option_native = option._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(for_animation_native), .init(option_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Variant(godot: __resPtr.pointee)
        }
    }
    public func _pre_process(scene: Node)  {
        let scene_native = scene._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func _post_process(scene: Node)  {
        let scene_native = scene._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func get_option_value(name: StringName) -> Variant {
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
                    Self._method_get_option_value_2760726917._native_ptr(),
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
    public func add_import_option(name: godot.String, value: Variant)  {
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
                    Self._method_add_import_option_402577236._native_ptr(),
                    402577236)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_import_option_advanced(`type`: Variant.`Typ`, name: godot.String, default_value: Variant, hint: PropertyHint, hint_string: godot.String, usage_flags: Int64)  {
        withUnsafePointer(to: usage_flags) { usage_flags_native in
        withUnsafePointer(to: hint.rawValue) { hint_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let hint_string_native = hint_string._native_ptr()
        let default_value_native = default_value._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(name_native), .init(default_value_native), .init(hint_native), .init(hint_string_native), .init(usage_flags_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_import_option_advanced_3774155785._native_ptr(),
                    3774155785)
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