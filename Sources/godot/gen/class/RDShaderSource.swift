import godot_native

fileprivate var __godot_name_RDShaderSource: StringName! = nil

/// 
/// 
/// 
open class RDShaderSource : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDShaderSource }

    static var _method_set_stage_source_620821314: GDExtensionMethodBindPtr! = nil
    static var _method_get_stage_source_3354920045: GDExtensionMethodBindPtr! = nil
    static var _method_set_language_3422186742: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_1063538261: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_RDShaderSource = StringName(from: "RDShaderSource")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_stage_source_620821314_name = StringName(from: "set_stage_source")
        self._method_set_stage_source_620821314 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDShaderSource._native_ptr(), _method_set_stage_source_620821314_name._native_ptr(), 620821314)
        assert(RDShaderSource._method_set_stage_source_620821314 != nil)
        let _method_get_stage_source_3354920045_name = StringName(from: "get_stage_source")
        self._method_get_stage_source_3354920045 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDShaderSource._native_ptr(), _method_get_stage_source_3354920045_name._native_ptr(), 3354920045)
        assert(RDShaderSource._method_get_stage_source_3354920045 != nil)
        let _method_set_language_3422186742_name = StringName(from: "set_language")
        self._method_set_language_3422186742 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDShaderSource._native_ptr(), _method_set_language_3422186742_name._native_ptr(), 3422186742)
        assert(RDShaderSource._method_set_language_3422186742 != nil)
        let _method_get_language_1063538261_name = StringName(from: "get_language")
        self._method_get_language_1063538261 = self.interface.pointee.classdb_get_method_bind(__godot_name_RDShaderSource._native_ptr(), _method_get_language_1063538261_name._native_ptr(), 1063538261)
        assert(RDShaderSource._method_get_language_1063538261 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stage_source_620821314,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stage_source_3354920045,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_language_3422186742,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_language_1063538261,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.ShaderLanguage(godot: __resPtr.pointee)
    }
}