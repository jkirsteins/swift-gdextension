import godot_native

fileprivate var __godot_name_NavigationRegion3D: StringName! = nil

/// A region of the navigation map.
/// 
/// A region of the navigation map. It tells the [NavigationServer3D] what can be navigated and what cannot, based on its [NavigationMesh] resource.
///  
/// Two regions can be connected to each other if they share a similar edge. You can set the minimum distance between two vertices required to connect two edges by using [method NavigationServer3D.map_set_edge_connection_margin].
///  
/// [b]Note:[/b] Overlapping two regions' navigation meshes is not enough for connecting two regions. They must share a similar edge.
///  
/// The cost of entering this region from another region can be controlled with the [member enter_cost] value.
///  
/// [b]Note:[/b] This value is not added to the path cost when the start position is already inside this region.
///  
/// The cost of traveling distances inside this region can be controlled with the [member travel_cost] multiplier.
///  
/// [b]Note:[/b] This node caches changes to its properties, so if you make changes to the underlying region [RID] in [NavigationServer3D], they will not be reflected in this node's properties.
public class NavigationRegion3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_NavigationRegion3D }

    static var _method_set_navigation_mesh_2923361153: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_mesh_1468720886: GDExtensionMethodBindPtr! = nil
    static var _method_set_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_layers_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_layers_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_navigation_layer_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_navigation_layer_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_get_region_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_set_enter_cost_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_enter_cost_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_travel_cost_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_travel_cost_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_bake_navigation_mesh_3216645846: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_NavigationRegion3D = StringName(from: "NavigationRegion3D")

        let _method_set_navigation_mesh_2923361153_name = StringName(from: "set_navigation_mesh")
        self._method_set_navigation_mesh_2923361153 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_navigation_mesh_2923361153_name._native_ptr(), 2923361153)
        assert(NavigationRegion3D._method_set_navigation_mesh_2923361153 != nil)
        let _method_get_navigation_mesh_1468720886_name = StringName(from: "get_navigation_mesh")
        self._method_get_navigation_mesh_1468720886 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_navigation_mesh_1468720886_name._native_ptr(), 1468720886)
        assert(NavigationRegion3D._method_get_navigation_mesh_1468720886 != nil)
        let _method_set_enabled_2586408642_name = StringName(from: "set_enabled")
        self._method_set_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(NavigationRegion3D._method_set_enabled_2586408642 != nil)
        let _method_is_enabled_36873697_name = StringName(from: "is_enabled")
        self._method_is_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_enabled_36873697_name._native_ptr(), 36873697)
        assert(NavigationRegion3D._method_is_enabled_36873697 != nil)
        let _method_set_navigation_layers_1286410249_name = StringName(from: "set_navigation_layers")
        self._method_set_navigation_layers_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_navigation_layers_1286410249_name._native_ptr(), 1286410249)
        assert(NavigationRegion3D._method_set_navigation_layers_1286410249 != nil)
        let _method_get_navigation_layers_3905245786_name = StringName(from: "get_navigation_layers")
        self._method_get_navigation_layers_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_navigation_layers_3905245786_name._native_ptr(), 3905245786)
        assert(NavigationRegion3D._method_get_navigation_layers_3905245786 != nil)
        let _method_set_navigation_layer_value_300928843_name = StringName(from: "set_navigation_layer_value")
        self._method_set_navigation_layer_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_navigation_layer_value_300928843_name._native_ptr(), 300928843)
        assert(NavigationRegion3D._method_set_navigation_layer_value_300928843 != nil)
        let _method_get_navigation_layer_value_1116898809_name = StringName(from: "get_navigation_layer_value")
        self._method_get_navigation_layer_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_navigation_layer_value_1116898809_name._native_ptr(), 1116898809)
        assert(NavigationRegion3D._method_get_navigation_layer_value_1116898809 != nil)
        let _method_get_region_rid_2944877500_name = StringName(from: "get_region_rid")
        self._method_get_region_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_region_rid_2944877500_name._native_ptr(), 2944877500)
        assert(NavigationRegion3D._method_get_region_rid_2944877500 != nil)
        let _method_set_enter_cost_373806689_name = StringName(from: "set_enter_cost")
        self._method_set_enter_cost_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enter_cost_373806689_name._native_ptr(), 373806689)
        assert(NavigationRegion3D._method_set_enter_cost_373806689 != nil)
        let _method_get_enter_cost_1740695150_name = StringName(from: "get_enter_cost")
        self._method_get_enter_cost_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enter_cost_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationRegion3D._method_get_enter_cost_1740695150 != nil)
        let _method_set_travel_cost_373806689_name = StringName(from: "set_travel_cost")
        self._method_set_travel_cost_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_travel_cost_373806689_name._native_ptr(), 373806689)
        assert(NavigationRegion3D._method_set_travel_cost_373806689 != nil)
        let _method_get_travel_cost_1740695150_name = StringName(from: "get_travel_cost")
        self._method_get_travel_cost_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_travel_cost_1740695150_name._native_ptr(), 1740695150)
        assert(NavigationRegion3D._method_get_travel_cost_1740695150 != nil)
        let _method_bake_navigation_mesh_3216645846_name = StringName(from: "bake_navigation_mesh")
        self._method_bake_navigation_mesh_3216645846 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_bake_navigation_mesh_3216645846_name._native_ptr(), 3216645846)
        assert(NavigationRegion3D._method_bake_navigation_mesh_3216645846 != nil)
    }

    public func set_navigation_mesh(navigation_mesh: NavigationMesh)  {
        let navigation_mesh_native = navigation_mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(navigation_mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_navigation_mesh_2923361153,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_navigation_mesh() -> NavigationMesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_navigation_mesh_1468720886,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NavigationMesh(from: __resPtr.pointee)
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
            return UInt8(from: __resPtr.pointee)
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
            return Int64(from: __resPtr.pointee)
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
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_region_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_region_rid_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
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
            return Float64(from: __resPtr.pointee)
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
            return Float64(from: __resPtr.pointee)
    }
    public func bake_navigation_mesh(on_thread: UInt8)  {
        withUnsafePointer(to: on_thread) { on_thread_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(on_thread_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bake_navigation_mesh_3216645846,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}