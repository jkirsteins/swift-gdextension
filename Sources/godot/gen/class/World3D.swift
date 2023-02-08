import godot_native

fileprivate var __godot_name_World3D: StringName! = nil

/// Class that has everything pertaining to a world.
/// 
/// Class that has everything pertaining to a world. A physics space, a visual scenario and a sound space. Node3D nodes register their resources into the current world.
open class World3D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_World3D }

    static var _method_get_space_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_map_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_scenario_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_environment_4143518816: GDExtensionMethodBindPtr! = nil
    static var _method_get_environment_3082064660: GDExtensionMethodBindPtr! = nil
    static var _method_set_fallback_environment_4143518816: GDExtensionMethodBindPtr! = nil
    static var _method_get_fallback_environment_3082064660: GDExtensionMethodBindPtr! = nil
    static var _method_set_camera_attributes_2817810567: GDExtensionMethodBindPtr! = nil
    static var _method_get_camera_attributes_3921283215: GDExtensionMethodBindPtr! = nil
    static var _method_get_direct_space_state_2069328350: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_World3D = StringName(from: "World3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_space_2944877500_name = StringName(from: "get_space")
        self._method_get_space_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_World3D._native_ptr(), _method_get_space_2944877500_name._native_ptr(), 2944877500)
        assert(World3D._method_get_space_2944877500 != nil)
        let _method_get_navigation_map_2944877500_name = StringName(from: "get_navigation_map")
        self._method_get_navigation_map_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_World3D._native_ptr(), _method_get_navigation_map_2944877500_name._native_ptr(), 2944877500)
        assert(World3D._method_get_navigation_map_2944877500 != nil)
        let _method_get_scenario_2944877500_name = StringName(from: "get_scenario")
        self._method_get_scenario_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_World3D._native_ptr(), _method_get_scenario_2944877500_name._native_ptr(), 2944877500)
        assert(World3D._method_get_scenario_2944877500 != nil)
        let _method_set_environment_4143518816_name = StringName(from: "set_environment")
        self._method_set_environment_4143518816 = self.interface.pointee.classdb_get_method_bind(__godot_name_World3D._native_ptr(), _method_set_environment_4143518816_name._native_ptr(), 4143518816)
        assert(World3D._method_set_environment_4143518816 != nil)
        let _method_get_environment_3082064660_name = StringName(from: "get_environment")
        self._method_get_environment_3082064660 = self.interface.pointee.classdb_get_method_bind(__godot_name_World3D._native_ptr(), _method_get_environment_3082064660_name._native_ptr(), 3082064660)
        assert(World3D._method_get_environment_3082064660 != nil)
        let _method_set_fallback_environment_4143518816_name = StringName(from: "set_fallback_environment")
        self._method_set_fallback_environment_4143518816 = self.interface.pointee.classdb_get_method_bind(__godot_name_World3D._native_ptr(), _method_set_fallback_environment_4143518816_name._native_ptr(), 4143518816)
        assert(World3D._method_set_fallback_environment_4143518816 != nil)
        let _method_get_fallback_environment_3082064660_name = StringName(from: "get_fallback_environment")
        self._method_get_fallback_environment_3082064660 = self.interface.pointee.classdb_get_method_bind(__godot_name_World3D._native_ptr(), _method_get_fallback_environment_3082064660_name._native_ptr(), 3082064660)
        assert(World3D._method_get_fallback_environment_3082064660 != nil)
        let _method_set_camera_attributes_2817810567_name = StringName(from: "set_camera_attributes")
        self._method_set_camera_attributes_2817810567 = self.interface.pointee.classdb_get_method_bind(__godot_name_World3D._native_ptr(), _method_set_camera_attributes_2817810567_name._native_ptr(), 2817810567)
        assert(World3D._method_set_camera_attributes_2817810567 != nil)
        let _method_get_camera_attributes_3921283215_name = StringName(from: "get_camera_attributes")
        self._method_get_camera_attributes_3921283215 = self.interface.pointee.classdb_get_method_bind(__godot_name_World3D._native_ptr(), _method_get_camera_attributes_3921283215_name._native_ptr(), 3921283215)
        assert(World3D._method_get_camera_attributes_3921283215 != nil)
        let _method_get_direct_space_state_2069328350_name = StringName(from: "get_direct_space_state")
        self._method_get_direct_space_state_2069328350 = self.interface.pointee.classdb_get_method_bind(__godot_name_World3D._native_ptr(), _method_get_direct_space_state_2069328350_name._native_ptr(), 2069328350)
        assert(World3D._method_get_direct_space_state_2069328350 != nil)
    }

    public func get_space() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_space_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func get_navigation_map() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_map_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func get_scenario() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scenario_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
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
            return Environment(godot: __resPtr.pointee)
    }
    public func set_fallback_environment(env: Environment)  {
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fallback_environment_4143518816,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_fallback_environment() -> Environment {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fallback_environment_3082064660,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment(godot: __resPtr.pointee)
    }
    public func set_camera_attributes(attributes: CameraAttributes)  {
        let attributes_native = attributes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(attributes_native)
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
            return CameraAttributes(godot: __resPtr.pointee)
    }
    public func get_direct_space_state() -> PhysicsDirectSpaceState3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_direct_space_state_2069328350,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsDirectSpaceState3D(godot: __resPtr.pointee)
    }
}