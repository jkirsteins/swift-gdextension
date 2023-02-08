import godot_native

fileprivate var __godot_name_CameraTexture: StringName! = nil

/// Texture provided by a [CameraFeed].
/// 
/// This texture gives access to the camera texture provided by a [CameraFeed].
///  
/// [b]Note:[/b] Many cameras supply YCbCr images which need to be converted in a shader.
open class CameraTexture : Texture2D {

    

    public override class var __godot_name: StringName { __godot_name_CameraTexture }

    static var _method_set_camera_feed_id_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_camera_feed_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_which_feed_1595299230: GDExtensionMethodBindPtr! = nil
    static var _method_get_which_feed_91039457: GDExtensionMethodBindPtr! = nil
    static var _method_set_camera_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_camera_active_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CameraTexture = StringName(from: "CameraTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_camera_feed_id_1286410249_name = StringName(from: "set_camera_feed_id")
        self._method_set_camera_feed_id_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraTexture._native_ptr(), _method_set_camera_feed_id_1286410249_name._native_ptr(), 1286410249)
        assert(CameraTexture._method_set_camera_feed_id_1286410249 != nil)
        let _method_get_camera_feed_id_3905245786_name = StringName(from: "get_camera_feed_id")
        self._method_get_camera_feed_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraTexture._native_ptr(), _method_get_camera_feed_id_3905245786_name._native_ptr(), 3905245786)
        assert(CameraTexture._method_get_camera_feed_id_3905245786 != nil)
        let _method_set_which_feed_1595299230_name = StringName(from: "set_which_feed")
        self._method_set_which_feed_1595299230 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraTexture._native_ptr(), _method_set_which_feed_1595299230_name._native_ptr(), 1595299230)
        assert(CameraTexture._method_set_which_feed_1595299230 != nil)
        let _method_get_which_feed_91039457_name = StringName(from: "get_which_feed")
        self._method_get_which_feed_91039457 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraTexture._native_ptr(), _method_get_which_feed_91039457_name._native_ptr(), 91039457)
        assert(CameraTexture._method_get_which_feed_91039457 != nil)
        let _method_set_camera_active_2586408642_name = StringName(from: "set_camera_active")
        self._method_set_camera_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraTexture._native_ptr(), _method_set_camera_active_2586408642_name._native_ptr(), 2586408642)
        assert(CameraTexture._method_set_camera_active_2586408642 != nil)
        let _method_get_camera_active_36873697_name = StringName(from: "get_camera_active")
        self._method_get_camera_active_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraTexture._native_ptr(), _method_get_camera_active_36873697_name._native_ptr(), 36873697)
        assert(CameraTexture._method_get_camera_active_36873697 != nil)
    }

    public func set_camera_feed_id(feed_id: Int64)  {
        withUnsafePointer(to: feed_id) { feed_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feed_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_camera_feed_id_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_camera_feed_id_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_which_feed_1595299230,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_which_feed_91039457,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_camera_active_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_camera_active_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
}