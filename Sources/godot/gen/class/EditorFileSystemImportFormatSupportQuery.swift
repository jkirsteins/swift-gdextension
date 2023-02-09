import godot_native

fileprivate var __godot_name_EditorFileSystemImportFormatSupportQuery: StringName! = nil

/// Used to query and configure import format support.
/// 
/// This class is used to query and configure a certain import format. It is used in conjunction with asset format import plugins.
open class EditorFileSystemImportFormatSupportQuery : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorFileSystemImportFormatSupportQuery }

    static var _method__is_active_0: StringName! = nil
    static var _method__get_file_extensions_0: StringName! = nil
    static var _method__query_0: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorFileSystemImportFormatSupportQuery == nil)
        __godot_name_EditorFileSystemImportFormatSupportQuery = StringName(from: "EditorFileSystemImportFormatSupportQuery")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _is_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _get_file_extensions() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func _query() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
}