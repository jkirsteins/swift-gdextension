import godot_native

fileprivate var __godot_name_WorldEnvironment: StringName! = nil

/// Default environment properties for the entire scene (post-processing effects, lighting and background settings).
/// 
/// The [WorldEnvironment] node is used to configure the default [Environment] for the scene.
///  
/// The parameters defined in the [WorldEnvironment] can be overridden by an [Environment] node set on the current [Camera3D]. Additionally, only one [WorldEnvironment] may be instantiated in a given scene at a time.
///  
/// The [WorldEnvironment] allows the user to specify default lighting parameters (e.g. ambient lighting), various post-processing effects (e.g. SSAO, DOF, Tonemapping), and how to draw the background (e.g. solid color, skybox). Usually, these are added in order to improve the realism/color balance of the scene.
public class WorldEnvironment : Node {

    

    public override class var __godot_name: StringName { __godot_name_WorldEnvironment }

    static var _method_set_environment_4143518816: GDExtensionMethodBindPtr! = nil
    static var _method_get_environment_3082064660: GDExtensionMethodBindPtr! = nil
    static var _method_set_camera_attributes_2817810567: GDExtensionMethodBindPtr! = nil
    static var _method_get_camera_attributes_3921283215: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_WorldEnvironment = StringName(from: "WorldEnvironment")

        let _method_set_environment_4143518816_name = StringName(from: "set_environment")
        self._method_set_environment_4143518816 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_environment_4143518816_name._native_ptr(), 4143518816)
        assert(WorldEnvironment._method_set_environment_4143518816 != nil)
        let _method_get_environment_3082064660_name = StringName(from: "get_environment")
        self._method_get_environment_3082064660 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_environment_3082064660_name._native_ptr(), 3082064660)
        assert(WorldEnvironment._method_get_environment_3082064660 != nil)
        let _method_set_camera_attributes_2817810567_name = StringName(from: "set_camera_attributes")
        self._method_set_camera_attributes_2817810567 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_camera_attributes_2817810567_name._native_ptr(), 2817810567)
        assert(WorldEnvironment._method_set_camera_attributes_2817810567 != nil)
        let _method_get_camera_attributes_3921283215_name = StringName(from: "get_camera_attributes")
        self._method_get_camera_attributes_3921283215 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_camera_attributes_3921283215_name._native_ptr(), 3921283215)
        assert(WorldEnvironment._method_get_camera_attributes_3921283215 != nil)
    }

    public func set_environment(env: Environment)  {
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_environment_4143518816,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_environment_3082064660,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment(from: __resPtr.pointee)
    }
    public func set_camera_attributes(camera_attributes: CameraAttributes)  {
        let camera_attributes_native = camera_attributes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_attributes_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_camera_attributes_2817810567,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_camera_attributes_3921283215,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CameraAttributes(from: __resPtr.pointee)
    }
}