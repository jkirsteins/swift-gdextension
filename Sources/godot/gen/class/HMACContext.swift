import godot_native

fileprivate var __godot_name_HMACContext: StringName! = nil

/// Used to create an HMAC for a message using a key.
/// 
/// The HMACContext class is useful for advanced HMAC use cases, such as streaming the message as it supports creating the message over time rather than providing it all at once.
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// extends Node
///  
/// var ctx = HMACContext.new()
///  
///  
/// func _ready():
///  
///     var key = "supersecret".to_utf8()
///  
///     var err = ctx.start(HashingContext.HASH_SHA256, key)
///  
///     assert(err == OK)
///  
///     var msg1 = "this is ".to_utf8()
///  
///     var msg2 = "super duper secret".to_utf8()
///  
///     err = ctx.update(msg1)
///  
///     assert(err == OK)
///  
///     err = ctx.update(msg2)
///  
///     assert(err == OK)
///  
///     var hmac = ctx.finish()
///  
///     print(hmac.hex_encode())
///  
///  
/// [/gdscript]
///  
/// [csharp]
///  
/// using Godot;
///  
/// using System.Diagnostics;
///  
///  
/// public partial class MyNode : Node
///  
/// {
///  
///     private HmacContext _ctx = new HmacContext();
///  
///  
///     public override void _Ready()
///  
///     {
///  
///         byte[] key = "supersecret".ToUtf8();
///  
///         Error err = _ctx.Start(HashingContext.HashType.Sha256, key);
///  
///         Debug.Assert(err == Error.Ok);
///  
///         byte[] msg1 = "this is ".ToUtf8();
///  
///         byte[] msg2 = "super duper secret".ToUtf8();
///  
///         err = _ctx.Update(msg1);
///  
///         Debug.Assert(err == Error.Ok);
///  
///         err = _ctx.Update(msg2);
///  
///         Debug.Assert(err == Error.Ok);
///  
///         byte[] hmac = _ctx.Finish();
///  
///         GD.Print(hmac.HexEncode());
///  
///     }
///  
/// }
///  
/// [/csharp]
///  
/// [/codeblocks]
open class HMACContext : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_HMACContext }

    static var _method_start_3537364598: StringName! = nil
    static var _method_update_680677267: StringName! = nil
    static var _method_finish_2115431945: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_HMACContext == nil)
        __godot_name_HMACContext = StringName(from: "HMACContext")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_start_3537364598 = StringName(from: "start")
        assert(self._method_start_3537364598 != nil)
        self._method_update_680677267 = StringName(from: "update")
        assert(self._method_update_680677267 != nil)
        self._method_finish_2115431945 = StringName(from: "finish")
        assert(self._method_finish_2115431945 != nil)
    }

    public func start(hash_type: HashingContext.HashType, key: PackedByteArray) -> Error {
        withUnsafePointer(to: hash_type.rawValue) { hash_type_native in
        let key_native = key._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hash_type_native), .init(key_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_start_3537364598._native_ptr(),
                    3537364598)
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
    public func update(data: PackedByteArray) -> Error {
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