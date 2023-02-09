import godot_native

fileprivate var __godot_name_VisualShaderNodeSample3D: StringName! = nil

/// A base node for nodes which samples 3D textures in the visual shader graph.
/// 
/// A virtual class, use the descendants instead.
open class VisualShaderNodeSample3D : VisualShaderNode {

    public enum Source : Int32 {
        case SOURCE_TEXTURE = 0
        case SOURCE_PORT = 1
        case SOURCE_MAX = 2
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeSample3D }

    static var _method_set_source_3315130991: StringName! = nil
    static var _method_get_source_1079494121: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VisualShaderNodeSample3D == nil)
        __godot_name_VisualShaderNodeSample3D = StringName(from: "VisualShaderNodeSample3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_source_3315130991 = StringName(from: "set_source")
        assert(self._method_set_source_3315130991 != nil)
        self._method_get_source_1079494121 = StringName(from: "get_source")
        assert(self._method_get_source_1079494121 != nil)
    }

    public func set_source(value: VisualShaderNodeSample3D.Source)  {
        withUnsafePointer(to: value.rawValue) { value_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_source_3315130991._native_ptr(),
                    3315130991)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_source() -> VisualShaderNodeSample3D.Source {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_source_1079494121._native_ptr(),
                    1079494121)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeSample3D.Source(godot: __resPtr.pointee)
    }
}