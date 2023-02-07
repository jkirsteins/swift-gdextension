import godot_native

fileprivate var __godot_name_AudioEffect: StringName! = nil

/// Audio effect for audio.
/// 
/// Base resource for audio bus. Applies an audio effect on the bus that the resource is applied on.
public class AudioEffect : Resource {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffect }

    static var _method__instantiate_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioEffect = StringName(from: "AudioEffect")

        
    }

    public func _instantiate() -> AudioEffectInstance {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__instantiate_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioEffectInstance(from: __resPtr.pointee)
    }
}