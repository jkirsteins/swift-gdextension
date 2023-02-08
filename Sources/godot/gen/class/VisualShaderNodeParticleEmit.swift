import godot_native

fileprivate var __godot_name_VisualShaderNodeParticleEmit: StringName! = nil

/// A visual shader node that forces to emit a particle from a sub-emitter.
/// 
/// This node internally calls [code]emit_subparticle[/code] shader method. It will emit a particle from the configured sub-emitter and also allows to customize how its emitted. Requires a sub-emitter assigned to the particles node with this shader.
open class VisualShaderNodeParticleEmit : VisualShaderNode {

    public enum EmitFlags : Int32 {
        case EMIT_FLAG_POSITION = 1
        case EMIT_FLAG_ROT_SCALE = 2
        case EMIT_FLAG_VELOCITY = 4
        case EMIT_FLAG_COLOR = 8
        case EMIT_FLAG_CUSTOM = 16
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParticleEmit }

    static var _method_set_flags_3960756792: GDExtensionMethodBindPtr! = nil
    static var _method_get_flags_171277835: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VisualShaderNodeParticleEmit = StringName(from: "VisualShaderNodeParticleEmit")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_flags_3960756792_name = StringName(from: "set_flags")
        self._method_set_flags_3960756792 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeParticleEmit._native_ptr(), _method_set_flags_3960756792_name._native_ptr(), 3960756792)
        assert(VisualShaderNodeParticleEmit._method_set_flags_3960756792 != nil)
        let _method_get_flags_171277835_name = StringName(from: "get_flags")
        self._method_get_flags_171277835 = self.interface.pointee.classdb_get_method_bind(__godot_name_VisualShaderNodeParticleEmit._native_ptr(), _method_get_flags_171277835_name._native_ptr(), 171277835)
        assert(VisualShaderNodeParticleEmit._method_get_flags_171277835 != nil)
    }

    public func set_flags(flags: VisualShaderNodeParticleEmit.EmitFlags)  {
        withUnsafePointer(to: flags.rawValue) { flags_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flags_3960756792,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_flags() -> VisualShaderNodeParticleEmit.EmitFlags {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_flags_171277835,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeParticleEmit.EmitFlags(godot: __resPtr.pointee)
    }
}