import godot_native

fileprivate var __godot_name_AudioEffectSpectrumAnalyzerInstance: StringName! = nil

/// 
/// 
/// 
public class AudioEffectSpectrumAnalyzerInstance : AudioEffectInstance {

    public enum MagnitudeMode : Int32 {
        case MAGNITUDE_AVERAGE = 0
        case MAGNITUDE_MAX = 1
    }

    public override class var __godot_name: StringName { __godot_name_AudioEffectSpectrumAnalyzerInstance }

    static var _method_get_magnitude_for_frequency_range_2693213071: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioEffectSpectrumAnalyzerInstance = StringName(from: "AudioEffectSpectrumAnalyzerInstance")

        let _method_get_magnitude_for_frequency_range_2693213071_name = StringName(from: "get_magnitude_for_frequency_range")
        self._method_get_magnitude_for_frequency_range_2693213071 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_magnitude_for_frequency_range_2693213071_name._native_ptr(), 2693213071)
        assert(AudioEffectSpectrumAnalyzerInstance._method_get_magnitude_for_frequency_range_2693213071 != nil)
    }

    public func get_magnitude_for_frequency_range(from_hz: Float64, to_hz: Float64, mode: AudioEffectSpectrumAnalyzerInstance.MagnitudeMode) -> Vector2 {
        withUnsafePointer(to: to_hz) { to_hz_native in
        withUnsafePointer(to: from_hz) { from_hz_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_hz_native), .init(to_hz_native), .init(mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_magnitude_for_frequency_range_2693213071,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
        }
        }
        }
    }
}