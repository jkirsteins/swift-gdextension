import godot_native

fileprivate var __godot_name_AudioEffectAmplify: StringName! = nil

/// Adds an amplifying audio effect to an audio bus.
/// 
/// Increases or decreases the volume being routed through the audio bus.
public class AudioEffectAmplify : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectAmplify }

    static var _method_set_volume_db_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volume_db_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioEffectAmplify = StringName(from: "AudioEffectAmplify")

        let _method_set_volume_db_373806689_name = StringName(from: "set_volume_db")
        self._method_set_volume_db_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volume_db_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectAmplify._method_set_volume_db_373806689 != nil)
        let _method_get_volume_db_1740695150_name = StringName(from: "get_volume_db")
        self._method_get_volume_db_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volume_db_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectAmplify._method_get_volume_db_1740695150 != nil)
    }

    public func set_volume_db(volume: Float64)  {
        withUnsafePointer(to: volume) { volume_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(volume_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volume_db_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volume_db() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volume_db_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}