import godot_native

fileprivate var __godot_name_CameraServer: StringName! = nil

/// Server keeping track of different cameras accessible in Godot.
/// 
/// The [CameraServer] keeps track of different cameras accessible in Godot. These are external cameras such as webcams or the cameras on your phone.
///  
/// It is notably used to provide AR modules with a video feed from the camera.
///  
/// [b]Note:[/b] This class is currently only implemented on macOS and iOS. On other platforms, no [CameraFeed]s will be available.
open class CameraServer : Object {

    public struct FeedImage: RawRepresentable {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let FEED_RGBA_IMAGE = FeedImage(rawValue: 0)
        static let FEED_YCBCR_IMAGE = FeedImage(rawValue: 0)
        static let FEED_Y_IMAGE = FeedImage(rawValue: 0)
        static let FEED_CBCR_IMAGE = FeedImage(rawValue: 1)
    }

    public override class var __godot_name: StringName { __godot_name_CameraServer }

    static var _method_get_feed_361927068: StringName! = nil
    static var _method_get_feed_count_2455072627: StringName! = nil
    static var _method_feeds_2915620761: StringName! = nil
    static var _method_add_feed_3204782488: StringName! = nil
    static var _method_remove_feed_3204782488: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CameraServer == nil)
        __godot_name_CameraServer = StringName(from: "CameraServer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_feed_361927068 = StringName(from: "get_feed")
        assert(self._method_get_feed_361927068 != nil)
        self._method_get_feed_count_2455072627 = StringName(from: "get_feed_count")
        assert(self._method_get_feed_count_2455072627 != nil)
        self._method_feeds_2915620761 = StringName(from: "feeds")
        assert(self._method_feeds_2915620761 != nil)
        self._method_add_feed_3204782488 = StringName(from: "add_feed")
        assert(self._method_add_feed_3204782488 != nil)
        self._method_remove_feed_3204782488 = StringName(from: "remove_feed")
        assert(self._method_remove_feed_3204782488 != nil)
    }

    public func get_feed(index: Int64) -> CameraFeed {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_feed_361927068._native_ptr(),
                    361927068)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CameraFeed(godot: __resPtr.pointee)
        }
    }
    public func get_feed_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_feed_count_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func feeds() -> [CameraFeed] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_feeds_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [CameraFeed](godot: __resPtr.pointee)
    }
    public func add_feed(feed: CameraFeed)  {
        let feed_native = feed._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feed_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_feed_3204782488._native_ptr(),
                    3204782488)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_feed(feed: CameraFeed)  {
        let feed_native = feed._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feed_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_feed_3204782488._native_ptr(),
                    3204782488)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}