import godot_native

fileprivate var __godot_name_VideoStreamPlayer: StringName! = nil

/// Control for playing video streams.
/// 
/// Control node for playing video streams using [VideoStream] resources.
///  
/// Supported video formats are [url=https://www.theora.org/]Ogg Theora[/url] ([code].ogv[/code], [VideoStreamTheora]) and any format exposed via a GDExtension plugin.
///  
/// [b]Note:[/b] Due to a bug, VideoStreamPlayer does not support localization remapping yet.
///  
/// [b]Warning:[/b] On Web, video playback [i]will[/i] perform poorly due to missing architecture-specific assembly optimizations.
public class VideoStreamPlayer : Control {

    

    public override class var __godot_name: StringName { __godot_name_VideoStreamPlayer }

    static var _method_set_stream_2317102564: GDExtensionMethodBindPtr! = nil
    static var _method_get_stream_438621487: GDExtensionMethodBindPtr! = nil
    static var _method_play_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_stop_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_is_playing_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_paused_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_paused_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_volume_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volume_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_volume_db_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volume_db_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_audio_track_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_audio_track_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_stream_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_stream_position_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_stream_position_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_autoplay_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_has_autoplay_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_expand_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_has_expand_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_buffering_msec_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_buffering_msec_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_bus_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_bus_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_get_video_texture_3635182373: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VideoStreamPlayer = StringName(from: "VideoStreamPlayer")

