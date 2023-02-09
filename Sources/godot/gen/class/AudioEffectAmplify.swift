import godot_native

fileprivate var __godot_name_AudioEffectAmplify: StringName! = nil

/// Adds an amplifying audio effect to an audio bus.
/// 
/// Increases or decreases the volume being routed through the audio bus.
open class AudioEffectAmplify : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectAmplify }

    static var _method_set_volume_db_373806689: StringName! = nil
    static var _method_get_volume_db_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffectAmplify == nil)
        __godot_name_AudioEffectAmplify = StringName(from: "AudioEffectAmplify")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_volume_db_373806689 = StringName(from: "set_volume_db")
        assert(self._method_set_volume_db_373806689 != nil)
        self._method_get_volume_db_1740695150 = StringName(from: "get_volume_db")
        assert(self._method_get_volume_db_1740695150 != nil)
    }

    public func set_volume_db(volume: Float64)  {
        withUnsafePointer(to: volume) { volume_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(volume_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volume_db_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_volume_db_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}