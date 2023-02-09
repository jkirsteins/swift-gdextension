import godot_native

fileprivate var __godot_name_ConfigFile: StringName! = nil

/// Helper class to handle INI-style files.
/// 
/// This helper class can be used to store [Variant] values on the filesystem using INI-style formatting. The stored values are identified by a section and a key:
///  
/// [codeblock]
///  
/// [section]
///  
/// some_key=42
///  
/// string_example="Hello World3D!"
///  
/// a_vector=Vector3(1, 0, 2)
///  
/// [/codeblock]
///  
/// The stored data can be saved to or parsed from a file, though ConfigFile objects can also be used directly without accessing the filesystem.
///  
/// The following example shows how to create a simple [ConfigFile] and save it on disc:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// # Create new ConfigFile object.
///  
/// var config = ConfigFile.new()
///  
///  
/// # Store some values.
///  
/// config.set_value("Player1", "player_name", "Steve")
///  
/// config.set_value("Player1", "best_score", 10)
///  
/// config.set_value("Player2", "player_name", "V3geta")
///  
/// config.set_value("Player2", "best_score", 9001)
///  
///  
/// # Save it to a file (overwrite if already exists).
///  
/// config.save("user://scores.cfg")
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// // Create new ConfigFile object.
///  
/// var config = new ConfigFile();
///  
///  
/// // Store some values.
///  
/// config.SetValue("Player1", "player_name", "Steve");
///  
/// config.SetValue("Player1", "best_score", 10);
///  
/// config.SetValue("Player2", "player_name", "V3geta");
///  
/// config.SetValue("Player2", "best_score", 9001);
///  
///  
/// // Save it to a file (overwrite if already exists).
///  
/// config.Save("user://scores.cfg");
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// This example shows how the above file could be loaded:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var score_data = {}
///  
/// var config = ConfigFile.new()
///  
///  
/// # Load data from a file.
///  
/// var err = config.load("user://scores.cfg")
///  
///  
/// # If the file didn't load, ignore it.
///  
/// if err != OK:
///  
///     return
///  
///  
/// # Iterate over all sections.
///  
/// for player in config.get_sections():
///  
///     # Fetch the data for each section.
///  
///     var player_name = config.get_value(player, "player_name")
///  
///     var player_score = config.get_value(player, "best_score")
///  
///     score_data[player_name] = player_score
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// var score_data = new Godot.Collections.Dictionary();
///  
/// var config = new ConfigFile();
///  
///  
/// // Load data from a file.
///  
/// Error err = config.Load("user://scores.cfg");
///  
///  
/// // If the file didn't load, ignore it.
///  
/// if (err != Error.Ok)
///  
/// {
///  
///     return;
///  
/// }
///  
///  
/// // Iterate over all sections.
///  
/// foreach (String player in config.GetSections())
///  
/// {
///  
///     // Fetch the data for each section.
///  
///     var player_name = (String)config.GetValue(player, "player_name");
///  
///     var player_score = (int)config.GetValue(player, "best_score");
///  
///     score_data[player_name] = player_score;
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// Any operation that mutates the ConfigFile such as [method set_value], [method clear], or [method erase_section], only changes what is loaded in memory. If you want to write the change to a file, you have to save the changes with [method save], [method save_encrypted], or [method save_encrypted_pass].
///  
/// Keep in mind that section and property names can't contain spaces. Anything after a space will be ignored on save and on load.
///  
/// ConfigFiles can also contain manually written comment lines starting with a semicolon ([code];[/code]). Those lines will be ignored when parsing the file. Note that comments will be lost when saving the ConfigFile. This can still be useful for dedicated server configuration files, which are typically never overwritten without explicit user action.
///  
/// [b]Note:[/b] The file extension given to a ConfigFile does not have any impact on its formatting or behavior. By convention, the [code].cfg[/code] extension is used here, but any other extension such as [code].ini[/code] is also valid. Since neither [code].cfg[/code] nor [code].ini[/code] are standardized, Godot's ConfigFile formatting may differ from files written by other programs.
open class ConfigFile : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_ConfigFile }

    static var _method_set_value_2504492430: StringName! = nil
    static var _method_get_value_89809366: StringName! = nil
    static var _method_has_section_3927539163: StringName! = nil
    static var _method_has_section_key_820780508: StringName! = nil
    static var _method_get_sections_1139954409: StringName! = nil
    static var _method_get_section_keys_4291131558: StringName! = nil
    static var _method_erase_section_83702148: StringName! = nil
    static var _method_erase_section_key_3186203200: StringName! = nil
    static var _method_load_166001499: StringName! = nil
    static var _method_parse_166001499: StringName! = nil
    static var _method_save_166001499: StringName! = nil
    static var _method_encode_to_text_201670096: StringName! = nil
    static var _method_load_encrypted_887037711: StringName! = nil
    static var _method_load_encrypted_pass_852856452: StringName! = nil
    static var _method_save_encrypted_887037711: StringName! = nil
    static var _method_save_encrypted_pass_852856452: StringName! = nil
    static var _method_clear_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ConfigFile == nil)
        __godot_name_ConfigFile = StringName(from: "ConfigFile")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_value_2504492430 = StringName(from: "set_value")
        assert(self._method_set_value_2504492430 != nil)
        self._method_get_value_89809366 = StringName(from: "get_value")
        assert(self._method_get_value_89809366 != nil)
        self._method_has_section_3927539163 = StringName(from: "has_section")
        assert(self._method_has_section_3927539163 != nil)
        self._method_has_section_key_820780508 = StringName(from: "has_section_key")
        assert(self._method_has_section_key_820780508 != nil)
        self._method_get_sections_1139954409 = StringName(from: "get_sections")
        assert(self._method_get_sections_1139954409 != nil)
        self._method_get_section_keys_4291131558 = StringName(from: "get_section_keys")
        assert(self._method_get_section_keys_4291131558 != nil)
        self._method_erase_section_83702148 = StringName(from: "erase_section")
        assert(self._method_erase_section_83702148 != nil)
        self._method_erase_section_key_3186203200 = StringName(from: "erase_section_key")
        assert(self._method_erase_section_key_3186203200 != nil)
        self._method_load_166001499 = StringName(from: "load")
        assert(self._method_load_166001499 != nil)
        self._method_parse_166001499 = StringName(from: "parse")
        assert(self._method_parse_166001499 != nil)
        self._method_save_166001499 = StringName(from: "save")
        assert(self._method_save_166001499 != nil)
        self._method_encode_to_text_201670096 = StringName(from: "encode_to_text")
        assert(self._method_encode_to_text_201670096 != nil)
        self._method_load_encrypted_887037711 = StringName(from: "load_encrypted")
        assert(self._method_load_encrypted_887037711 != nil)
        self._method_load_encrypted_pass_852856452 = StringName(from: "load_encrypted_pass")
        assert(self._method_load_encrypted_pass_852856452 != nil)
        self._method_save_encrypted_887037711 = StringName(from: "save_encrypted")
        assert(self._method_save_encrypted_887037711 != nil)
        self._method_save_encrypted_pass_852856452 = StringName(from: "save_encrypted_pass")
        assert(self._method_save_encrypted_pass_852856452 != nil)
        self._method_clear_3218959716 = StringName(from: "clear")
        assert(self._method_clear_3218959716 != nil)
    }

    public func set_value(section: godot.String, key: godot.String, value: Variant)  {
        let value_native = value._native_ptr()
        let key_native = key._native_ptr()
        let section_native = section._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_native), .init(key_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_value_2504492430._native_ptr(),
                    2504492430)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_value(section: godot.String, key: godot.String, `default`: Variant) -> Variant {
        let default_native = `default`._native_ptr()
        let key_native = key._native_ptr()
        let section_native = section._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_native), .init(key_native), .init(default_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_value_89809366._native_ptr(),
                    89809366)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func has_section(section: godot.String) -> UInt8 {
        let section_native = section._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_section_3927539163._native_ptr(),
                    3927539163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func has_section_key(section: godot.String, key: godot.String) -> UInt8 {
        let key_native = key._native_ptr()
        let section_native = section._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_native), .init(key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_section_key_820780508._native_ptr(),
                    820780508)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_sections() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sections_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_section_keys(section: godot.String) -> PackedStringArray {
        let section_native = section._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_section_keys_4291131558._native_ptr(),
                    4291131558)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func erase_section(section: godot.String)  {
        let section_native = section._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_erase_section_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func erase_section_key(section: godot.String, key: godot.String)  {
        let key_native = key._native_ptr()
        let section_native = section._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(section_native), .init(key_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_erase_section_key_3186203200._native_ptr(),
                    3186203200)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func load(path: godot.String) -> Error {
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
                    Self._method_load_166001499._native_ptr(),
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
    public func parse(data: godot.String) -> Error {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_parse_166001499._native_ptr(),
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
    public func save(path: godot.String) -> Error {
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
                    Self._method_save_166001499._native_ptr(),
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
    public func encode_to_text() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_encode_to_text_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func load_encrypted(path: godot.String, key: PackedByteArray) -> Error {
        let key_native = key._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_encrypted_887037711._native_ptr(),
                    887037711)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func load_encrypted_pass(path: godot.String, password: godot.String) -> Error {
        let password_native = password._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(password_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_encrypted_pass_852856452._native_ptr(),
                    852856452)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func save_encrypted(path: godot.String, key: PackedByteArray) -> Error {
        let key_native = key._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_save_encrypted_887037711._native_ptr(),
                    887037711)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func save_encrypted_pass(path: godot.String, password: godot.String) -> Error {
        let password_native = password._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(password_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_save_encrypted_pass_852856452._native_ptr(),
                    852856452)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clear_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}