import godot_native

fileprivate var __godot_name_EditorFileSystemImportFormatSupportQuery: StringName! = nil

/// Used to query and configure import format support.
/// 
/// This class is used to query and configure a certain import format. It is used in conjunction with asset format import plugins.
public class EditorFileSystemImportFormatSupportQuery : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorFileSystemImportFormatSupportQuery }

    static var _method__is_active_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_file_extensions_0: GDExtensionMethodBindPtr! = nil
    static var _method__query_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorFileSystemImportFormatSupportQuery = StringName(from: "EditorFileSystemImportFormatSupportQuery")

        
    }

    public func _is_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_active_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _get_file_extensions() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_file_extensions_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func _query() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__query_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}