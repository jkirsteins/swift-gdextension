import godot_native

fileprivate var __godot_name_EditorFeatureProfile: StringName! = nil

/// An editor feature profile which can be used to disable specific features.
/// 
/// An editor feature profile can be used to disable specific features of the Godot editor. When disabled, the features won't appear in the editor, which makes the editor less cluttered. This is useful in education settings to reduce confusion or when working in a team. For example, artists and level designers could use a feature profile that disables the script editor to avoid accidentally making changes to files they aren't supposed to edit.
///  
/// To manage editor feature profiles visually, use [b]Editor > Manage Feature Profiles...[/b] at the top of the editor window.
open class EditorFeatureProfile : RefCounted {

    public enum Feature : Int32 {
        case FEATURE_3D = 0
        case FEATURE_SCRIPT = 1
        case FEATURE_ASSET_LIB = 2
        case FEATURE_SCENE_TREE = 3
        case FEATURE_NODE_DOCK = 4
        case FEATURE_FILESYSTEM_DOCK = 5
        case FEATURE_IMPORT_DOCK = 6
        case FEATURE_HISTORY_DOCK = 7
        case FEATURE_MAX = 8
    }

    public override class var __godot_name: StringName { __godot_name_EditorFeatureProfile }

    static var _method_set_disable_class_2524380260: GDExtensionMethodBindPtr! = nil
    static var _method_is_class_disabled_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_set_disable_class_editor_2524380260: GDExtensionMethodBindPtr! = nil
    static var _method_is_class_editor_disabled_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_set_disable_class_property_865197084: GDExtensionMethodBindPtr! = nil
    static var _method_is_class_property_disabled_471820014: GDExtensionMethodBindPtr! = nil
    static var _method_set_disable_feature_1884871044: GDExtensionMethodBindPtr! = nil
    static var _method_is_feature_disabled_2974403161: GDExtensionMethodBindPtr! = nil
    static var _method_get_feature_name_3401335809: GDExtensionMethodBindPtr! = nil
    static var _method_save_to_file_166001499: GDExtensionMethodBindPtr! = nil
    static var _method_load_from_file_166001499: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_EditorFeatureProfile = StringName(from: "EditorFeatureProfile")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_disable_class_2524380260_name = StringName(from: "set_disable_class")
        self._method_set_disable_class_2524380260 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFeatureProfile._native_ptr(), _method_set_disable_class_2524380260_name._native_ptr(), 2524380260)
        assert(EditorFeatureProfile._method_set_disable_class_2524380260 != nil)
        let _method_is_class_disabled_2619796661_name = StringName(from: "is_class_disabled")
        self._method_is_class_disabled_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFeatureProfile._native_ptr(), _method_is_class_disabled_2619796661_name._native_ptr(), 2619796661)
        assert(EditorFeatureProfile._method_is_class_disabled_2619796661 != nil)
        let _method_set_disable_class_editor_2524380260_name = StringName(from: "set_disable_class_editor")
        self._method_set_disable_class_editor_2524380260 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFeatureProfile._native_ptr(), _method_set_disable_class_editor_2524380260_name._native_ptr(), 2524380260)
        assert(EditorFeatureProfile._method_set_disable_class_editor_2524380260 != nil)
        let _method_is_class_editor_disabled_2619796661_name = StringName(from: "is_class_editor_disabled")
        self._method_is_class_editor_disabled_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFeatureProfile._native_ptr(), _method_is_class_editor_disabled_2619796661_name._native_ptr(), 2619796661)
        assert(EditorFeatureProfile._method_is_class_editor_disabled_2619796661 != nil)
        let _method_set_disable_class_property_865197084_name = StringName(from: "set_disable_class_property")
        self._method_set_disable_class_property_865197084 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFeatureProfile._native_ptr(), _method_set_disable_class_property_865197084_name._native_ptr(), 865197084)
        assert(EditorFeatureProfile._method_set_disable_class_property_865197084 != nil)
        let _method_is_class_property_disabled_471820014_name = StringName(from: "is_class_property_disabled")
        self._method_is_class_property_disabled_471820014 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFeatureProfile._native_ptr(), _method_is_class_property_disabled_471820014_name._native_ptr(), 471820014)
        assert(EditorFeatureProfile._method_is_class_property_disabled_471820014 != nil)
        let _method_set_disable_feature_1884871044_name = StringName(from: "set_disable_feature")
        self._method_set_disable_feature_1884871044 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFeatureProfile._native_ptr(), _method_set_disable_feature_1884871044_name._native_ptr(), 1884871044)
        assert(EditorFeatureProfile._method_set_disable_feature_1884871044 != nil)
        let _method_is_feature_disabled_2974403161_name = StringName(from: "is_feature_disabled")
        self._method_is_feature_disabled_2974403161 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFeatureProfile._native_ptr(), _method_is_feature_disabled_2974403161_name._native_ptr(), 2974403161)
        assert(EditorFeatureProfile._method_is_feature_disabled_2974403161 != nil)
        let _method_get_feature_name_3401335809_name = StringName(from: "get_feature_name")
        self._method_get_feature_name_3401335809 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFeatureProfile._native_ptr(), _method_get_feature_name_3401335809_name._native_ptr(), 3401335809)
        assert(EditorFeatureProfile._method_get_feature_name_3401335809 != nil)
        let _method_save_to_file_166001499_name = StringName(from: "save_to_file")
        self._method_save_to_file_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFeatureProfile._native_ptr(), _method_save_to_file_166001499_name._native_ptr(), 166001499)
        assert(EditorFeatureProfile._method_save_to_file_166001499 != nil)
        let _method_load_from_file_166001499_name = StringName(from: "load_from_file")
        self._method_load_from_file_166001499 = self.interface.pointee.classdb_get_method_bind(__godot_name_EditorFeatureProfile._native_ptr(), _method_load_from_file_166001499_name._native_ptr(), 166001499)
        assert(EditorFeatureProfile._method_load_from_file_166001499 != nil)
    }

    public func set_disable_class(class_name: StringName, disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let class_name_native = class_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_name_native), .init(disable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disable_class_2524380260,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_class_disabled(class_name: StringName) -> UInt8 {
        let class_name_native = class_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_class_disabled_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_disable_class_editor(class_name: StringName, disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let class_name_native = class_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_name_native), .init(disable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disable_class_editor_2524380260,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_class_editor_disabled(class_name: StringName) -> UInt8 {
        let class_name_native = class_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_class_editor_disabled_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_disable_class_property(class_name: StringName, property: StringName, disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let property_native = property._native_ptr()
        let class_name_native = class_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_name_native), .init(property_native), .init(disable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disable_class_property_865197084,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_class_property_disabled(class_name: StringName, property: StringName) -> UInt8 {
        let property_native = property._native_ptr()
        let class_name_native = class_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(class_name_native), .init(property_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_class_property_disabled_471820014,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_disable_feature(feature: EditorFeatureProfile.Feature, disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        withUnsafePointer(to: feature.rawValue) { feature_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feature_native), .init(disable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_disable_feature_1884871044,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_feature_disabled(feature: EditorFeatureProfile.Feature) -> UInt8 {
        withUnsafePointer(to: feature.rawValue) { feature_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feature_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_feature_disabled_2974403161,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func get_feature_name(feature: EditorFeatureProfile.Feature) -> godot.String {
        withUnsafePointer(to: feature.rawValue) { feature_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feature_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_feature_name_3401335809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func save_to_file(path: godot.String) -> Error {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_to_file_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func load_from_file(path: godot.String) -> Error {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_from_file_166001499,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
}