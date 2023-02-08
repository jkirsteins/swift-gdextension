import godot_native

fileprivate var __godot_name_PlaceholderTexture3D: StringName! = nil

/// Placeholder class for a 3-dimensional texture.
/// 
/// This class is used when loading a project that uses a [Texture3D] subclass in 2 conditions:
///  
/// - When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.
///  
/// - When this subclass is missing due to using a different engine version or build (e.g. modules disabled).
open class PlaceholderTexture3D : Texture3D {

    

    public override class var __godot_name: StringName { __godot_name_PlaceholderTexture3D }

    static var _method_set_size_560364750: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_2785653706: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PlaceholderTexture3D = StringName(from: "PlaceholderTexture3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_size_560364750_name = StringName(from: "set_size")
        self._method_set_size_560364750 = self.interface.pointee.classdb_get_method_bind(__godot_name_PlaceholderTexture3D._native_ptr(), _method_set_size_560364750_name._native_ptr(), 560364750)
        assert(PlaceholderTexture3D._method_set_size_560364750 != nil)
        let _method_get_size_2785653706_name = StringName(from: "get_size")
        self._method_get_size_2785653706 = self.interface.pointee.classdb_get_method_bind(__godot_name_PlaceholderTexture3D._native_ptr(), _method_get_size_2785653706_name._native_ptr(), 2785653706)
        assert(PlaceholderTexture3D._method_get_size_2785653706 != nil)
    }

    public func set_size(size: Vector3i)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_560364750,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size() -> Vector3i {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_2785653706,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3i(godot: __resPtr.pointee)
    }
}