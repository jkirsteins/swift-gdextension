import godot_native

fileprivate var __godot_name_WorldEnvironment: StringName! = nil

/// Default environment properties for the entire scene (post-processing effects, lighting and background settings).
/// 
/// The [WorldEnvironment] node is used to configure the default [Environment] for the scene.
///  
/// The parameters defined in the [WorldEnvironment] can be overridden by an [Environment] node set on the current [Camera3D]. Additionally, only one [WorldEnvironment] may be instantiated in a given scene at a time.
///  
/// The [WorldEnvironment] allows the user to specify default lighting parameters (e.g. ambient lighting), various post-processing effects (e.g. SSAO, DOF, Tonemapping), and how to draw the background (e.g. solid color, skybox). Usually, these are added in order to improve the realism/color balance of the scene.
open class WorldEnvironment : Node {

    

    public override class var __godot_name: StringName { __godot_name_WorldEnvironment }

    static var _method_set_environment_4143518816: StringName! = nil
    static var _method_get_environment_3082064660: StringName! = nil
    static var _method_set_camera_attributes_2817810567: StringName! = nil
    static var _method_get_camera_attributes_3921283215: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_WorldEnvironment == nil)
        __godot_name_WorldEnvironment = StringName(from: "WorldEnvironment")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_environment_4143518816 = StringName(from: "set_environment")
        assert(self._method_set_environment_4143518816 != nil)
        self._method_get_environment_3082064660 = StringName(from: "get_environment")
        assert(self._method_get_environment_3082064660 != nil)
        self._method_set_camera_attributes_2817810567 = StringName(from: "set_camera_attributes")
        assert(self._method_set_camera_attributes_2817810567 != nil)
        self._method_get_camera_attributes_3921283215 = StringName(from: "get_camera_attributes")
        assert(self._method_get_camera_attributes_3921283215 != nil)
    }

    public func set_environment(env: Environment)  {
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_environment_4143518816._native_ptr(),
                    4143518816)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_environment() -> Environment {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_environment_3082064660._native_ptr(),
                    3082064660)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment(godot: __resPtr.pointee)
    }
    public func set_camera_attributes(camera_attributes: CameraAttributes)  {
        let camera_attributes_native = camera_attributes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_attributes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_camera_attributes_2817810567._native_ptr(),
                    2817810567)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_camera_attributes() -> CameraAttributes {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_camera_attributes_3921283215._native_ptr(),
                    3921283215)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CameraAttributes(godot: __resPtr.pointee)
    }
}