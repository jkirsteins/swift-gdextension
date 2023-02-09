import godot_native

fileprivate var __godot_name_CameraTexture: StringName! = nil

/// Texture provided by a [CameraFeed].
/// 
/// This texture gives access to the camera texture provided by a [CameraFeed].
///  
/// [b]Note:[/b] Many cameras supply YCbCr images which need to be converted in a shader.
open class CameraTexture : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_CameraTexture }

    static var _method_set_camera_feed_id_1286410249: StringName! = nil
    static var _method_get_camera_feed_id_3905245786: StringName! = nil
    static var _method_set_which_feed_1595299230: StringName! = nil
    static var _method_get_which_feed_91039457: StringName! = nil
    static var _method_set_camera_active_2586408642: StringName! = nil
    static var _method_get_camera_active_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_CameraTexture == nil)
        __godot_name_CameraTexture = StringName(from: "CameraTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_camera_feed_id_1286410249 = StringName(from: "set_camera_feed_id")
        assert(self._method_set_camera_feed_id_1286410249 != nil)
        self._method_get_camera_feed_id_3905245786 = StringName(from: "get_camera_feed_id")
        assert(self._method_get_camera_feed_id_3905245786 != nil)
        self._method_set_which_feed_1595299230 = StringName(from: "set_which_feed")
        assert(self._method_set_which_feed_1595299230 != nil)
        self._method_get_which_feed_91039457 = StringName(from: "get_which_feed")
        assert(self._method_get_which_feed_91039457 != nil)
        self._method_set_camera_active_2586408642 = StringName(from: "set_camera_active")
        assert(self._method_set_camera_active_2586408642 != nil)
        self._method_get_camera_active_36873697 = StringName(from: "get_camera_active")
        assert(self._method_get_camera_active_36873697 != nil)
    }

    public func set_camera_feed_id(feed_id: Int64)  {
        withUnsafePointer(to: feed_id) { feed_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feed_id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_camera_feed_id_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_camera_feed_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_camera_feed_id_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_which_feed(which_feed: CameraServer.FeedImage)  {
        withUnsafePointer(to: which_feed.rawValue) { which_feed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(which_feed_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_which_feed_1595299230._native_ptr(),
                    1595299230)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_which_feed() -> CameraServer.FeedImage {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_which_feed_91039457._native_ptr(),
                    91039457)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CameraServer.FeedImage(godot: __resPtr.pointee)
    }
    public func set_camera_active(active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(active_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_camera_active_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_camera_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_camera_active_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}