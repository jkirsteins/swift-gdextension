import godot_native

fileprivate var __godot_name_FileSystemDock: StringName! = nil

/// 
/// 
/// 
open class FileSystemDock : VBoxContainer {

    

    public override class var __godot_name: StringName { __godot_name_FileSystemDock }

    static var _method_navigate_to_path_83702148: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_FileSystemDock == nil)
        __godot_name_FileSystemDock = StringName(from: "FileSystemDock")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_navigate_to_path_83702148 = StringName(from: "navigate_to_path")
        assert(self._method_navigate_to_path_83702148 != nil)
    }

    public func navigate_to_path(path: godot.String)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_navigate_to_path_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}