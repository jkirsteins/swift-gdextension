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

    static var _method_set_disable_class_2524380260: StringName! = nil
    static var _method_is_class_disabled_2619796661: StringName! = nil
    static var _method_set_disable_class_editor_2524380260: StringName! = nil
    static var _method_is_class_editor_disabled_2619796661: StringName! = nil
    static var _method_set_disable_class_property_865197084: StringName! = nil
    static var _method_is_class_property_disabled_471820014: StringName! = nil
    static var _method_set_disable_feature_1884871044: StringName! = nil
    static var _method_is_feature_disabled_2974403161: StringName! = nil
    static var _method_get_feature_name_3401335809: StringName! = nil
    static var _method_save_to_file_166001499: StringName! = nil
    static var _method_load_from_file_166001499: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorFeatureProfile == nil)
        __godot_name_EditorFeatureProfile = StringName(from: "EditorFeatureProfile")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_disable_class_2524380260 = StringName(from: "set_disable_class")
        assert(self._method_set_disable_class_2524380260 != nil)
        self._method_is_class_disabled_2619796661 = StringName(from: "is_class_disabled")
        assert(self._method_is_class_disabled_2619796661 != nil)
        self._method_set_disable_class_editor_2524380260 = StringName(from: "set_disable_class_editor")
        assert(self._method_set_disable_class_editor_2524380260 != nil)
        self._method_is_class_editor_disabled_2619796661 = StringName(from: "is_class_editor_disabled")
        assert(self._method_is_class_editor_disabled_2619796661 != nil)
        self._method_set_disable_class_property_865197084 = StringName(from: "set_disable_class_property")
        assert(self._method_set_disable_class_property_865197084 != nil)
        self._method_is_class_property_disabled_471820014 = StringName(from: "is_class_property_disabled")
        assert(self._method_is_class_property_disabled_471820014 != nil)
        self._method_set_disable_feature_1884871044 = StringName(from: "set_disable_feature")
        assert(self._method_set_disable_feature_1884871044 != nil)
        self._method_is_feature_disabled_2974403161 = StringName(from: "is_feature_disabled")
        assert(self._method_is_feature_disabled_2974403161 != nil)
        self._method_get_feature_name_3401335809 = StringName(from: "get_feature_name")
        assert(self._method_get_feature_name_3401335809 != nil)
        self._method_save_to_file_166001499 = StringName(from: "save_to_file")
        assert(self._method_save_to_file_166001499 != nil)
        self._method_load_from_file_166001499 = StringName(from: "load_from_file")
        assert(self._method_load_from_file_166001499 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_disable_class_2524380260._native_ptr(),
                    2524380260)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_class_disabled_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_disable_class_editor_2524380260._native_ptr(),
                    2524380260)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_class_editor_disabled_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_disable_class_property_865197084._native_ptr(),
                    865197084)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_class_property_disabled_471820014._native_ptr(),
                    471820014)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_disable_feature_1884871044._native_ptr(),
                    1884871044)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_feature_disabled_2974403161._native_ptr(),
                    2974403161)
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
    public func get_feature_name(feature: EditorFeatureProfile.Feature) -> godot.String {
        withUnsafePointer(to: feature.rawValue) { feature_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feature_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_feature_name_3401335809._native_ptr(),
                    3401335809)
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
    public func save_to_file(path: godot.String) -> Error {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_save_to_file_166001499._native_ptr(),
                    166001499)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_from_file_166001499._native_ptr(),
                    166001499)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
}