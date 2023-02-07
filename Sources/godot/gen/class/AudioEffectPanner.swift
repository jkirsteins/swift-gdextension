import godot_native

fileprivate var __godot_name_AudioEffectPanner: StringName! = nil

/// Adds a panner audio effect to an audio bus. Pans sound left or right.
/// 
/// Determines how much of an audio signal is sent to the left and right buses.
public class AudioEffectPanner : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectPanner }

    static var _method_set_pan_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_pan_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioEffectPanner = StringName(from: "AudioEffectPanner")

        let _method_set_pan_373806689_name = StringName(from: "set_pan")
        self._method_set_pan_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pan_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectPanner._method_set_pan_373806689 != nil)
        let _method_get_pan_1740695150_name = StringName(from: "get_pan")
        self._method_get_pan_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pan_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectPanner._method_get_pan_1740695150 != nil)
    }

    public func set_pan(cpanume: Float64)  {
        withUnsafePointer(to: cpanume) { cpanume_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cpanume_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pan_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pan() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pan_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}