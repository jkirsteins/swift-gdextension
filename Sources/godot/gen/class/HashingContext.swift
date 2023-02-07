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
public class HashingContext : RefCounted {

    public enum HashType : Int32 {
        case HASH_MD5 = 0
        case HASH_SHA1 = 1
        case HASH_SHA256 = 2
    }

    public override class var __godot_name: StringName { __godot_name_HashingContext }

    static var _method_start_3940338335: GDExtensionMethodBindPtr! = nil
    static var _method_update_680677267: GDExtensionMethodBindPtr! = nil
    static var _method_finish_2115431945: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_HashingContext = StringName(from: "HashingContext")

        let _method_start_3940338335_name = StringName(from: "start")
        self._method_start_3940338335 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_start_3940338335_name._native_ptr(), 3940338335)
        assert(HashingContext._method_start_3940338335 != nil)
        let _method_update_680677267_name = StringName(from: "update")
        self._method_update_680677267 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_update_680677267_name._native_ptr(), 680677267)
        assert(HashingContext._method_update_680677267 != nil)
        let _method_finish_2115431945_name = StringName(from: "finish")
        self._method_finish_2115431945 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_finish_2115431945_name._native_ptr(), 2115431945)
        assert(HashingContext._method_finish_2115431945 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_start_3940338335,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_update_680677267,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func finish() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_finish_2115431945,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
    }
}