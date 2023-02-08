import godot_native

fileprivate var __godot_name_NavigationObstacle2D: StringName! = nil

/// 2D Obstacle used in navigation for collision avoidance.
/// 
/// 2D Obstacle used in navigation for collision avoidance. The obstacle needs navigation data to work correctly. [NavigationObstacle2D] is physics safe.
///  
/// Obstacles [b]don't[/b] change the resulting path from the pathfinding, they only affect the navigation agent movement in a radius. Therefore, using obstacles for the static walls in your level won't work because those walls don't exist in the pathfinding. The navigation agent will be pushed in a semi-random direction away while moving inside that radius. Obstacles are intended as a last resort option for constantly moving objects that cannot be (re)baked to a navigation mesh efficiently.
open class NavigationObstacle2D : Node {

    

    public override class var __godot_name: StringName { __godot_name_NavigationObstacle2D }

    static var _method_get_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_map_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_map_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_estimate_radius_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_radius_estimated_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_radius_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_NavigationObstacle2D = StringName(from: "NavigationObstacle2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_rid_2944877500_name = StringName(from: "get_rid")
        self._method_get_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationObstacle2D._native_ptr(), _method_get_rid_2944877500_name._native_ptr(), 2944877500)
        assert(NavigationObstacle2D._method_get_rid_2944877500 != nil)
        let _method_set_navigation_map_2722037293_name = StringName(from: "set_navigation_map")
        self._method_set_navigation_map_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationObstacle2D._native_ptr(), _method_set_navigation_map_2722037293_name._native_ptr(), 2722037293)
        assert(NavigationObstacle2D._method_set_navigation_map_2722037293 != nil)
        let _method_get_navigation_map_2944877500_name = StringName(from: "get_navigation_map")
        self._method_get_navigation_map_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationObstacle2D._native_ptr(), _method_get_navigation_map_2944877500_name._native_ptr(), 2944877500)
        assert(NavigationObstacle2D._method_get_navigation_map_2944877500 != nil)
        let _method_set_estimate_radius_2586408642_name = StringName(from: "set_estimate_radius")
        self._method_set_estimate_radius_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationObstacle2D._native_ptr(), _method_set_estimate_radius_2586408642_name._native_ptr(), 2586408642)
        assert(NavigationObstacle2D._method_set_estimate_radius_2586408642 != nil)
        let _method_is_radius_estimated_36873697_name = StringName(from: "is_radius_estimated")
        self._method_is_radius_estimated_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationObstacle2D._native_ptr(), _method_is_radius_estimated_36873697_name._native_ptr(), 36873697)
        assert(NavigationObstacle2D._method_is_radius_estimated_36873697 != nil)
        let _method_set_radius_373806689_name = StringName(from: "set_radius")
        self._method_set_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationObstacle2D._native_ptr(), _method_set_radius_373806689_name._native_ptr(), 373806689)
        assert(NavigationObstacle2D._method_set_radius_373806689 != nil)
        let _method_get_radius_1740695150_name = StringName(from: "get_radius")
        self._method_get_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationObstacle2D._native_ptr(), _method_get_radius_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationObstacle2D._method_get_radius_1740695150 != nil)
    }

    public func get_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rid_2944877500,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_navigation_map_2722037293,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_map_2944877500,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_estimate_radius_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_radius_estimated_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_radius_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}