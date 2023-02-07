import godot_native

fileprivate var __godot_name_VisualShaderNodeParticleMultiplyByAxisAngle: StringName! = nil

/// A visual shader helper node for multiplying position and rotation of particles.
/// 
/// This node helps to multiply a position input vector by rotation using specific axis. Intended to work with emitters.
public class VisualShaderNodeParticleMultiplyByAxisAngle : VisualShaderNode {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeParticleMultiplyByAxisAngle }

    static var _method_set_degrees_mode_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_degrees_mode_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeParticleMultiplyByAxisAngle = StringName(from: "VisualShaderNodeParticleMultiplyByAxisAngle")

        let _method_set_degrees_mode_2586408642_name = StringName(from: "set_degrees_mode")
        self._method_set_degrees_mode_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_degrees_mode_2586408642_name._native_ptr(), 2586408642)
        assert(VisualShaderNodeParticleMultiplyByAxisAngle._method_set_degrees_mode_2586408642 != nil)
        let _method_is_degrees_mode_36873697_name = StringName(from: "is_degrees_mode")
        self._method_is_degrees_mode_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_degrees_mode_36873697_name._native_ptr(), 36873697)
        assert(VisualShaderNodeParticleMultiplyByAxisAngle._method_is_degrees_mode_36873697 != nil)
    }

    public func set_degrees_mode(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_degrees_mode_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_degrees_mode() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_degrees_mode_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}