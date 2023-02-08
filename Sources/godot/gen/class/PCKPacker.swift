import godot_native

fileprivate var __godot_name_PCKPacker: StringName! = nil

/// Creates packages that can be loaded into a running project.
/// 
/// The [PCKPacker] is used to create packages that can be loaded into a running project using [method ProjectSettings.load_resource_pack].
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var packer = PCKPacker.new()
///  
/// packer.pck_start("test.pck")
///  
/// packer.add_file("res://text.txt", "text.txt")
///  
/// packer.flush()
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var packer = new PCKPacker();
///  
/// packer.PckStart("test.pck");
///  
/// packer.AddFile("res://text.txt", "text.txt");
///  
/// packer.Flush();
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// The above [PCKPacker] creates package [code]test.pck[/code], then adds a file named [code]text.txt[/code] at the root of the package.
open class PCKPacker : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_PCKPacker }

    static var _method_pck_start_3232891339: GDExtensionMethodBindPtr! = nil
    static var _method_add_file_2215643711: GDExtensionMethodBindPtr! = nil
    static var _method_flush_1633102583: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PCKPacker = StringName(from: "PCKPacker")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_pck_start_3232891339_name = StringName(from: "pck_start")
        self._method_pck_start_3232891339 = self.interface.pointee.classdb_get_method_bind(__godot_name_PCKPacker._native_ptr(), _method_pck_start_3232891339_name._native_ptr(), 3232891339)
        assert(PCKPacker._method_pck_start_3232891339 != nil)
        let _method_add_file_2215643711_name = StringName(from: "add_file")
        self._method_add_file_2215643711 = self.interface.pointee.classdb_get_method_bind(__godot_name_PCKPacker._native_ptr(), _method_add_file_2215643711_name._native_ptr(), 2215643711)
        assert(PCKPacker._method_add_file_2215643711 != nil)
        let _method_flush_1633102583_name = StringName(from: "flush")
        self._method_flush_1633102583 = self.interface.pointee.classdb_get_method_bind(__godot_name_PCKPacker._native_ptr(), _method_flush_1633102583_name._native_ptr(), 1633102583)
        assert(PCKPacker._method_flush_1633102583 != nil)
    }

    public func pck_start(pck_name: godot.String, alignment: Int64, key: godot.String, encrypt_directory: UInt8) -> Error {
        withUnsafePointer(to: encrypt_directory) { encrypt_directory_native in
        withUnsafePointer(to: alignment) { alignment_native in
        let key_native = key._native_ptr()
        let pck_name_native = pck_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pck_name_native), .init(alignment_native), .init(key_native), .init(encrypt_directory_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pck_start_3232891339,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
    }
    public func add_file(pck_path: godot.String, source_path: godot.String, encrypt: UInt8) -> Error {
        withUnsafePointer(to: encrypt) { encrypt_native in
        let source_path_native = source_path._native_ptr()
        let pck_path_native = pck_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pck_path_native), .init(source_path_native), .init(encrypt_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_file_2215643711,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func flush(verbose: UInt8) -> Error {
        withUnsafePointer(to: verbose) { verbose_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(verbose_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_flush_1633102583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
}