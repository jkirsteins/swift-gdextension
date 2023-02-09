import godot_native

fileprivate var __godot_name_VideoStream: StringName! = nil

/// Base resource for video streams.
/// 
/// Base resource type for all video streams. Classes that derive from [VideoStream] can all be used as resource types to play back videos in [VideoStreamPlayer].
open class VideoStream : Resource {

    

    public override class var __godot_name: StringName { __godot_name_VideoStream }

    static var _method__instantiate_playback_0: StringName! = nil
    static var _method_set_file_83702148: StringName! = nil
    static var _method_get_file_2841200299: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_VideoStream == nil)
        __godot_name_VideoStream = StringName(from: "VideoStream")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_file_83702148 = StringName(from: "set_file")
        assert(self._method_set_file_83702148 != nil)
        self._method_get_file_2841200299 = StringName(from: "get_file")
        assert(self._method_get_file_2841200299 != nil)
    }

    public func _instantiate_playback() -> VideoStreamPlayback {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return VideoStreamPlayback(godot: __resPtr.pointee)
    }
    public func set_file(file: godot.String)  {
        let file_native = file._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(file_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_file_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_file() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_file_2841200299._native_ptr(),
                    2841200299)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}