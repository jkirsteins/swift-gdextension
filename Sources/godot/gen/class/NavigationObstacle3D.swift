import godot_native

fileprivate var __godot_name_NavigationObstacle3D: StringName! = nil

/// 3D Obstacle used in navigation for collision avoidance.
/// 
/// 3D Obstacle used in navigation for collision avoidance. The obstacle needs navigation data to work correctly. [NavigationObstacle3D] is physics safe.
///  
/// Obstacles [b]don't[/b] change the resulting path from the pathfinding, they only affect the navigation agent movement in a radius. Therefore, using obstacles for the static walls in your level won't work because those walls don't exist in the pathfinding. The navigation agent will be pushed in a semi-random direction away while moving inside that radius. Obstacles are intended as a last resort option for constantly moving objects that cannot be (re)baked to a navigation mesh efficiently.
open class NavigationObstacle3D : Node {

    

    public override class var __godot_name: StringName { __godot_name_NavigationObstacle3D }

    static var _method_get_rid_2944877500: StringName! = nil
    static var _method_set_navigation_map_2722037293: StringName! = nil
    static var _method_get_navigation_map_2944877500: StringName! = nil
    static var _method_set_estimate_radius_2586408642: StringName! = nil
    static var _method_is_radius_estimated_36873697: StringName! = nil
    static var _method_set_radius_373806689: StringName! = nil
    static var _method_get_radius_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_NavigationObstacle3D == nil)
        __godot_name_NavigationObstacle3D = StringName(from: "NavigationObstacle3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_rid_2944877500 = StringName(from: "get_rid")
        assert(self._method_get_rid_2944877500 != nil)
        self._method_set_navigation_map_2722037293 = StringName(from: "set_navigation_map")
        assert(self._method_set_navigation_map_2722037293 != nil)
        self._method_get_navigation_map_2944877500 = StringName(from: "get_navigation_map")
        assert(self._method_get_navigation_map_2944877500 != nil)
        self._method_set_estimate_radius_2586408642 = StringName(from: "set_estimate_radius")
        assert(self._method_set_estimate_radius_2586408642 != nil)
        self._method_is_radius_estimated_36873697 = StringName(from: "is_radius_estimated")
        assert(self._method_is_radius_estimated_36873697 != nil)
        self._method_set_radius_373806689 = StringName(from: "set_radius")
        assert(self._method_set_radius_373806689 != nil)
        self._method_get_radius_1740695150 = StringName(from: "get_radius")
        assert(self._method_get_radius_1740695150 != nil)
    }

    public func get_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_rid_2944877500._native_ptr(),
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
    public func set_navigation_map(navigation_map: RID)  {
        let navigation_map_native = navigation_map._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(navigation_map_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_navigation_map_2722037293._native_ptr(),
                    2722037293)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
    public func set_estimate_radius(estimate_radius: UInt8)  {
        withUnsafePointer(to: estimate_radius) { estimate_radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(estimate_radius_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_estimate_radius_2586408642._native_ptr(),
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
    public func is_radius_estimated() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_radius_estimated_36873697._native_ptr(),
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
    public func set_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_radius_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_radius_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}