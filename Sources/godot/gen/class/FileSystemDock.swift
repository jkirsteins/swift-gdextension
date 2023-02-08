import godot_native

fileprivate var __godot_name_FileSystemDock: StringName! = nil

/// 
/// 
/// 
open class FileSystemDock : VBoxContainer {

    

    public override class var __godot_name: StringName { __godot_name_FileSystemDock }

    static var _method_navigate_to_path_83702148: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        __godot_name_FileSystemDock = StringName(from: "FileSystemDock")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_navigate_to_path_83702148_name = StringName(from: "navigate_to_path")
        self._method_navigate_to_path_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_FileSystemDock._native_ptr(), _method_navigate_to_path_83702148_name._native_ptr(), 83702148)
        assert(FileSystemDock._method_navigate_to_path_83702148 != nil)
    }

    public func navigate_to_path(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_navigate_to_path_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}