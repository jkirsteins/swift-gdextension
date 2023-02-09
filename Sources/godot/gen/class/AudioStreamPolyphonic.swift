import godot_native

fileprivate var __godot_name_AudioStreamPolyphonic: StringName! = nil

/// AudioStream that lets the user play custom streams at any time from code, simultaneously using a single player.
/// 
/// AudioStream that lets the user play custom streams at any time from code, simultaneously using a single player.
///  
/// Playback control is done via the [AudioStreamPlaybackPolyphonic] instance set inside the player, which can be obtained via [method AudioStreamPlayer.get_stream_playback], [method AudioStreamPlayer2D.get_stream_playback] or [method AudioStreamPlayer3D.get_stream_playback] methods. Obtaining the playback instance is only valid after the [code]stream[/code] property is set as an [AudioStreamPolyphonic] in those players.
open class AudioStreamPolyphonic : AudioStream {

    

    public override class var __godot_name: StringName { __godot_name_AudioStreamPolyphonic }

    static var _method_set_polyphony_1286410249: StringName! = nil
    static var _method_get_polyphony_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioStreamPolyphonic == nil)
        __godot_name_AudioStreamPolyphonic = StringName(from: "AudioStreamPolyphonic")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_polyphony_1286410249 = StringName(from: "set_polyphony")
        assert(self._method_set_polyphony_1286410249 != nil)
        self._method_get_polyphony_3905245786 = StringName(from: "get_polyphony")
        assert(self._method_get_polyphony_3905245786 != nil)
    }

    public func set_polyphony(voices: Int64)  {
        withUnsafePointer(to: voices) { voices_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voices_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_polyphony_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_polyphony() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_polyphony_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}