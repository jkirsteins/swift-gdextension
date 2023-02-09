import godot_native

fileprivate var __godot_name_AudioEffectEQ: StringName! = nil

/// Base class for audio equalizers. Gives you control over frequencies.
///  
/// Use it to create a custom equalizer if [AudioEffectEQ6], [AudioEffectEQ10] or [AudioEffectEQ21] don't fit your needs.
/// 
/// AudioEffectEQ gives you control over frequencies. Use it to compensate for existing deficiencies in audio. AudioEffectEQs are useful on the Master bus to completely master a mix and give it more character. They are also useful when a game is run on a mobile device, to adjust the mix to that kind of speakers (it can be added but disabled when headphones are plugged).
open class AudioEffectEQ : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectEQ }

    static var _method_set_band_gain_db_1602489585: StringName! = nil
    static var _method_get_band_gain_db_2339986948: StringName! = nil
    static var _method_get_band_count_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AudioEffectEQ == nil)
        __godot_name_AudioEffectEQ = StringName(from: "AudioEffectEQ")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_band_gain_db_1602489585 = StringName(from: "set_band_gain_db")
        assert(self._method_set_band_gain_db_1602489585 != nil)
        self._method_get_band_gain_db_2339986948 = StringName(from: "get_band_gain_db")
        assert(self._method_get_band_gain_db_2339986948 != nil)
        self._method_get_band_count_3905245786 = StringName(from: "get_band_count")
        assert(self._method_get_band_count_3905245786 != nil)
    }

    public func set_band_gain_db(band_idx: Int64, volume_db: Float64)  {
        withUnsafePointer(to: volume_db) { volume_db_native in
        withUnsafePointer(to: band_idx) { band_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(band_idx_native), .init(volume_db_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_band_gain_db_1602489585._native_ptr(),
                    1602489585)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_band_gain_db(band_idx: Int64) -> Float64 {
        withUnsafePointer(to: band_idx) { band_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(band_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_band_gain_db_2339986948._native_ptr(),
                    2339986948)
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
    public func get_band_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_band_count_3905245786._native_ptr(),
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