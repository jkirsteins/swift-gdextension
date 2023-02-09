import godot_native

fileprivate var __godot_name_EditorResourceConversionPlugin: StringName! = nil

/// Plugin for adding custom converters from one resource format to another in the editor resource picker context menu; for example, converting a [StandardMaterial3D] to a [ShaderMaterial].
/// 
/// [EditorResourceConversionPlugin] is invoked when the context menu is brought up for a resource in the editor inspector. Relevant conversion plugins will appear as menu options to convert the given resource to a target type.
///  
/// Below shows an example of a basic plugin that will convert an [ImageTexture] to a [PortableCompressedTexture2D].
///  
/// [codeblocks]
///  
/// [gdscript]
///  
/// extends EditorResourceConversionPlugin
///  
///  
/// func _handles(resource : Resource):
///  
///     return resource is ImageTexture
///  
///  
/// func _converts_to():
///  
///     return "PortableCompressedTexture2D"
///  
///  
/// func _convert(itex : Resource):
///  
///     var ptex = PortableCompressedTexture2D.new()
///  
///     ptex.create_from_image(itex.get_image(), PortableCompressedTexture2D.COMPRESSION_MODE_LOSSLESS)
///  
///     return ptex
///  
/// [/gdscript]
///  
/// [/codeblocks]
///  
/// To use an [EditorResourceConversionPlugin], register it using the [method EditorPlugin.add_resource_conversion_plugin] method first.
open class EditorResourceConversionPlugin : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorResourceConversionPlugin }

    static var _method__converts_to_0: StringName! = nil
    static var _method__handles_0: StringName! = nil
    static var _method__convert_0: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorResourceConversionPlugin == nil)
        __godot_name_EditorResourceConversionPlugin = StringName(from: "EditorResourceConversionPlugin")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _converts_to() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return godot.String(godot: __resPtr.pointee)
    }
    public func _handles(resource: Resource) -> UInt8 {
        let resource_native = resource._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resource_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            fatalError("Not implemented: virtual default results")
            return UInt8(godot: __resPtr.pointee)
    }
    public func _convert(resource: Resource) -> Resource {
        let resource_native = resource._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resource_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return Resource(godot: __resPtr.pointee)
    }
}