import godot_native

fileprivate var __godot_name_VideoStream: StringName! = nil

/// Base resource for video streams.
/// 
/// Base resource type for all video streams. Classes that derive from [VideoStream] can all be used as resource types to play back videos in [VideoStreamPlayer].
public class VideoStream : Resource {

    

    public override class var __godot_name: StringName { __godot_name_VideoStream }

    static var _method__instantiate_playback_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_file_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_file_2841200299: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VideoStream = StringName(from: "VideoStream")

        let _method_set_file_83702148_name = StringName(from: "set_file")
        self._method_set_file_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_file_83702148_name._native_ptr(), 83702148)
        assert(VideoStream._method_set_file_83702148 != nil)
        let _method_get_file_2841200299_name = StringName(from: "get_file")
        self._method_get_file_2841200299 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_file_2841200299_name._native_ptr(), 2841200299)
        assert(VideoStream._method_get_file_2841200299 != nil)
    }

    public func _instantiate_playback() -> VideoStreamPlayback {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__instantiate_playback_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VideoStreamPlayback(from: __resPtr.pointee)
    }
    public func set_file(file: String)  {
        withUnsafePointer(to: file) { file_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_file_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_file() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_file_2841200299,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
}