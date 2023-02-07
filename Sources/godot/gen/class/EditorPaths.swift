import godot_native

fileprivate var __godot_name_EditorPaths: StringName! = nil

/// Editor-only singleton that returns paths to various OS-specific data folders and files.
/// 
/// This editor-only singleton returns OS-specific paths to various data folders and files. It can be used in editor plugins to ensure files are saved in the correct location on each operating system.
///  
/// [b]Note:[/b] This singleton is not accessible in exported projects. Attempting to access it in an exported project will result in a script error as the singleton won't be declared. To prevent script errors in exported projects, use [method Engine.has_singleton] to check whether the singleton is available before using it.
///  
/// [b]Note:[/b] On the Linux/BSD platform, Godot complies with the [url=https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html]XDG Base Directory Specification[/url]. You can override environment variables following the specification to change the editor and project data paths.
public class EditorPaths : Object {

    

    public override class var __godot_name: StringName { __godot_name_EditorPaths }

    static var _method_get_data_dir_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_config_dir_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_cache_dir_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_self_contained_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_self_contained_file_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_project_settings_dir_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorPaths = StringName(from: "EditorPaths")

        let _method_get_data_dir_201670096_name = StringName(from: "get_data_dir")
        self._method_get_data_dir_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_data_dir_201670096_name._native_ptr(), 201670096)
        assert(EditorPaths._method_get_data_dir_201670096 != nil)
        let _method_get_config_dir_201670096_name = StringName(from: "get_config_dir")
        self._method_get_config_dir_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_config_dir_201670096_name._native_ptr(), 201670096)
        assert(EditorPaths._method_get_config_dir_201670096 != nil)
        let _method_get_cache_dir_201670096_name = StringName(from: "get_cache_dir")
        self._method_get_cache_dir_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cache_dir_201670096_name._native_ptr(), 201670096)
        assert(EditorPaths._method_get_cache_dir_201670096 != nil)
        let _method_is_self_contained_36873697_name = StringName(from: "is_self_contained")
        self._method_is_self_contained_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_self_contained_36873697_name._native_ptr(), 36873697)
        assert(EditorPaths._method_is_self_contained_36873697 != nil)
        let _method_get_self_contained_file_201670096_name = StringName(from: "get_self_contained_file")
        self._method_get_self_contained_file_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_self_contained_file_201670096_name._native_ptr(), 201670096)
        assert(EditorPaths._method_get_self_contained_file_201670096 != nil)
        let _method_get_project_settings_dir_201670096_name = StringName(from: "get_project_settings_dir")
        self._method_get_project_settings_dir_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_project_settings_dir_201670096_name._native_ptr(), 201670096)
        assert(EditorPaths._method_get_project_settings_dir_201670096 != nil)
    }

    public func get_data_dir() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_data_dir_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_config_dir() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_config_dir_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_cache_dir() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cache_dir_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func is_self_contained() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_self_contained_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_self_contained_file() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_self_contained_file_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_project_settings_dir() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_project_settings_dir_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
}