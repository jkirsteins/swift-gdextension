import godot_native

fileprivate var __godot_name_RDShaderSource: StringName! = nil

/// 
/// 
/// 
open class RDShaderSource : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDShaderSource }

    static var _method_set_stage_source_620821314: StringName! = nil
    static var _method_get_stage_source_3354920045: StringName! = nil
    static var _method_set_language_3422186742: StringName! = nil
    static var _method_get_language_1063538261: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RDShaderSource == nil)
        __godot_name_RDShaderSource = StringName(from: "RDShaderSource")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_stage_source_620821314 = StringName(from: "set_stage_source")
        assert(self._method_set_stage_source_620821314 != nil)
        self._method_get_stage_source_3354920045 = StringName(from: "get_stage_source")
        assert(self._method_get_stage_source_3354920045 != nil)
        self._method_set_language_3422186742 = StringName(from: "set_language")
        assert(self._method_set_language_3422186742 != nil)
        self._method_get_language_1063538261 = StringName(from: "get_language")
        assert(self._method_get_language_1063538261 != nil)
    }

    public func set_stage_source(stage: RenderingDevice.ShaderStage, source: godot.String)  {
        withUnsafePointer(to: stage.rawValue) { stage_native in
        let source_native = source._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stage_native), .init(source_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stage_source_620821314._native_ptr(),
                    620821314)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_stage_source(stage: RenderingDevice.ShaderStage) -> godot.String {
        withUnsafePointer(to: stage.rawValue) { stage_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stage_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_stage_source_3354920045._native_ptr(),
                    3354920045)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func set_language(language: RenderingDevice.ShaderLanguage)  {
        withUnsafePointer(to: language.rawValue) { language_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_language_3422186742._native_ptr(),
                    3422186742)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_language() -> RenderingDevice.ShaderLanguage {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_language_1063538261._native_ptr(),
                    1063538261)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.ShaderLanguage(godot: __resPtr.pointee)
    }
}