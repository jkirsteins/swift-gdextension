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

    static var _method_pck_start_3232891339: StringName! = nil
    static var _method_add_file_2215643711: StringName! = nil
    static var _method_flush_1633102583: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_PCKPacker == nil)
        __godot_name_PCKPacker = StringName(from: "PCKPacker")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_pck_start_3232891339 = StringName(from: "pck_start")
        assert(self._method_pck_start_3232891339 != nil)
        self._method_add_file_2215643711 = StringName(from: "add_file")
        assert(self._method_add_file_2215643711 != nil)
        self._method_flush_1633102583 = StringName(from: "flush")
        assert(self._method_flush_1633102583 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_pck_start_3232891339._native_ptr(),
                    3232891339)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_file_2215643711._native_ptr(),
                    2215643711)
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
    public func flush(verbose: UInt8) -> Error {
        withUnsafePointer(to: verbose) { verbose_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(verbose_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_flush_1633102583._native_ptr(),
                    1633102583)
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
}