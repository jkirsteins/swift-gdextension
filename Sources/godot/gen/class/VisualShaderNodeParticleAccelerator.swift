import godot_native

fileprivate var __godot_name_VisualShaderNodeParticleAccelerator: StringName! = nil

/// A visual shader node that accelerates particles.
/// 
/// Particle accelerator can be used in "process" step of particle shader. It will accelerate the particles. Connect it to the Velocity output port.
public class VisualShaderNodeParticleAccelerator : VisualShaderNode {

    public enum Mode : Int32 {
        case MODE_LINEAR = 0
        case MODE_RADIAL = 1
        case MODE_TANGENTIAL = 2
        case MODE_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParticleAccelerator }

    static var _method_set_mode_3457585749: GDExtensionMethodBindPtr! = nil
    static var _method_get_mode_2660365633: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeParticleAccelerator = StringName(from: "VisualShaderNodeParticleAccelerator")

        let _method_set_mode_3457585749_name = StringName(from: "set_mode")
        self._method_set_mode_3457585749 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mode_3457585749_name._native_ptr(), 3457585749)
        assert(VisualShaderNodeParticleAccelerator._method_set_mode_3457585749 != nil)
        let _method_get_mode_2660365633_name = StringName(from: "get_mode")
        self._method_get_mode_2660365633 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mode_2660365633_name._native_ptr(), 2660365633)
        assert(VisualShaderNodeParticleAccelerator._method_get_mode_2660365633 != nil)
    }

    public func set_mode(mode: VisualShaderNodeParticleAccelerator.Mode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mode_3457585749,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mode() -> VisualShaderNodeParticleAccelerator.Mode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mode_2660365633,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VisualShaderNodeParticleAccelerator.Mode(from: __resPtr.pointee)
    }
}