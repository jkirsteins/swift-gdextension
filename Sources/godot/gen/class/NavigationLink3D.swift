import godot_native

fileprivate var __godot_name_NavigationLink3D: StringName! = nil

/// Creates a link between two positions that [NavigationServer3D] can route agents through.
/// 
/// Creates a link between two positions that [NavigationServer3D] can route agents through.  Links can be used to express navigation methods that aren't just traveling along the surface of the navigation mesh, like zip-lines, teleporters, or jumping across gaps.
open class NavigationLink3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_NavigationLink3D }

    static var _method_set_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_bidirectional_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_bidirectional_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_layers_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_layers_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_layer_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_layer_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_start_position_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_start_position_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_end_position_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_end_position_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_enter_cost_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_enter_cost_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_travel_cost_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_travel_cost_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_NavigationLink3D = StringName(from: "NavigationLink3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_enabled_2586408642_name = StringName(from: "set_enabled")
        self._method_set_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_set_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(NavigationLink3D._method_set_enabled_2586408642 != nil)
        let _method_is_enabled_36873697_name = StringName(from: "is_enabled")
        self._method_is_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_is_enabled_36873697_name._native_ptr(), 36873697)
        assert(NavigationLink3D._method_is_enabled_36873697 != nil)
        let _method_set_bidirectional_2586408642_name = StringName(from: "set_bidirectional")
        self._method_set_bidirectional_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_set_bidirectional_2586408642_name._native_ptr(), 2586408642)
        assert(NavigationLink3D._method_set_bidirectional_2586408642 != nil)
        let _method_is_bidirectional_36873697_name = StringName(from: "is_bidirectional")
        self._method_is_bidirectional_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_is_bidirectional_36873697_name._native_ptr(), 36873697)
        assert(NavigationLink3D._method_is_bidirectional_36873697 != nil)
        let _method_set_navigation_layers_1286410249_name = StringName(from: "set_navigation_layers")
        self._method_set_navigation_layers_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_set_navigation_layers_1286410249_name._native_ptr(), 1286410249)
        assert(NavigationLink3D._method_set_navigation_layers_1286410249 != nil)
        let _method_get_navigation_layers_3905245786_name = StringName(from: "get_navigation_layers")
        self._method_get_navigation_layers_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_get_navigation_layers_3905245786_name._native_ptr(), 3905245786)
        assert(NavigationLink3D._method_get_navigation_layers_3905245786 != nil)
        let _method_set_navigation_layer_value_300928843_name = StringName(from: "set_navigation_layer_value")
        self._method_set_navigation_layer_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_set_navigation_layer_value_300928843_name._native_ptr(), 300928843)
        assert(NavigationLink3D._method_set_navigation_layer_value_300928843 != nil)
        let _method_get_navigation_layer_value_1116898809_name = StringName(from: "get_navigation_layer_value")
        self._method_get_navigation_layer_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_get_navigation_layer_value_1116898809_name._native_ptr(), 1116898809)
        assert(NavigationLink3D._method_get_navigation_layer_value_1116898809 != nil)
        let _method_set_start_position_3460891852_name = StringName(from: "set_start_position")
        self._method_set_start_position_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_set_start_position_3460891852_name._native_ptr(), 3460891852)
        assert(NavigationLink3D._method_set_start_position_3460891852 != nil)
        let _method_get_start_position_3360562783_name = StringName(from: "get_start_position")
        self._method_get_start_position_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_get_start_position_3360562783_name._native_ptr(), 3360562783)
        assert(NavigationLink3D._method_get_start_position_3360562783 != nil)
        let _method_set_end_position_3460891852_name = StringName(from: "set_end_position")
        self._method_set_end_position_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_set_end_position_3460891852_name._native_ptr(), 3460891852)
        assert(NavigationLink3D._method_set_end_position_3460891852 != nil)
        let _method_get_end_position_3360562783_name = StringName(from: "get_end_position")
        self._method_get_end_position_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_get_end_position_3360562783_name._native_ptr(), 3360562783)
        assert(NavigationLink3D._method_get_end_position_3360562783 != nil)
        let _method_set_enter_cost_373806689_name = StringName(from: "set_enter_cost")
        self._method_set_enter_cost_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_set_enter_cost_373806689_name._native_ptr(), 373806689)
        assert(NavigationLink3D._method_set_enter_cost_373806689 != nil)
        let _method_get_enter_cost_1740695150_name = StringName(from: "get_enter_cost")
        self._method_get_enter_cost_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_get_enter_cost_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationLink3D._method_get_enter_cost_1740695150 != nil)
        let _method_set_travel_cost_373806689_name = StringName(from: "set_travel_cost")
        self._method_set_travel_cost_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_set_travel_cost_373806689_name._native_ptr(), 373806689)
        assert(NavigationLink3D._method_set_travel_cost_373806689 != nil)
        let _method_get_travel_cost_1740695150_name = StringName(from: "get_travel_cost")
        self._method_get_travel_cost_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_NavigationLink3D._native_ptr(), _method_get_travel_cost_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationLink3D._method_get_travel_cost_1740695150 != nil)
    }

    public func set_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_bidirectional(bidirectional: UInt8)  {
        withUnsafePointer(to: bidirectional) { bidirectional_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bidirectional_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bidirectional_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_bidirectional() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_bidirectional_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_navigation_layers(navigation_layers: Int64)  {
        withUnsafePointer(to: navigation_layers) { navigation_layers_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(navigation_layers_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_navigation_layers_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_navigation_layers() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_layers_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_navigation_layer_value(layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_navigation_layer_value_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_navigation_layer_value(layer_number: Int64) -> UInt8 {
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_layer_value_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_start_position(position: Vector3)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_start_position_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_start_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_start_position_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_end_position(position: Vector3)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_end_position_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_end_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_end_position_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_enter_cost(enter_cost: Float64)  {
        withUnsafePointer(to: enter_cost) { enter_cost_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enter_cost_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enter_cost_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_enter_cost() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enter_cost_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_travel_cost(travel_cost: Float64)  {
        withUnsafePointer(to: travel_cost) { travel_cost_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(travel_cost_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_travel_cost_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_travel_cost() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_travel_cost_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}