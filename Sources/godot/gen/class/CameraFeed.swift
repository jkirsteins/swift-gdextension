import godot_native

fileprivate var __godot_name_CameraFeed: StringName! = nil

/// A camera feed gives you access to a single physical camera attached to your device.
/// 
/// A camera feed gives you access to a single physical camera attached to your device. When enabled, Godot will start capturing frames from the camera which can then be used. See also [CameraServer].
///  
/// [b]Note:[/b] Many cameras will return YCbCr images which are split into two textures and need to be combined in a shader. Godot does this automatically for you if you set the environment to show the camera image in the background.
open class CameraFeed : RefCounted {

    public enum FeedDataType : Int32 {
        case FEED_NOIMAGE = 0
        case FEED_RGB = 1
        case FEED_YCBCR = 2
        case FEED_YCBCR_SEP = 3
    }
    public enum FeedPosition : Int32 {
        case FEED_UNSPECIFIED = 0
        case FEED_FRONT = 1
        case FEED_BACK = 2
    }

    public override class var __godot_name: StringName { __godot_name_CameraFeed }

    static var _method_get_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_is_active_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_2711679033: GDExtensionMethodBindPtr! = nil
    static var _method_get_transform_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_set_transform_2761652528: GDExtensionMethodBindPtr! = nil
    static var _method_get_datatype_1477782850: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CameraFeed = StringName(from: "CameraFeed")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_id_3905245786_name = StringName(from: "get_id")
        self._method_get_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraFeed._native_ptr(), _method_get_id_3905245786_name._native_ptr(), 3905245786)
        assert(CameraFeed._method_get_id_3905245786 != nil)
        let _method_is_active_36873697_name = StringName(from: "is_active")
        self._method_is_active_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraFeed._native_ptr(), _method_is_active_36873697_name._native_ptr(), 36873697)
        assert(CameraFeed._method_is_active_36873697 != nil)
        let _method_set_active_2586408642_name = StringName(from: "set_active")
        self._method_set_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraFeed._native_ptr(), _method_set_active_2586408642_name._native_ptr(), 2586408642)
        assert(CameraFeed._method_set_active_2586408642 != nil)
        let _method_get_name_201670096_name = StringName(from: "get_name")
        self._method_get_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraFeed._native_ptr(), _method_get_name_201670096_name._native_ptr(), 201670096)
        assert(CameraFeed._method_get_name_201670096 != nil)
        let _method_get_position_2711679033_name = StringName(from: "get_position")
        self._method_get_position_2711679033 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraFeed._native_ptr(), _method_get_position_2711679033_name._native_ptr(), 2711679033)
        assert(CameraFeed._method_get_position_2711679033 != nil)
        let _method_get_transform_3814499831_name = StringName(from: "get_transform")
        self._method_get_transform_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraFeed._native_ptr(), _method_get_transform_3814499831_name._native_ptr(), 3814499831)
        assert(CameraFeed._method_get_transform_3814499831 != nil)
        let _method_set_transform_2761652528_name = StringName(from: "set_transform")
        self._method_set_transform_2761652528 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraFeed._native_ptr(), _method_set_transform_2761652528_name._native_ptr(), 2761652528)
        assert(CameraFeed._method_set_transform_2761652528 != nil)
        let _method_get_datatype_1477782850_name = StringName(from: "get_datatype")
        self._method_get_datatype_1477782850 = self.interface.pointee.classdb_get_method_bind(__godot_name_CameraFeed._native_ptr(), _method_get_datatype_1477782850_name._native_ptr(), 1477782850)
        assert(CameraFeed._method_get_datatype_1477782850 != nil)
    }

    public func get_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func is_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_active_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_active(active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(active_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_active_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_position() -> CameraFeed.FeedPosition {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_position_2711679033,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CameraFeed.FeedPosition(godot: __resPtr.pointee)
    }
    public func get_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transform_3814499831,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func set_transform(transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transform_2761652528,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_datatype() -> CameraFeed.FeedDataType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_datatype_1477782850,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CameraFeed.FeedDataType(godot: __resPtr.pointee)
    }
}