import godot_native

fileprivate var __godot_name_World3D: StringName! = nil

/// Class that has everything pertaining to a world.
/// 
/// Class that has everything pertaining to a world. A physics space, a visual scenario and a sound space. Node3D nodes register their resources into the current world.
open class World3D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_World3D }

    static var _method_get_space_2944877500: StringName! = nil
    static var _method_get_navigation_map_2944877500: StringName! = nil
    static var _method_get_scenario_2944877500: StringName! = nil
    static var _method_set_environment_4143518816: StringName! = nil
    static var _method_get_environment_3082064660: StringName! = nil
    static var _method_set_fallback_environment_4143518816: StringName! = nil
    static var _method_get_fallback_environment_3082064660: StringName! = nil
    static var _method_set_camera_attributes_2817810567: StringName! = nil
    static var _method_get_camera_attributes_3921283215: StringName! = nil
    static var _method_get_direct_space_state_2069328350: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_World3D == nil)
        __godot_name_World3D = StringName(from: "World3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_space_2944877500 = StringName(from: "get_space")
        assert(self._method_get_space_2944877500 != nil)
        self._method_get_navigation_map_2944877500 = StringName(from: "get_navigation_map")
        assert(self._method_get_navigation_map_2944877500 != nil)
        self._method_get_scenario_2944877500 = StringName(from: "get_scenario")
        assert(self._method_get_scenario_2944877500 != nil)
        self._method_set_environment_4143518816 = StringName(from: "set_environment")
        assert(self._method_set_environment_4143518816 != nil)
        self._method_get_environment_3082064660 = StringName(from: "get_environment")
        assert(self._method_get_environment_3082064660 != nil)
        self._method_set_fallback_environment_4143518816 = StringName(from: "set_fallback_environment")
        assert(self._method_set_fallback_environment_4143518816 != nil)
        self._method_get_fallback_environment_3082064660 = StringName(from: "get_fallback_environment")
        assert(self._method_get_fallback_environment_3082064660 != nil)
        self._method_set_camera_attributes_2817810567 = StringName(from: "set_camera_attributes")
        assert(self._method_set_camera_attributes_2817810567 != nil)
        self._method_get_camera_attributes_3921283215 = StringName(from: "get_camera_attributes")
        assert(self._method_get_camera_attributes_3921283215 != nil)
        self._method_get_direct_space_state_2069328350 = StringName(from: "get_direct_space_state")
        assert(self._method_get_direct_space_state_2069328350 != nil)
    }

    public func get_space() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_space_2944877500._native_ptr(),
                    2944877500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_navigation_map_2944877500._native_ptr(),
                    2944877500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scenario_2944877500._native_ptr(),
                    2944877500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
    public func set_fallback_environment(env: Environment)  {
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fallback_environment_4143518816._native_ptr(),
                    4143518816)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fallback_environment_3082064660._native_ptr(),
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
    public func set_camera_attributes(attributes: CameraAttributes)  {
        let attributes_native = attributes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(attributes_native)
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
    public func get_direct_space_state() -> PhysicsDirectSpaceState3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_direct_space_state_2069328350._native_ptr(),
                    2069328350)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsDirectSpaceState3D(godot: __resPtr.pointee)
    }
}