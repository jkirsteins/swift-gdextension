import godot_native

fileprivate var __godot_name_AudioEffect: StringName! = nil

/// Audio effect for audio.
/// 
/// Base resource for audio bus. Applies an audio effect on the bus that the resource is applied on.
open class AudioEffect : Resource {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffect }

    static var _method__instantiate_0: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffect == nil)
        __godot_name_AudioEffect = StringName(from: "AudioEffect")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    public func _instantiate() -> AudioEffectInstance {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return AudioEffectInstance(godot: __resPtr.pointee)
    }
}