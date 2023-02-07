import godot_native

fileprivate var __godot_name_MovieWriter: StringName! = nil

/// Abstract class for non-real-time video recording encoders.
/// 
/// Godot can record videos with non-real-time simulation. Like the [code]--fixed-fps[/code] [url=$DOCS_URL/tutorials/editor/command_line_tutorial.html]command line argument[/url], this forces the reported [code]delta[/code] in [method Node._process] functions to be identical across frames, regardless of how long it actually took to render the frame. This can be used to record high-quality videos with perfect frame pacing regardless of your hardware's capabilities.
///  
/// Godot has 2 built-in [MovieWriter]s:
///  
/// - AVI container with MJPEG for video and uncompressed audio ([code].avi[/code] file extension). Lossy compression, medium file sizes, fast encoding. The lossy compression quality can be adjusted by changing [member ProjectSettings.editor/movie_writer/mjpeg_quality]. The resulting file can be viewed in most video players, but it must be converted to another format for viewing on the web or by Godot with [VideoStreamPlayer]. MJPEG does not support transparency. AVI output is currently limited to a file of 4 GB in size at most.
///  
/// - PNG image sequence for video and WAV for audio ([code].png[/code] file extension). Lossless compression, large file sizes, slow encoding. Designed to be encoded to a video file with another tool such as [url=https://ffmpeg.org/]FFmpeg[/url] after recording. Transparency is currently not supported, even if the root viewport is set to be transparent.
///  
/// If you need to encode to a different format or pipe a stream through third-party software, you can extend the [MovieWriter] class to create your own movie writers. This should typically be done using GDExtension for performance reasons.
///  
/// [b]Editor usage:[/b] A default movie file path can be specified in [member ProjectSettings.editor/movie_writer/movie_file]. Alternatively, for running single scenes, a [code]movie_path[/code] metadata can be added to the root node, specifying the path to a movie file that will be used when recording that scene. Once a path is set, click the video reel icon in the top-right corner of the editor to enable Movie Maker mode, then run any scene as usual. The engine will start recording as soon as the splash screen is finished, and it will only stop recording when the engine quits. Click the video reel icon again to disable Movie Maker mode. Note that toggling Movie Maker mode does not affect project instances that are already running.
///  
/// [b]Note:[/b] MovieWriter is available for use in both the editor and exported projects, but it is [i]not[/i] designed for use by end users to record videos while playing. Players wishing to record gameplay videos should install tools such as [url=https://obsproject.com/]OBS Studio[/url] or [url=https://www.maartenbaert.be/simplescreenrecorder/]SimpleScreenRecorder[/url] instead.
public class MovieWriter : Object {

    

    public override class var __godot_name: StringName { __godot_name_MovieWriter }

    static var _method__get_audio_mix_rate_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_audio_speaker_mode_0: GDExtensionMethodBindPtr! = nil
    static var _method__handles_file_0: GDExtensionMethodBindPtr! = nil
    static var _method__write_begin_0: GDExtensionMethodBindPtr! = nil
    static var _method__write_frame_0: GDExtensionMethodBindPtr! = nil
    static var _method__write_end_0: GDExtensionMethodBindPtr! = nil
    static var _method_add_writer_4023702871: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_MovieWriter = StringName(from: "MovieWriter")

        let _method_add_writer_4023702871_name = StringName(from: "add_writer")
        self._method_add_writer_4023702871 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_writer_4023702871_name._native_ptr(), 4023702871)
        assert(MovieWriter._method_add_writer_4023702871 != nil)
    }

    public func _get_audio_mix_rate() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_audio_mix_rate_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _get_audio_speaker_mode() -> AudioServer.SpeakerMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_audio_speaker_mode_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AudioServer.SpeakerMode(from: __resPtr.pointee)
    }
    public func _handles_file(path: String) -> UInt8 {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__handles_file_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func _write_begin(movie_size: Vector2i, fps: Int64, base_path: String) -> Error {
        withUnsafePointer(to: base_path) { base_path_native in
        withUnsafePointer(to: fps) { fps_native in
        let movie_size_native = movie_size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(movie_size_native), .init(fps_native), .init(base_path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__write_begin_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func _write_frame(frame_image: Image, audio_frame_block: UnsafeRawPointer) -> Error {
        withUnsafePointer(to: audio_frame_block) { audio_frame_block_native in
        let frame_image_native = frame_image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frame_image_native), .init(audio_frame_block_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__write_frame_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func _write_end()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__write_end_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_writer(writer: MovieWriter)  {
        let writer_native = writer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(writer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_writer_4023702871,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}