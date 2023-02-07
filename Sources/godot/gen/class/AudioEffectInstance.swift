import godot_native

fileprivate var __godot_name_AudioEffectInstance: StringName! = nil

/// 
/// 
/// 
public class AudioEffectInstance : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_AudioEffectInstance }

    static var _method__process_0: GDExtensionMethodBindPtr! = nil
    static var _method__process_silence_0: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AudioEffectInstance = StringName(from: "AudioEffectInstance")

        
    }

    public func _process(src_buffer: UnsafeRawPointer, dst_buffer: UnsafeMutablePointer<AudioFrame>, frame_count: Int64)  {
        withUnsafePointer(to: frame_count) { frame_count_native in
        withUnsafePointer(to: dst_buffer) { dst_buffer_native in
        withUnsafePointer(to: src_buffer) { src_buffer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_buffer_native), .init(dst_buffer_native), .init(frame_count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__process_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func _process_silence() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__process_silence_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}