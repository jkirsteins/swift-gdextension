import godot_native

fileprivate var __godot_name_VoxelGI: StringName! = nil

/// Real-time global illumination (GI) probe.
/// 
/// [VoxelGI]s are used to provide high-quality real-time indirect light and reflections to scenes. They precompute the effect of objects that emit light and the effect of static geometry to simulate the behavior of complex light in real-time. [VoxelGI]s need to be baked before having a visible effect. However, once baked, dynamic objects will receive light from them. Furthermore, lights can be fully dynamic or baked.
///  
/// [b]Procedural generation:[/b] [VoxelGI] can be baked in an exported project, which makes it suitable for procedurally generated or user-built levels as long as all the geometry is generated in advance. For games where geometry is generated at any time during gameplay, SDFGI is more suitable (see [member Environment.sdfgi_enabled]).
///  
/// [b]Performance:[/b] [VoxelGI] is relatively demanding on the GPU and is not suited to low-end hardware such as integrated graphics (consider [LightmapGI] instead). To improve performance, adjust [member ProjectSettings.rendering/global_illumination/voxel_gi/quality] and enable [member ProjectSettings.rendering/global_illumination/gi/use_half_resolution] in the Project Settings. To provide a fallback for low-end hardware, consider adding an option to disable [VoxelGI] in your project's options menus. A [VoxelGI] node can be disabled by hiding it.
///  
/// [b]Note:[/b] Meshes should have sufficiently thick walls to avoid light leaks (avoid one-sided walls). For interior levels, enclose your level geometry in a sufficiently large box and bridge the loops to close the mesh. To further prevent light leaks, you can also strategically place temporary [MeshInstance3D] nodes with their [member GeometryInstance3D.gi_mode] set to [constant GeometryInstance3D.GI_MODE_STATIC]. These temporary nodes can then be hidden after baking the [VoxelGI] node.
open class VoxelGI : VisualInstance3D {

    public enum Subdiv : Int32 {
        case SUBDIV_64 = 0
        case SUBDIV_128 = 1
        case SUBDIV_256 = 2
        case SUBDIV_512 = 3
        case SUBDIV_MAX = 4
    }

    public override class var __godot_name: StringName { __godot_name_VoxelGI }

    static var _method_set_probe_data_1637849675: GDExtensionMethodBindPtr! = nil
    static var _method_get_probe_data_1730645405: GDExtensionMethodBindPtr! = nil
    static var _method_set_subdiv_2240898472: GDExtensionMethodBindPtr! = nil
    static var _method_get_subdiv_4261647950: GDExtensionMethodBindPtr! = nil
    static var _method_set_size_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_camera_attributes_2817810567: GDExtensionMethodBindPtr! = nil
    static var _method_get_camera_attributes_3921283215: GDExtensionMethodBindPtr! = nil
    static var _method_bake_2781551026: GDExtensionMethodBindPtr! = nil
    static var _method_debug_bake_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_VoxelGI = StringName(from: "VoxelGI")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_probe_data_1637849675_name = StringName(from: "set_probe_data")
        self._method_set_probe_data_1637849675 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGI._native_ptr(), _method_set_probe_data_1637849675_name._native_ptr(), 1637849675)
        assert(VoxelGI._method_set_probe_data_1637849675 != nil)
        let _method_get_probe_data_1730645405_name = StringName(from: "get_probe_data")
        self._method_get_probe_data_1730645405 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGI._native_ptr(), _method_get_probe_data_1730645405_name._native_ptr(), 1730645405)
        assert(VoxelGI._method_get_probe_data_1730645405 != nil)
        let _method_set_subdiv_2240898472_name = StringName(from: "set_subdiv")
        self._method_set_subdiv_2240898472 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGI._native_ptr(), _method_set_subdiv_2240898472_name._native_ptr(), 2240898472)
        assert(VoxelGI._method_set_subdiv_2240898472 != nil)
        let _method_get_subdiv_4261647950_name = StringName(from: "get_subdiv")
        self._method_get_subdiv_4261647950 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGI._native_ptr(), _method_get_subdiv_4261647950_name._native_ptr(), 4261647950)
        assert(VoxelGI._method_get_subdiv_4261647950 != nil)
        let _method_set_size_3460891852_name = StringName(from: "set_size")
        self._method_set_size_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGI._native_ptr(), _method_set_size_3460891852_name._native_ptr(), 3460891852)
        assert(VoxelGI._method_set_size_3460891852 != nil)
        let _method_get_size_3360562783_name = StringName(from: "get_size")
        self._method_get_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGI._native_ptr(), _method_get_size_3360562783_name._native_ptr(), 3360562783)
        assert(VoxelGI._method_get_size_3360562783 != nil)
        let _method_set_camera_attributes_2817810567_name = StringName(from: "set_camera_attributes")
        self._method_set_camera_attributes_2817810567 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGI._native_ptr(), _method_set_camera_attributes_2817810567_name._native_ptr(), 2817810567)
        assert(VoxelGI._method_set_camera_attributes_2817810567 != nil)
        let _method_get_camera_attributes_3921283215_name = StringName(from: "get_camera_attributes")
        self._method_get_camera_attributes_3921283215 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGI._native_ptr(), _method_get_camera_attributes_3921283215_name._native_ptr(), 3921283215)
        assert(VoxelGI._method_get_camera_attributes_3921283215 != nil)
        let _method_bake_2781551026_name = StringName(from: "bake")
        self._method_bake_2781551026 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGI._native_ptr(), _method_bake_2781551026_name._native_ptr(), 2781551026)
        assert(VoxelGI._method_bake_2781551026 != nil)
        let _method_debug_bake_3218959716_name = StringName(from: "debug_bake")
        self._method_debug_bake_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_VoxelGI._native_ptr(), _method_debug_bake_3218959716_name._native_ptr(), 3218959716)
        assert(VoxelGI._method_debug_bake_3218959716 != nil)
    }

    public func set_probe_data(data: VoxelGIData)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_probe_data_1637849675,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_probe_data() -> VoxelGIData {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_probe_data_1730645405,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VoxelGIData(godot: __resPtr.pointee)
    }
    public func set_subdiv(subdiv: VoxelGI.Subdiv)  {
        withUnsafePointer(to: subdiv.rawValue) { subdiv_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subdiv_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_subdiv_2240898472,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_subdiv() -> VoxelGI.Subdiv {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subdiv_4261647950,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return VoxelGI.Subdiv(godot: __resPtr.pointee)
    }
    public func set_size(size: Vector3)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_size_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_size() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_size_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
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
            return CameraAttributes(godot: __resPtr.pointee)
    }
    public func bake(from_node: Node, create_visual_debug: UInt8)  {
        withUnsafePointer(to: create_visual_debug) { create_visual_debug_native in
        let from_node_native = from_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_node_native), .init(create_visual_debug_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bake_2781551026,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func debug_bake()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_debug_bake_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}