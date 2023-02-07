import godot_native

fileprivate var __godot_name_AudioEffectStereoEnhance: StringName! = nil

/// An audio effect that can be used to adjust the intensity of stereo panning.
/// 
/// An audio effect that can be used to adjust the intensity of stereo panning.
public class AudioEffectStereoEnhance : AudioEffect {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectStereoEnhance }

    static var _method_set_pan_pullout_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_pan_pullout_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_time_pullout_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_time_pullout_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_surround_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_surround_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioEffectStereoEnhance = StringName(from: "AudioEffectStereoEnhance")

        let _method_set_pan_pullout_373806689_name = StringName(from: "set_pan_pullout")
        self._method_set_pan_pullout_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_pan_pullout_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectStereoEnhance._method_set_pan_pullout_373806689 != nil)
        let _method_get_pan_pullout_1740695150_name = StringName(from: "get_pan_pullout")
        self._method_get_pan_pullout_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_pan_pullout_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectStereoEnhance._method_get_pan_pullout_1740695150 != nil)
        let _method_set_time_pullout_373806689_name = StringName(from: "set_time_pullout")
        self._method_set_time_pullout_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_time_pullout_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectStereoEnhance._method_set_time_pullout_373806689 != nil)
        let _method_get_time_pullout_1740695150_name = StringName(from: "get_time_pullout")
        self._method_get_time_pullout_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_time_pullout_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectStereoEnhance._method_get_time_pullout_1740695150 != nil)
        let _method_set_surround_373806689_name = StringName(from: "set_surround")
        self._method_set_surround_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_surround_373806689_name._native_ptr(), 373806689)
        assert(AudioEffectStereoEnhance._method_set_surround_373806689 != nil)
        let _method_get_surround_1740695150_name = StringName(from: "get_surround")
        self._method_get_surround_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_surround_1740695150_name._native_ptr(), 1740695150)
        assert(AudioEffectStereoEnhance._method_get_surround_1740695150 != nil)
    }

    public func set_pan_pullout(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pan_pullout_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_pan_pullout() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pan_pullout_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_time_pullout(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_time_pullout_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_time_pullout() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_time_pullout_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_surround(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_surround_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_surround() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_surround_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}