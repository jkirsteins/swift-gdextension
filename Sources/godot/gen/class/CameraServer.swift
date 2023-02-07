import godot_native

fileprivate var __godot_name_CameraServer: StringName! = nil

/// Server keeping track of different cameras accessible in Godot.
/// 
/// The [CameraServer] keeps track of different cameras accessible in Godot. These are external cameras such as webcams or the cameras on your phone.
///  
/// It is notably used to provide AR modules with a video feed from the camera.
///  
/// [b]Note:[/b] This class is currently only implemented on macOS and iOS. On other platforms, no [CameraFeed]s will be available.
public class CameraServer : Object {

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

    static var _method_get_feed_361927068: GDExtensionMethodBindPtr! = nil
    static var _method_get_feed_count_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_feeds_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_add_feed_3204782488: GDExtensionMethodBindPtr! = nil
    static var _method_remove_feed_3204782488: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_CameraServer = StringName(from: "CameraServer")

        let _method_get_feed_361927068_name = StringName(from: "get_feed")
        self._method_get_feed_361927068 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_feed_361927068_name._native_ptr(), 361927068)
        assert(CameraServer._method_get_feed_361927068 != nil)
        let _method_get_feed_count_2455072627_name = StringName(from: "get_feed_count")
        self._method_get_feed_count_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_feed_count_2455072627_name._native_ptr(), 2455072627)
        assert(CameraServer._method_get_feed_count_2455072627 != nil)
        let _method_feeds_2915620761_name = StringName(from: "feeds")
        self._method_feeds_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_feeds_2915620761_name._native_ptr(), 2915620761)
        assert(CameraServer._method_feeds_2915620761 != nil)
        let _method_add_feed_3204782488_name = StringName(from: "add_feed")
        self._method_add_feed_3204782488 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_feed_3204782488_name._native_ptr(), 3204782488)
        assert(CameraServer._method_add_feed_3204782488 != nil)
        let _method_remove_feed_3204782488_name = StringName(from: "remove_feed")
        self._method_remove_feed_3204782488 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_feed_3204782488_name._native_ptr(), 3204782488)
        assert(CameraServer._method_remove_feed_3204782488 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_feed_361927068,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CameraFeed(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_feed_count_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func feeds() -> [CameraFeed] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_feeds_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [CameraFeed](from: __resPtr.pointee)
    }
    public func add_feed(feed: CameraFeed)  {
        let feed_native = feed._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_feed_3204782488,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_feed_3204782488,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}