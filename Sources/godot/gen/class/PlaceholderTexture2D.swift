import godot_native

fileprivate var __godot_name_PlaceholderTexture2D: StringName! = nil

/// Placeholder class for a 2-dimensional texture.
/// 
/// This class is used when loading a project that uses a [Texture2D] subclass in 2 conditions:
///  
/// - When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.
///  
/// - When this subclass is missing due to using a different engine version or build (e.g. modules disabled).
public class PlaceholderTexture2D : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_PlaceholderTexture2D }

    static var _method_set_size_743155724: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PlaceholderTexture2D = StringName(from: "PlaceholderTexture2D")

        let _method_set_size_743155724_name = StringName(from: "set_size")
        self._method_set_size_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_743155724_name._native_ptr(), 743155724)
        assert(PlaceholderTexture2D._method_set_size_743155724 != nil)
    }

    public func set_size(size: Vector2)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}