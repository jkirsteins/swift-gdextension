import godot_native

fileprivate var __godot_name_FileAccess: StringName! = nil

/// Type to handle file reading and writing operations.
/// 
/// File type. This is used to permanently store data into the user device's file system and to read from it. This can be used to store game save data or player configuration files, for example.
///  
/// Here's a sample on how to write and read from a file:
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// func save(content):
///  
///     var file = FileAccess.open("user://save_game.dat", FileAccess.WRITE)
///  
///     file.store_string(content)
///  
///  
/// func load():
///  
///     var file = FileAccess.open("user://save_game.dat", FileAccess.READ)
///  
///     var content = file.get_as_text()
///  
///     return content
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// public void Save(string content)
///  
/// {
///  
///     using var file = FileAccess.Open("user://save_game.dat", FileAccess.ModeFlags.Write);
///  
///     file.StoreString(content);
///  
/// }
///  
///  
/// public string Load()
///  
/// {
///  
///     using var file = FileAccess.Open("user://save_game.dat", FileAccess.ModeFlags.Read);
///  
///     string content = file.GetAsText();
///  
///     return content;
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// In the example above, the file will be saved in the user data folder as specified in the [url=$DOCS_URL/tutorials/io/data_paths.html]Data paths[/url] documentation.
///  
/// There is no method to close a file in order to free it from use. Instead, [FileAccess] will close when it's freed, which happens when it goes out of scope or when it gets assigned with [code]null[/code]. In C# the reference must be disposed after we are done using it, this can be done with the [code]using[/code] statement or calling the [code]Dispose[/code] method directly.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// var file = FileAccess.open("res://something") # File is opened and locked for use.
///  
/// file = null # File is closed.
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// using var file = FileAccess.Open("res://something"); // File is opened and locked for use.
///  
/// // The using statement calls Dispose when going out of scope.
///  
/// [/csharp]
///  
/// [/codeblocks]
///  
/// [b]Note:[/b] To access project resources once exported, it is recommended to use [ResourceLoader] instead of the [FileAccess] API, as some files are converted to engine-specific formats and their original source files might not be present in the exported PCK package.
///  
/// [b]Note:[/b] Files are automatically closed only if the process exits "normally" (such as by clicking the window manager's close button or pressing [b]Alt + F4[/b]). If you stop the project execution by pressing [b]F8[/b] while the project is running, the file won't be closed as the game process will be killed. You can work around this by calling [method flush] at regular intervals.
public class FileAccess : RefCounted {

    public enum ModeFlags : Int32 {
        case READ = 1
        case WRITE = 2
        case READ_WRITE = 3
        case WRITE_READ = 7
    }
    public enum CompressionMode : Int32 {
        case COMPRESSION_FASTLZ = 0
        case COMPRESSION_DEFLATE = 1
        case COMPRESSION_ZSTD = 2
        case COMPRESSION_GZIP = 3
    }

    public override class var __godot_name: StringName { __godot_name_FileAccess }

    static var _method_open_1247358404: GDExtensionMethodBindPtr! = nil
    static var _method_open_encrypted_1482131466: GDExtensionMethodBindPtr! = nil
    static var _method_open_encrypted_with_pass_790283377: GDExtensionMethodBindPtr! = nil
    static var _method_open_compressed_2874458257: GDExtensionMethodBindPtr! = nil
    static var _method_get_open_error_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_as_bytes_659035735: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_as_string_1703090593: GDExtensionMethodBindPtr! = nil
    static var _method_flush_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_path_absolute_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_is_open_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_seek_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_seek_end_1995695955: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_length_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_eof_reached_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_8_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_16_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_32_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_64_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_float_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_double_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_real_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_buffer_4131300905: GDExtensionMethodBindPtr! = nil
    static var _method_get_line_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_csv_line_2358116058: GDExtensionMethodBindPtr! = nil
    static var _method_get_as_text_1162154673: GDExtensionMethodBindPtr! = nil
    static var _method_get_md5_1703090593: GDExtensionMethodBindPtr! = nil
    static var _method_get_sha256_1703090593: GDExtensionMethodBindPtr! = nil
    static var _method_is_big_endian_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_big_endian_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_error_3185525595: GDExtensionMethodBindPtr! = nil
    static var _method_get_var_189129690: GDExtensionMethodBindPtr! = nil
    static var _method_store_8_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_store_16_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_store_32_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_store_64_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_store_float_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_store_double_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_store_real_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_store_buffer_2971499966: GDExtensionMethodBindPtr! = nil
    static var _method_store_line_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_store_csv_line_2217842308: GDExtensionMethodBindPtr! = nil
    static var _method_store_string_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_store_var_738511890: GDExtensionMethodBindPtr! = nil
    static var _method_store_pascal_string_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_pascal_string_2841200299: GDExtensionMethodBindPtr! = nil
    static var _method_file_exists_2323990056: GDExtensionMethodBindPtr! = nil
    static var _method_get_modified_time_1597066294: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_FileAccess = StringName(from: "FileAccess")

