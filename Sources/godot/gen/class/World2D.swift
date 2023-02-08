import godot_native

fileprivate var __godot_name_World2D: StringName! = nil

/// Class that has everything pertaining to a 2D world.
/// 
/// Class that has everything pertaining to a 2D world. A physics space, a visual scenario and a sound space. 2D nodes register their resources into the current 2D world.
open class World2D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_World2D }

    static var _method_get_canvas_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_space_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_map_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_direct_space_state_2506717822: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_World2D = StringName(from: "World2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_canvas_2944877500_name = StringName(from: "get_canvas")
        self._method_get_canvas_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_World2D._native_ptr(), _method_get_canvas_2944877500_name._native_ptr(), 2944877500)
        assert(World2D._method_get_canvas_2944877500 != nil)
        let _method_get_space_2944877500_name = StringName(from: "get_space")
        self._method_get_space_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_World2D._native_ptr(), _method_get_space_2944877500_name._native_ptr(), 2944877500)
        assert(World2D._method_get_space_2944877500 != nil)
        let _method_get_navigation_map_2944877500_name = StringName(from: "get_navigation_map")
        self._method_get_navigation_map_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_World2D._native_ptr(), _method_get_navigation_map_2944877500_name._native_ptr(), 2944877500)
        assert(World2D._method_get_navigation_map_2944877500 != nil)
        let _method_get_direct_space_state_2506717822_name = StringName(from: "get_direct_space_state")
        self._method_get_direct_space_state_2506717822 = self.interface.pointee.classdb_get_method_bind(__godot_name_World2D._native_ptr(), _method_get_direct_space_state_2506717822_name._native_ptr(), 2506717822)
        assert(World2D._method_get_direct_space_state_2506717822 != nil)
    }

    public func get_canvas() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_canvas_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
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
    public func get_direct_space_state() -> PhysicsDirectSpaceState2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_direct_space_state_2506717822,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsDirectSpaceState2D(godot: __resPtr.pointee)
    }
}