import godot_native

fileprivate var __godot_name_ResourceSaver: StringName! = nil

/// Singleton for saving Godot-specific resource types.
/// 
/// Singleton for saving Godot-specific resource types to the filesystem.
///  
/// It uses the many [ResourceFormatSaver] classes registered in the engine (either built-in or from a plugin) to save engine-specific resource data to text-based (e.g. [code].tres[/code] or [code].tscn[/code]) or binary files (e.g. [code].res[/code] or [code].scn[/code]).
open class ResourceSaver : Object {

    public struct SaverFlags: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let FLAG_NONE: SaverFlags = []
        static let FLAG_RELATIVE_PATHS = SaverFlags(rawValue: 1)
        static let FLAG_BUNDLE_RESOURCES = SaverFlags(rawValue: 2)
        static let FLAG_CHANGE_PATH = SaverFlags(rawValue: 4)
        static let FLAG_OMIT_EDITOR_PROPERTIES = SaverFlags(rawValue: 8)
        static let FLAG_SAVE_BIG_ENDIAN = SaverFlags(rawValue: 16)
        static let FLAG_COMPRESS = SaverFlags(rawValue: 32)
        static let FLAG_REPLACE_SUBRESOURCE_PATHS = SaverFlags(rawValue: 64)
    }

    public override class var __godot_name: StringName { __godot_name_ResourceSaver }

    static var _method_save_2303056517: GDExtensionMethodBindPtr! = nil
    static var _method_get_recognized_extensions_4223597960: GDExtensionMethodBindPtr! = nil
    static var _method_add_resource_format_saver_362894272: GDExtensionMethodBindPtr! = nil
    static var _method_remove_resource_format_saver_3373026878: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ResourceSaver = StringName(from: "ResourceSaver")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_save_2303056517_name = StringName(from: "save")
        self._method_save_2303056517 = self.interface.pointee.classdb_get_method_bind(__godot_name_ResourceSaver._native_ptr(), _method_save_2303056517_name._native_ptr(), 2303056517)
        assert(ResourceSaver._method_save_2303056517 != nil)
        let _method_get_recognized_extensions_4223597960_name = StringName(from: "get_recognized_extensions")
        self._method_get_recognized_extensions_4223597960 = self.interface.pointee.classdb_get_method_bind(__godot_name_ResourceSaver._native_ptr(), _method_get_recognized_extensions_4223597960_name._native_ptr(), 4223597960)
        assert(ResourceSaver._method_get_recognized_extensions_4223597960 != nil)
        let _method_add_resource_format_saver_362894272_name = StringName(from: "add_resource_format_saver")
        self._method_add_resource_format_saver_362894272 = self.interface.pointee.classdb_get_method_bind(__godot_name_ResourceSaver._native_ptr(), _method_add_resource_format_saver_362894272_name._native_ptr(), 362894272)
        assert(ResourceSaver._method_add_resource_format_saver_362894272 != nil)
        let _method_remove_resource_format_saver_3373026878_name = StringName(from: "remove_resource_format_saver")
        self._method_remove_resource_format_saver_3373026878 = self.interface.pointee.classdb_get_method_bind(__godot_name_ResourceSaver._native_ptr(), _method_remove_resource_format_saver_3373026878_name._native_ptr(), 3373026878)
        assert(ResourceSaver._method_remove_resource_format_saver_3373026878 != nil)
    }

    public func save(resource: Resource, path: godot.String, flags: ResourceSaver.SaverFlags) -> Error {
        withUnsafePointer(to: flags.rawValue) { flags_native in
        let path_native = path._native_ptr()
        let resource_native = resource._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resource_native), .init(path_native), .init(flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_save_2303056517,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func get_recognized_extensions(`type`: Resource) -> PackedStringArray {
        let type_native = `type`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_recognized_extensions_4223597960,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func add_resource_format_saver(format_saver: ResourceFormatSaver, at_front: UInt8)  {
        withUnsafePointer(to: at_front) { at_front_native in
        let format_saver_native = format_saver._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_saver_native), .init(at_front_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_resource_format_saver_362894272,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_resource_format_saver(format_saver: ResourceFormatSaver)  {
        let format_saver_native = format_saver._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_saver_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_resource_format_saver_3373026878,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}