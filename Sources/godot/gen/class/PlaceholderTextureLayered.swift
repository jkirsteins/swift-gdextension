import godot_native

fileprivate var __godot_name_PlaceholderTextureLayered: StringName! = nil

/// Placeholder class for a 2-dimensional texture array.
/// 
/// This class is used when loading a project that uses a [TextureLayered] subclass in 2 conditions:
///  
/// - When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.
///  
/// - When this subclass is missing due to using a different engine version or build (e.g. modules disabled).
public class PlaceholderTextureLayered : TextureLayered {

    

    public override class var __godot_name: StringName { __godot_name_PlaceholderTextureLayered }

    static var _method_set_size_1130785943: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3690982128: GDExtensionMethodBindPtr! = nil
    static var _method_set_layers_1286410249: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PlaceholderTextureLayered = StringName(from: "PlaceholderTextureLayered")

        let _method_set_size_1130785943_name = StringName(from: "set_size")
        self._method_set_size_1130785943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_1130785943_name._native_ptr(), 1130785943)
        assert(PlaceholderTextureLayered._method_set_size_1130785943 != nil)
        let _method_get_size_3690982128_name = StringName(from: "get_size")
        self._method_get_size_3690982128 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3690982128_name._native_ptr(), 3690982128)
        assert(PlaceholderTextureLayered._method_get_size_3690982128 != nil)
        let _method_set_layers_1286410249_name = StringName(from: "set_layers")
        self._method_set_layers_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_layers_1286410249_name._native_ptr(), 1286410249)
        assert(PlaceholderTextureLayered._method_set_layers_1286410249 != nil)
    }

    public func set_size(size: Vector2i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_1130785943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size() -> Vector2i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3690982128,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2i(from: __resPtr.pointee)
    }
    public func set_layers(layers: Int64)  {
        withUnsafePointer(to: layers) { layers_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layers_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_layers_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}