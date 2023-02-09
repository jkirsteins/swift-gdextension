import godot_native

fileprivate var __godot_name_HashingContext: StringName! = nil

/// Context to compute cryptographic hashes over multiple iterations.
/// 
/// The HashingContext class provides an interface for computing cryptographic hashes over multiple iterations. This is useful for example when computing hashes of big files (so you don't have to load them all in memory), network streams, and data streams in general (so you don't have to hold buffers).
///  
/// The [enum HashType] enum shows the supported hashing algorithms.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// const CHUNK_SIZE = 1024
///  
///  
/// func hash_file(path):
///  
///     # Check that file exists.
///  
///     if not FileAccess.file_exists(path):
///  
///         return
///  
///     # Start a SHA-256 context.
///  
///     var ctx = HashingContext.new()
///  
///     ctx.start(HashingContext.HASH_SHA256)
///  
///     # Open the file to hash.
///  
///     var file = FileAccess.open(path, FileAccess.READ)
///  
///     # Update the context after reading each chunk.
///  
///     while not file.eof_reached():
///  
///         ctx.update(file.get_buffer(CHUNK_SIZE))
///  
///     # Get the computed hash.
///  
///     var res = ctx.finish()
///  
///     # Print the result as hex string and array.
///  
///     printt(res.hex_encode(), Array(res))
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// public const int ChunkSize = 1024;
///  
///  
/// public void HashFile(string path)
///  
/// {
///  
///     // Check that file exists.
///  
///     if (!FileAccess.FileExists(path))
///  
///     {
///  
///         return;
///  
///     }
///  
///     // Start a SHA-256 context.
///  
///     var ctx = new HashingContext();
///  
///     ctx.Start(HashingContext.HashType.Sha256);
///  
///     // Open the file to hash.
///  
///     using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
///  
///     // Update the context after reading each chunk.
///  
///     while (!file.EofReached())
///  
///     {
///  
///         ctx.Update(file.GetBuffer(ChunkSize));
///  
///     }
///  
///     // Get the computed hash.
///  
///     byte[] res = ctx.Finish();
///  
///     // Print the result as hex string and array.
///  
///     GD.PrintT(res.HexEncode(), (Variant)res);
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
open class HashingContext : RefCounted {

    public enum HashType : Int32 {
        case HASH_MD5 = 0
        case HASH_SHA1 = 1
        case HASH_SHA256 = 2
    }

    public override class var __godot_name: StringName { __godot_name_HashingContext }

    static var _method_start_3940338335: StringName! = nil
    static var _method_update_680677267: StringName! = nil
    static var _method_finish_2115431945: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_HashingContext == nil)
        __godot_name_HashingContext = StringName(from: "HashingContext")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_start_3940338335 = StringName(from: "start")
        assert(self._method_start_3940338335 != nil)
        self._method_update_680677267 = StringName(from: "update")
        assert(self._method_update_680677267 != nil)
        self._method_finish_2115431945 = StringName(from: "finish")
        assert(self._method_finish_2115431945 != nil)
    }

    public func start(`type`: HashingContext.HashType) -> Error {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_start_3940338335._native_ptr(),
                    3940338335)
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
    public func update(chunk: PackedByteArray) -> Error {
        let chunk_native = chunk._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(chunk_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_update_680677267._native_ptr(),
                    680677267)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func finish() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_finish_2115431945._native_ptr(),
                    2115431945)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
}