        let _method_open_1247358404_name = StringName(from: "open")
        self._method_open_1247358404 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_open_1247358404_name._native_ptr(), 1247358404)
        assert(FileAccess._method_open_1247358404 != nil)
        let _method_open_encrypted_1482131466_name = StringName(from: "open_encrypted")
        self._method_open_encrypted_1482131466 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_open_encrypted_1482131466_name._native_ptr(), 1482131466)
        assert(FileAccess._method_open_encrypted_1482131466 != nil)
        let _method_open_encrypted_with_pass_790283377_name = StringName(from: "open_encrypted_with_pass")
        self._method_open_encrypted_with_pass_790283377 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_open_encrypted_with_pass_790283377_name._native_ptr(), 790283377)
        assert(FileAccess._method_open_encrypted_with_pass_790283377 != nil)
        let _method_open_compressed_2874458257_name = StringName(from: "open_compressed")
        self._method_open_compressed_2874458257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_open_compressed_2874458257_name._native_ptr(), 2874458257)
        assert(FileAccess._method_open_compressed_2874458257 != nil)
        let _method_get_open_error_166280745_name = StringName(from: "get_open_error")
        self._method_get_open_error_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_open_error_166280745_name._native_ptr(), 166280745)
        assert(FileAccess._method_get_open_error_166280745 != nil)
        let _method_get_file_as_bytes_659035735_name = StringName(from: "get_file_as_bytes")
        self._method_get_file_as_bytes_659035735 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_file_as_bytes_659035735_name._native_ptr(), 659035735)
        assert(FileAccess._method_get_file_as_bytes_659035735 != nil)
        let _method_get_file_as_string_1703090593_name = StringName(from: "get_file_as_string")
        self._method_get_file_as_string_1703090593 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_file_as_string_1703090593_name._native_ptr(), 1703090593)
        assert(FileAccess._method_get_file_as_string_1703090593 != nil)
        let _method_flush_3218959716_name = StringName(from: "flush")
        self._method_flush_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_flush_3218959716_name._native_ptr(), 3218959716)
        assert(FileAccess._method_flush_3218959716 != nil)
        let _method_get_path_201670096_name = StringName(from: "get_path")
        self._method_get_path_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_201670096_name._native_ptr(), 201670096)
        assert(FileAccess._method_get_path_201670096 != nil)
        let _method_get_path_absolute_201670096_name = StringName(from: "get_path_absolute")
        self._method_get_path_absolute_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_path_absolute_201670096_name._native_ptr(), 201670096)
        assert(FileAccess._method_get_path_absolute_201670096 != nil)
        let _method_is_open_36873697_name = StringName(from: "is_open")
        self._method_is_open_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_open_36873697_name._native_ptr(), 36873697)
        assert(FileAccess._method_is_open_36873697 != nil)
        let _method_seek_1286410249_name = StringName(from: "seek")
        self._method_seek_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_seek_1286410249_name._native_ptr(), 1286410249)
        assert(FileAccess._method_seek_1286410249 != nil)
        let _method_seek_end_1995695955_name = StringName(from: "seek_end")
        self._method_seek_end_1995695955 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_seek_end_1995695955_name._native_ptr(), 1995695955)
        assert(FileAccess._method_seek_end_1995695955 != nil)
        let _method_get_position_3905245786_name = StringName(from: "get_position")
        self._method_get_position_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_position_3905245786_name._native_ptr(), 3905245786)
        assert(FileAccess._method_get_position_3905245786 != nil)
        let _method_get_length_3905245786_name = StringName(from: "get_length")
        self._method_get_length_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_length_3905245786_name._native_ptr(), 3905245786)
        assert(FileAccess._method_get_length_3905245786 != nil)
        let _method_eof_reached_36873697_name = StringName(from: "eof_reached")
        self._method_eof_reached_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_eof_reached_36873697_name._native_ptr(), 36873697)
        assert(FileAccess._method_eof_reached_36873697 != nil)
        let _method_get_8_3905245786_name = StringName(from: "get_8")
        self._method_get_8_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_8_3905245786_name._native_ptr(), 3905245786)
        assert(FileAccess._method_get_8_3905245786 != nil)
        let _method_get_16_3905245786_name = StringName(from: "get_16")
        self._method_get_16_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_16_3905245786_name._native_ptr(), 3905245786)
        assert(FileAccess._method_get_16_3905245786 != nil)
        let _method_get_32_3905245786_name = StringName(from: "get_32")
        self._method_get_32_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_32_3905245786_name._native_ptr(), 3905245786)
        assert(FileAccess._method_get_32_3905245786 != nil)
        let _method_get_64_3905245786_name = StringName(from: "get_64")
        self._method_get_64_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_64_3905245786_name._native_ptr(), 3905245786)
        assert(FileAccess._method_get_64_3905245786 != nil)
        let _method_get_float_1740695150_name = StringName(from: "get_float")
        self._method_get_float_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_float_1740695150_name._native_ptr(), 1740695150)
        assert(FileAccess._method_get_float_1740695150 != nil)
        let _method_get_double_1740695150_name = StringName(from: "get_double")
        self._method_get_double_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_double_1740695150_name._native_ptr(), 1740695150)
        assert(FileAccess._method_get_double_1740695150 != nil)
        let _method_get_real_1740695150_name = StringName(from: "get_real")
        self._method_get_real_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_real_1740695150_name._native_ptr(), 1740695150)
        assert(FileAccess._method_get_real_1740695150 != nil)
        let _method_get_buffer_4131300905_name = StringName(from: "get_buffer")
        self._method_get_buffer_4131300905 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_buffer_4131300905_name._native_ptr(), 4131300905)
        assert(FileAccess._method_get_buffer_4131300905 != nil)
        let _method_get_line_201670096_name = StringName(from: "get_line")
        self._method_get_line_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_line_201670096_name._native_ptr(), 201670096)
        assert(FileAccess._method_get_line_201670096 != nil)
        let _method_get_csv_line_2358116058_name = StringName(from: "get_csv_line")
        self._method_get_csv_line_2358116058 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_csv_line_2358116058_name._native_ptr(), 2358116058)
        assert(FileAccess._method_get_csv_line_2358116058 != nil)
        let _method_get_as_text_1162154673_name = StringName(from: "get_as_text")
        self._method_get_as_text_1162154673 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_as_text_1162154673_name._native_ptr(), 1162154673)
        assert(FileAccess._method_get_as_text_1162154673 != nil)
        let _method_get_md5_1703090593_name = StringName(from: "get_md5")
        self._method_get_md5_1703090593 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_md5_1703090593_name._native_ptr(), 1703090593)
        assert(FileAccess._method_get_md5_1703090593 != nil)
        let _method_get_sha256_1703090593_name = StringName(from: "get_sha256")
        self._method_get_sha256_1703090593 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sha256_1703090593_name._native_ptr(), 1703090593)
        assert(FileAccess._method_get_sha256_1703090593 != nil)
        let _method_is_big_endian_36873697_name = StringName(from: "is_big_endian")
        self._method_is_big_endian_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_big_endian_36873697_name._native_ptr(), 36873697)
        assert(FileAccess._method_is_big_endian_36873697 != nil)
        let _method_set_big_endian_2586408642_name = StringName(from: "set_big_endian")
        self._method_set_big_endian_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_big_endian_2586408642_name._native_ptr(), 2586408642)
        assert(FileAccess._method_set_big_endian_2586408642 != nil)
        let _method_get_error_3185525595_name = StringName(from: "get_error")
        self._method_get_error_3185525595 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_error_3185525595_name._native_ptr(), 3185525595)
        assert(FileAccess._method_get_error_3185525595 != nil)
        let _method_get_var_189129690_name = StringName(from: "get_var")
        self._method_get_var_189129690 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_var_189129690_name._native_ptr(), 189129690)
        assert(FileAccess._method_get_var_189129690 != nil)
        let _method_store_8_1286410249_name = StringName(from: "store_8")
        self._method_store_8_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_8_1286410249_name._native_ptr(), 1286410249)
        assert(FileAccess._method_store_8_1286410249 != nil)
        let _method_store_16_1286410249_name = StringName(from: "store_16")
        self._method_store_16_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_16_1286410249_name._native_ptr(), 1286410249)
        assert(FileAccess._method_store_16_1286410249 != nil)
        let _method_store_32_1286410249_name = StringName(from: "store_32")
        self._method_store_32_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_32_1286410249_name._native_ptr(), 1286410249)
        assert(FileAccess._method_store_32_1286410249 != nil)
        let _method_store_64_1286410249_name = StringName(from: "store_64")
        self._method_store_64_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_64_1286410249_name._native_ptr(), 1286410249)
        assert(FileAccess._method_store_64_1286410249 != nil)
        let _method_store_float_373806689_name = StringName(from: "store_float")
        self._method_store_float_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_float_373806689_name._native_ptr(), 373806689)
        assert(FileAccess._method_store_float_373806689 != nil)
        let _method_store_double_373806689_name = StringName(from: "store_double")
        self._method_store_double_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_double_373806689_name._native_ptr(), 373806689)
        assert(FileAccess._method_store_double_373806689 != nil)
        let _method_store_real_373806689_name = StringName(from: "store_real")
        self._method_store_real_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_real_373806689_name._native_ptr(), 373806689)
        assert(FileAccess._method_store_real_373806689 != nil)
        let _method_store_buffer_2971499966_name = StringName(from: "store_buffer")
        self._method_store_buffer_2971499966 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_buffer_2971499966_name._native_ptr(), 2971499966)
        assert(FileAccess._method_store_buffer_2971499966 != nil)
        let _method_store_line_83702148_name = StringName(from: "store_line")
        self._method_store_line_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_line_83702148_name._native_ptr(), 83702148)
        assert(FileAccess._method_store_line_83702148 != nil)
        let _method_store_csv_line_2217842308_name = StringName(from: "store_csv_line")
        self._method_store_csv_line_2217842308 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_csv_line_2217842308_name._native_ptr(), 2217842308)
        assert(FileAccess._method_store_csv_line_2217842308 != nil)
        let _method_store_string_83702148_name = StringName(from: "store_string")
        self._method_store_string_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_string_83702148_name._native_ptr(), 83702148)
        assert(FileAccess._method_store_string_83702148 != nil)
        let _method_store_var_738511890_name = StringName(from: "store_var")
        self._method_store_var_738511890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_var_738511890_name._native_ptr(), 738511890)
        assert(FileAccess._method_store_var_738511890 != nil)
        let _method_store_pascal_string_83702148_name = StringName(from: "store_pascal_string")
        self._method_store_pascal_string_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_store_pascal_string_83702148_name._native_ptr(), 83702148)
        assert(FileAccess._method_store_pascal_string_83702148 != nil)
        let _method_get_pascal_string_2841200299_name = StringName(from: "get_pascal_string")
        self._method_get_pascal_string_2841200299 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pascal_string_2841200299_name._native_ptr(), 2841200299)
        assert(FileAccess._method_get_pascal_string_2841200299 != nil)
        let _method_file_exists_2323990056_name = StringName(from: "file_exists")
        self._method_file_exists_2323990056 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_file_exists_2323990056_name._native_ptr(), 2323990056)
        assert(FileAccess._method_file_exists_2323990056 != nil)
        let _method_get_modified_time_1597066294_name = StringName(from: "get_modified_time")
        self._method_get_modified_time_1597066294 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_modified_time_1597066294_name._native_ptr(), 1597066294)
        assert(FileAccess._method_get_modified_time_1597066294 != nil)
    }

    public func open(path: String, flags: FileAccess.ModeFlags) -> FileAccess {
        withUnsafePointer(to: path) { path_native in
        withUnsafePointer(to: flags.rawValue) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_1247358404,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FileAccess(from: __resPtr.pointee)
        }
        }
    }
    public func open_encrypted(path: String, mode_flags: FileAccess.ModeFlags, key: PackedByteArray) -> FileAccess {
        withUnsafePointer(to: path) { path_native in
        withUnsafePointer(to: mode_flags.rawValue) { mode_flags_native in
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(mode_flags_native), .init(key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_encrypted_1482131466,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FileAccess(from: __resPtr.pointee)
        }
        }
    }
    public func open_encrypted_with_pass(path: String, mode_flags: FileAccess.ModeFlags, pass: String) -> FileAccess {
        withUnsafePointer(to: pass) { pass_native in
        withUnsafePointer(to: path) { path_native in
        withUnsafePointer(to: mode_flags.rawValue) { mode_flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(mode_flags_native), .init(pass_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_encrypted_with_pass_790283377,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FileAccess(from: __resPtr.pointee)
        }
        }
        }
    }
    public func open_compressed(path: String, mode_flags: FileAccess.ModeFlags, compression_mode: FileAccess.CompressionMode) -> FileAccess {
        withUnsafePointer(to: path) { path_native in
        withUnsafePointer(to: compression_mode.rawValue) { compression_mode_native in
        withUnsafePointer(to: mode_flags.rawValue) { mode_flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(mode_flags_native), .init(compression_mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_compressed_2874458257,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return FileAccess(from: __resPtr.pointee)
        }
        }
        }
    }
    public func get_open_error() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_open_error_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func get_file_as_bytes(path: String) -> PackedByteArray {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_as_bytes_659035735,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
        }
    }
    public func get_file_as_string(path: String) -> String {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_as_string_1703090593,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func flush()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_flush_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_path() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_path_absolute() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_path_absolute_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func is_open() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_open_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func seek(position: Int64)  {
        withUnsafePointer(to: position) { position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_seek_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func seek_end(position: Int64)  {
        withUnsafePointer(to: position) { position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_seek_end_1995695955,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_position() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_position_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_length() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_length_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func eof_reached() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_eof_reached_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_8() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_8_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_16() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_16_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_32() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_32_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_64() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_64_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_float() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_float_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_double() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_double_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_real() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_real_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func get_buffer(length: Int64) -> PackedByteArray {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_buffer_4131300905,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
        }
    }
    public func get_line() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_line_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_csv_line(delim: String) -> PackedStringArray {
        withUnsafePointer(to: delim) { delim_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delim_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_csv_line_2358116058,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
    }
    public func get_as_text(skip_cr: UInt8) -> String {
        withUnsafePointer(to: skip_cr) { skip_cr_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skip_cr_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_as_text_1162154673,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func get_md5(path: String) -> String {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_md5_1703090593,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func get_sha256(path: String) -> String {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sha256_1703090593,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
        }
    }
    public func is_big_endian() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_big_endian_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_big_endian(big_endian: UInt8)  {
        withUnsafePointer(to: big_endian) { big_endian_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(big_endian_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_big_endian_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_error() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_error_3185525595,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func get_var(allow_objects: UInt8) -> Variant {
        withUnsafePointer(to: allow_objects) { allow_objects_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_objects_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_var_189129690,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func store_8(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_8_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func store_16(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_16_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func store_32(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_32_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func store_64(value: Int64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_64_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func store_float(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_float_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func store_double(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_double_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func store_real(value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_real_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func store_buffer(buffer: PackedByteArray)  {
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_buffer_2971499966,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func store_line(line: String)  {
        withUnsafePointer(to: line) { line_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(line_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_line_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func store_csv_line(values: PackedStringArray, delim: String)  {
        withUnsafePointer(to: delim) { delim_native in
        let values_native = values._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(values_native), .init(delim_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_csv_line_2217842308,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func store_string(string: String)  {
        withUnsafePointer(to: string) { string_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_string_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func store_var(value: Variant, full_objects: UInt8)  {
        withUnsafePointer(to: full_objects) { full_objects_native in
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native), .init(full_objects_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_var_738511890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func store_pascal_string(string: String)  {
        withUnsafePointer(to: string) { string_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(string_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_store_pascal_string_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pascal_string() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pascal_string_2841200299,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func file_exists(path: String) -> UInt8 {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_file_exists_2323990056,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_modified_time(file: String) -> Int64 {
        withUnsafePointer(to: file) { file_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_modified_time_1597066294,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
}