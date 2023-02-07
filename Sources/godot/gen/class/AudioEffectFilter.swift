import godot_native

fileprivate var __godot_name_AudioEffectFilter: StringName! = nil

/// Adds a filter to the audio bus.
/// 
/// Allows frequencies other than the [member cutoff_hz] to pass.
public class AudioEffectFilter : AudioEffect {

    public enum FilterDB : Int32 {
        case FILTER_6DB = 0
        case FILTER_12DB = 1
        case FILTER_18DB = 2
        case FILTER_24DB = 3
    }

    public override class var __godot_name: StringName { __godot_name_AudioEffectFilter }

    static var _method_set_cutoff_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_cutoff_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_resonance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_resonance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_gain_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_gain_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_db_771740901: GDExtensionMethodBindPtr! = nil
    static var _method_get_db_3981721890: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioEffectFilter = StringName(from: "AudioEffectFilter")

        let _method_set_cutoff_373806689_name = StringName(from: "set_cutoff")
        self._method_set_cutoff_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cutoff_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectFilter._method_set_cutoff_373806689 != nil)
        let _method_get_cutoff_1740695150_name = StringName(from: "get_cutoff")
        self._method_get_cutoff_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cutoff_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectFilter._method_get_cutoff_1740695150 != nil)
        let _method_set_resonance_373806689_name = StringName(from: "set_resonance")
        self._method_set_resonance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_resonance_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectFilter._method_set_resonance_373806689 != nil)
        let _method_get_resonance_1740695150_name = StringName(from: "get_resonance")
        self._method_get_resonance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_resonance_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectFilter._method_get_resonance_1740695150 != nil)
        let _method_set_gain_373806689_name = StringName(from: "set_gain")
        self._method_set_gain_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_gain_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectFilter._method_set_gain_373806689 != nil)
        let _method_get_gain_1740695150_name = StringName(from: "get_gain")
        self._method_get_gain_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_gain_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectFilter._method_get_gain_1740695150 != nil)
        let _method_set_db_771740901_name = StringName(from: "set_db")
        self._method_set_db_771740901 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_db_771740901_name._native_ptr(), 771740901)
        assert(AudioEffectFilter._method_set_db_771740901 != nil)
        let _method_get_db_3981721890_name = StringName(from: "get_db")
        self._method_get_db_3981721890 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_db_3981721890_name._native_ptr(), 3981721890)
        assert(AudioEffectFilter._method_get_db_3981721890 != nil)
    }

    public func set_cutoff(freq: Float64)  {
        withUnsafePointer(to: freq) { freq_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(freq_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cutoff_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cutoff() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cutoff_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_resonance(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_resonance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_resonance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_resonance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_gain(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gain_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_gain() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gain_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_db(amount: AudioEffectFilter.FilterDB)  {
        withUnsafePointer(to: amount.rawValue) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_db_771740901,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_db() -> AudioEffectFilter.FilterDB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_db_3981721890,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioEffectFilter.FilterDB(from: __resPtr.pointee)
    }
}