        let _method_set_stream_2317102564_name = StringName(from: "set_stream")
        self._method_set_stream_2317102564 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stream_2317102564_name._native_ptr(), 2317102564)
        assert(VideoStreamPlayer._method_set_stream_2317102564 != nil)
        let _method_get_stream_438621487_name = StringName(from: "get_stream")
        self._method_get_stream_438621487 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stream_438621487_name._native_ptr(), 438621487)
        assert(VideoStreamPlayer._method_get_stream_438621487 != nil)
        let _method_play_3218959716_name = StringName(from: "play")
        self._method_play_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_play_3218959716_name._native_ptr(), 3218959716)
        assert(VideoStreamPlayer._method_play_3218959716 != nil)
        let _method_stop_3218959716_name = StringName(from: "stop")
        self._method_stop_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_stop_3218959716_name._native_ptr(), 3218959716)
        assert(VideoStreamPlayer._method_stop_3218959716 != nil)
        let _method_is_playing_36873697_name = StringName(from: "is_playing")
        self._method_is_playing_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_playing_36873697_name._native_ptr(), 36873697)
        assert(VideoStreamPlayer._method_is_playing_36873697 != nil)
        let _method_set_paused_2586408642_name = StringName(from: "set_paused")
        self._method_set_paused_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_paused_2586408642_name._native_ptr(), 2586408642)
        assert(VideoStreamPlayer._method_set_paused_2586408642 != nil)
        let _method_is_paused_36873697_name = StringName(from: "is_paused")
        self._method_is_paused_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_paused_36873697_name._native_ptr(), 36873697)
        assert(VideoStreamPlayer._method_is_paused_36873697 != nil)
        let _method_set_volume_373806689_name = StringName(from: "set_volume")
        self._method_set_volume_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volume_373806689_name._native_ptr(), 373806689)
        assert(VideoStreamPlayer._method_set_volume_373806689 != nil)
        let _method_get_volume_1740695150_name = StringName(from: "get_volume")
        self._method_get_volume_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volume_1740695150_name._native_ptr(), 1740695150)
        assert(VideoStreamPlayer._method_get_volume_1740695150 != nil)
        let _method_set_volume_db_373806689_name = StringName(from: "set_volume_db")
        self._method_set_volume_db_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volume_db_373806689_name._native_ptr(), 373806689)
        assert(VideoStreamPlayer._method_set_volume_db_373806689 != nil)
        let _method_get_volume_db_1740695150_name = StringName(from: "get_volume_db")
        self._method_get_volume_db_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volume_db_1740695150_name._native_ptr(), 1740695150)
        assert(VideoStreamPlayer._method_get_volume_db_1740695150 != nil)
        let _method_set_audio_track_1286410249_name = StringName(from: "set_audio_track")
        self._method_set_audio_track_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_audio_track_1286410249_name._native_ptr(), 1286410249)
        assert(VideoStreamPlayer._method_set_audio_track_1286410249 != nil)
        let _method_get_audio_track_3905245786_name = StringName(from: "get_audio_track")
        self._method_get_audio_track_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_audio_track_3905245786_name._native_ptr(), 3905245786)
        assert(VideoStreamPlayer._method_get_audio_track_3905245786 != nil)
        let _method_get_stream_name_201670096_name = StringName(from: "get_stream_name")
        self._method_get_stream_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stream_name_201670096_name._native_ptr(), 201670096)
        assert(VideoStreamPlayer._method_get_stream_name_201670096 != nil)
        let _method_set_stream_position_373806689_name = StringName(from: "set_stream_position")
        self._method_set_stream_position_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stream_position_373806689_name._native_ptr(), 373806689)
        assert(VideoStreamPlayer._method_set_stream_position_373806689 != nil)
        let _method_get_stream_position_1740695150_name = StringName(from: "get_stream_position")
        self._method_get_stream_position_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stream_position_1740695150_name._native_ptr(), 1740695150)
        assert(VideoStreamPlayer._method_get_stream_position_1740695150 != nil)
        let _method_set_autoplay_2586408642_name = StringName(from: "set_autoplay")
        self._method_set_autoplay_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_autoplay_2586408642_name._native_ptr(), 2586408642)
        assert(VideoStreamPlayer._method_set_autoplay_2586408642 != nil)
        let _method_has_autoplay_36873697_name = StringName(from: "has_autoplay")
        self._method_has_autoplay_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_autoplay_36873697_name._native_ptr(), 36873697)
        assert(VideoStreamPlayer._method_has_autoplay_36873697 != nil)
        let _method_set_expand_2586408642_name = StringName(from: "set_expand")
        self._method_set_expand_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_expand_2586408642_name._native_ptr(), 2586408642)
        assert(VideoStreamPlayer._method_set_expand_2586408642 != nil)
        let _method_has_expand_36873697_name = StringName(from: "has_expand")
        self._method_has_expand_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_expand_36873697_name._native_ptr(), 36873697)
        assert(VideoStreamPlayer._method_has_expand_36873697 != nil)
        let _method_set_buffering_msec_1286410249_name = StringName(from: "set_buffering_msec")
        self._method_set_buffering_msec_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_buffering_msec_1286410249_name._native_ptr(), 1286410249)
        assert(VideoStreamPlayer._method_set_buffering_msec_1286410249 != nil)
        let _method_get_buffering_msec_3905245786_name = StringName(from: "get_buffering_msec")
        self._method_get_buffering_msec_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_buffering_msec_3905245786_name._native_ptr(), 3905245786)
        assert(VideoStreamPlayer._method_get_buffering_msec_3905245786 != nil)
        let _method_set_bus_3304788590_name = StringName(from: "set_bus")
        self._method_set_bus_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bus_3304788590_name._native_ptr(), 3304788590)
        assert(VideoStreamPlayer._method_set_bus_3304788590 != nil)
        let _method_get_bus_2002593661_name = StringName(from: "get_bus")
        self._method_get_bus_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bus_2002593661_name._native_ptr(), 2002593661)
        assert(VideoStreamPlayer._method_get_bus_2002593661 != nil)
        let _method_get_video_texture_3635182373_name = StringName(from: "get_video_texture")
        self._method_get_video_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_video_texture_3635182373_name._native_ptr(), 3635182373)
        assert(VideoStreamPlayer._method_get_video_texture_3635182373 != nil)
    }

    public func set_stream(stream: VideoStream)  {
        let stream_native = stream._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(stream_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stream_2317102564,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_stream() -> VideoStream {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stream_438621487,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VideoStream(from: __resPtr.pointee)
    }
    public func play()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_play_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_playing() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_playing_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_paused(paused: UInt8)  {
        withUnsafePointer(to: paused) { paused_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(paused_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_paused_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_paused() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_paused_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_volume(volume: Float64)  {
        withUnsafePointer(to: volume) { volume_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(volume_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volume_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volume() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volume_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_volume_db(db: Float64)  {
        withUnsafePointer(to: db) { db_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(db_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volume_db_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volume_db_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_audio_track(track: Int64)  {
        withUnsafePointer(to: track) { track_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(track_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_audio_track_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_audio_track() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_audio_track_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_stream_name() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stream_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_stream_position(position: Float64)  {
        withUnsafePointer(to: position) { position_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stream_position_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_stream_position() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stream_position_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_autoplay(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autoplay_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_autoplay() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_autoplay_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_expand(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_expand_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_expand() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_expand_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_buffering_msec(msec: Int64)  {
        withUnsafePointer(to: msec) { msec_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_buffering_msec_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_buffering_msec() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_buffering_msec_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_bus(bus: StringName)  {
        let bus_native = bus._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bus_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bus_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bus() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bus_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func get_video_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_video_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
    }
}