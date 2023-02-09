import godot_native

fileprivate var __godot_name_GLTFState: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GLTFState : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFState }

    static var _method_add_used_extension_2678287736: StringName! = nil
    static var _method_get_json_2382534195: StringName! = nil
    static var _method_set_json_4155329257: StringName! = nil
    static var _method_get_major_version_2455072627: StringName! = nil
    static var _method_set_major_version_1286410249: StringName! = nil
    static var _method_get_minor_version_2455072627: StringName! = nil
    static var _method_set_minor_version_1286410249: StringName! = nil
    static var _method_get_glb_data_2115431945: StringName! = nil
    static var _method_set_glb_data_2971499966: StringName! = nil
    static var _method_get_use_named_skin_binds_2240911060: StringName! = nil
    static var _method_set_use_named_skin_binds_2586408642: StringName! = nil
    static var _method_get_nodes_2915620761: StringName! = nil
    static var _method_set_nodes_381264803: StringName! = nil
    static var _method_get_buffers_2915620761: StringName! = nil
    static var _method_set_buffers_381264803: StringName! = nil
    static var _method_get_buffer_views_2915620761: StringName! = nil
    static var _method_set_buffer_views_381264803: StringName! = nil
    static var _method_get_accessors_2915620761: StringName! = nil
    static var _method_set_accessors_381264803: StringName! = nil
    static var _method_get_meshes_2915620761: StringName! = nil
    static var _method_set_meshes_381264803: StringName! = nil
    static var _method_get_animation_players_count_3744713108: StringName! = nil
    static var _method_get_animation_player_925043400: StringName! = nil
    static var _method_get_materials_2915620761: StringName! = nil
    static var _method_set_materials_381264803: StringName! = nil
    static var _method_get_scene_name_2841200299: StringName! = nil
    static var _method_set_scene_name_83702148: StringName! = nil
    static var _method_get_base_path_2841200299: StringName! = nil
    static var _method_set_base_path_83702148: StringName! = nil
    static var _method_get_root_nodes_969006518: StringName! = nil
    static var _method_set_root_nodes_3614634198: StringName! = nil
    static var _method_get_textures_2915620761: StringName! = nil
    static var _method_set_textures_381264803: StringName! = nil
    static var _method_get_texture_samplers_2915620761: StringName! = nil
    static var _method_set_texture_samplers_381264803: StringName! = nil
    static var _method_get_images_2915620761: StringName! = nil
    static var _method_set_images_381264803: StringName! = nil
    static var _method_get_skins_2915620761: StringName! = nil
    static var _method_set_skins_381264803: StringName! = nil
    static var _method_get_cameras_2915620761: StringName! = nil
    static var _method_set_cameras_381264803: StringName! = nil
    static var _method_get_lights_2915620761: StringName! = nil
    static var _method_set_lights_381264803: StringName! = nil
    static var _method_get_unique_names_2915620761: StringName! = nil
    static var _method_set_unique_names_381264803: StringName! = nil
    static var _method_get_unique_animation_names_2915620761: StringName! = nil
    static var _method_set_unique_animation_names_381264803: StringName! = nil
    static var _method_get_skeletons_2915620761: StringName! = nil
    static var _method_set_skeletons_381264803: StringName! = nil
    static var _method_get_skeleton_to_node_2382534195: StringName! = nil
    static var _method_set_skeleton_to_node_4155329257: StringName! = nil
    static var _method_get_create_animations_2240911060: StringName! = nil
    static var _method_set_create_animations_2586408642: StringName! = nil
    static var _method_get_animations_2915620761: StringName! = nil
    static var _method_set_animations_381264803: StringName! = nil
    static var _method_get_scene_node_4253421667: StringName! = nil
    static var _method_get_additional_data_2138907829: StringName! = nil
    static var _method_set_additional_data_3776071444: StringName! = nil
    static var _method_get_handle_binary_image_2455072627: StringName! = nil
    static var _method_set_handle_binary_image_1286410249: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GLTFState == nil)
        __godot_name_GLTFState = StringName(from: "GLTFState")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_used_extension_2678287736 = StringName(from: "add_used_extension")
        assert(self._method_add_used_extension_2678287736 != nil)
        self._method_get_json_2382534195 = StringName(from: "get_json")
        assert(self._method_get_json_2382534195 != nil)
        self._method_set_json_4155329257 = StringName(from: "set_json")
        assert(self._method_set_json_4155329257 != nil)
        self._method_get_major_version_2455072627 = StringName(from: "get_major_version")
        assert(self._method_get_major_version_2455072627 != nil)
        self._method_set_major_version_1286410249 = StringName(from: "set_major_version")
        assert(self._method_set_major_version_1286410249 != nil)
        self._method_get_minor_version_2455072627 = StringName(from: "get_minor_version")
        assert(self._method_get_minor_version_2455072627 != nil)
        self._method_set_minor_version_1286410249 = StringName(from: "set_minor_version")
        assert(self._method_set_minor_version_1286410249 != nil)
        self._method_get_glb_data_2115431945 = StringName(from: "get_glb_data")
        assert(self._method_get_glb_data_2115431945 != nil)
        self._method_set_glb_data_2971499966 = StringName(from: "set_glb_data")
        assert(self._method_set_glb_data_2971499966 != nil)
        self._method_get_use_named_skin_binds_2240911060 = StringName(from: "get_use_named_skin_binds")
        assert(self._method_get_use_named_skin_binds_2240911060 != nil)
        self._method_set_use_named_skin_binds_2586408642 = StringName(from: "set_use_named_skin_binds")
        assert(self._method_set_use_named_skin_binds_2586408642 != nil)
        self._method_get_nodes_2915620761 = StringName(from: "get_nodes")
        assert(self._method_get_nodes_2915620761 != nil)
        self._method_set_nodes_381264803 = StringName(from: "set_nodes")
        assert(self._method_set_nodes_381264803 != nil)
        self._method_get_buffers_2915620761 = StringName(from: "get_buffers")
        assert(self._method_get_buffers_2915620761 != nil)
        self._method_set_buffers_381264803 = StringName(from: "set_buffers")
        assert(self._method_set_buffers_381264803 != nil)
        self._method_get_buffer_views_2915620761 = StringName(from: "get_buffer_views")
        assert(self._method_get_buffer_views_2915620761 != nil)
        self._method_set_buffer_views_381264803 = StringName(from: "set_buffer_views")
        assert(self._method_set_buffer_views_381264803 != nil)
        self._method_get_accessors_2915620761 = StringName(from: "get_accessors")
        assert(self._method_get_accessors_2915620761 != nil)
        self._method_set_accessors_381264803 = StringName(from: "set_accessors")
        assert(self._method_set_accessors_381264803 != nil)
        self._method_get_meshes_2915620761 = StringName(from: "get_meshes")
        assert(self._method_get_meshes_2915620761 != nil)
        self._method_set_meshes_381264803 = StringName(from: "set_meshes")
        assert(self._method_set_meshes_381264803 != nil)
        self._method_get_animation_players_count_3744713108 = StringName(from: "get_animation_players_count")
        assert(self._method_get_animation_players_count_3744713108 != nil)
        self._method_get_animation_player_925043400 = StringName(from: "get_animation_player")
        assert(self._method_get_animation_player_925043400 != nil)
        self._method_get_materials_2915620761 = StringName(from: "get_materials")
        assert(self._method_get_materials_2915620761 != nil)
        self._method_set_materials_381264803 = StringName(from: "set_materials")
        assert(self._method_set_materials_381264803 != nil)
        self._method_get_scene_name_2841200299 = StringName(from: "get_scene_name")
        assert(self._method_get_scene_name_2841200299 != nil)
        self._method_set_scene_name_83702148 = StringName(from: "set_scene_name")
        assert(self._method_set_scene_name_83702148 != nil)
        self._method_get_base_path_2841200299 = StringName(from: "get_base_path")
        assert(self._method_get_base_path_2841200299 != nil)
        self._method_set_base_path_83702148 = StringName(from: "set_base_path")
        assert(self._method_set_base_path_83702148 != nil)
        self._method_get_root_nodes_969006518 = StringName(from: "get_root_nodes")
        assert(self._method_get_root_nodes_969006518 != nil)
        self._method_set_root_nodes_3614634198 = StringName(from: "set_root_nodes")
        assert(self._method_set_root_nodes_3614634198 != nil)
        self._method_get_textures_2915620761 = StringName(from: "get_textures")
        assert(self._method_get_textures_2915620761 != nil)
        self._method_set_textures_381264803 = StringName(from: "set_textures")
        assert(self._method_set_textures_381264803 != nil)
        self._method_get_texture_samplers_2915620761 = StringName(from: "get_texture_samplers")
        assert(self._method_get_texture_samplers_2915620761 != nil)
        self._method_set_texture_samplers_381264803 = StringName(from: "set_texture_samplers")
        assert(self._method_set_texture_samplers_381264803 != nil)
        self._method_get_images_2915620761 = StringName(from: "get_images")
        assert(self._method_get_images_2915620761 != nil)
        self._method_set_images_381264803 = StringName(from: "set_images")
        assert(self._method_set_images_381264803 != nil)
        self._method_get_skins_2915620761 = StringName(from: "get_skins")
        assert(self._method_get_skins_2915620761 != nil)
        self._method_set_skins_381264803 = StringName(from: "set_skins")
        assert(self._method_set_skins_381264803 != nil)
        self._method_get_cameras_2915620761 = StringName(from: "get_cameras")
        assert(self._method_get_cameras_2915620761 != nil)
        self._method_set_cameras_381264803 = StringName(from: "set_cameras")
        assert(self._method_set_cameras_381264803 != nil)
        self._method_get_lights_2915620761 = StringName(from: "get_lights")
        assert(self._method_get_lights_2915620761 != nil)
        self._method_set_lights_381264803 = StringName(from: "set_lights")
        assert(self._method_set_lights_381264803 != nil)
        self._method_get_unique_names_2915620761 = StringName(from: "get_unique_names")
        assert(self._method_get_unique_names_2915620761 != nil)
        self._method_set_unique_names_381264803 = StringName(from: "set_unique_names")
        assert(self._method_set_unique_names_381264803 != nil)
        self._method_get_unique_animation_names_2915620761 = StringName(from: "get_unique_animation_names")
        assert(self._method_get_unique_animation_names_2915620761 != nil)
        self._method_set_unique_animation_names_381264803 = StringName(from: "set_unique_animation_names")
        assert(self._method_set_unique_animation_names_381264803 != nil)
        self._method_get_skeletons_2915620761 = StringName(from: "get_skeletons")
        assert(self._method_get_skeletons_2915620761 != nil)
        self._method_set_skeletons_381264803 = StringName(from: "set_skeletons")
        assert(self._method_set_skeletons_381264803 != nil)
        self._method_get_skeleton_to_node_2382534195 = StringName(from: "get_skeleton_to_node")
        assert(self._method_get_skeleton_to_node_2382534195 != nil)
        self._method_set_skeleton_to_node_4155329257 = StringName(from: "set_skeleton_to_node")
        assert(self._method_set_skeleton_to_node_4155329257 != nil)
        self._method_get_create_animations_2240911060 = StringName(from: "get_create_animations")
        assert(self._method_get_create_animations_2240911060 != nil)
        self._method_set_create_animations_2586408642 = StringName(from: "set_create_animations")
        assert(self._method_set_create_animations_2586408642 != nil)
        self._method_get_animations_2915620761 = StringName(from: "get_animations")
        assert(self._method_get_animations_2915620761 != nil)
        self._method_set_animations_381264803 = StringName(from: "set_animations")
        assert(self._method_set_animations_381264803 != nil)
        self._method_get_scene_node_4253421667 = StringName(from: "get_scene_node")
        assert(self._method_get_scene_node_4253421667 != nil)
        self._method_get_additional_data_2138907829 = StringName(from: "get_additional_data")
        assert(self._method_get_additional_data_2138907829 != nil)
        self._method_set_additional_data_3776071444 = StringName(from: "set_additional_data")
        assert(self._method_set_additional_data_3776071444 != nil)
        self._method_get_handle_binary_image_2455072627 = StringName(from: "get_handle_binary_image")
        assert(self._method_get_handle_binary_image_2455072627 != nil)
        self._method_set_handle_binary_image_1286410249 = StringName(from: "set_handle_binary_image")
        assert(self._method_set_handle_binary_image_1286410249 != nil)
    }

    public func add_used_extension(extension_name: godot.String, required: UInt8)  {
        withUnsafePointer(to: required) { required_native in
        let extension_name_native = extension_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extension_name_native), .init(required_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_used_extension_2678287736._native_ptr(),
                    2678287736)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_json() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_json_2382534195._native_ptr(),
                    2382534195)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func set_json(json: Dictionary)  {
        let json_native = json._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(json_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_json_4155329257._native_ptr(),
                    4155329257)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_major_version() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_major_version_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_major_version(major_version: Int64)  {
        withUnsafePointer(to: major_version) { major_version_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(major_version_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_major_version_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_minor_version() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_minor_version_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_minor_version(minor_version: Int64)  {
        withUnsafePointer(to: minor_version) { minor_version_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(minor_version_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_minor_version_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_glb_data() -> PackedByteArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glb_data_2115431945._native_ptr(),
                    2115431945)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func set_glb_data(glb_data: PackedByteArray)  {
        let glb_data_native = glb_data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(glb_data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glb_data_2971499966._native_ptr(),
                    2971499966)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_use_named_skin_binds() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_use_named_skin_binds_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_use_named_skin_binds(use_named_skin_binds: UInt8)  {
        withUnsafePointer(to: use_named_skin_binds) { use_named_skin_binds_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_named_skin_binds_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_named_skin_binds_2586408642._native_ptr(),
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
    public func get_nodes() -> [GLTFNode] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_nodes_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [GLTFNode](godot: __resPtr.pointee)
    }
    public func set_nodes(nodes: [GLTFNode])  {
        let nodes_native = nodes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(nodes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_nodes_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_buffers() -> [PackedByteArray] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_buffers_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [PackedByteArray](godot: __resPtr.pointee)
    }
    public func set_buffers(buffers: [PackedByteArray])  {
        let buffers_native = buffers._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffers_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_buffers_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_buffer_views() -> [GLTFBufferView] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_buffer_views_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [GLTFBufferView](godot: __resPtr.pointee)
    }
    public func set_buffer_views(buffer_views: [GLTFBufferView])  {
        let buffer_views_native = buffer_views._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_views_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_buffer_views_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_accessors() -> [GLTFAccessor] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_accessors_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [GLTFAccessor](godot: __resPtr.pointee)
    }
    public func set_accessors(accessors: [GLTFAccessor])  {
        let accessors_native = accessors._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(accessors_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_accessors_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_meshes() -> [GLTFMesh] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_meshes_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [GLTFMesh](godot: __resPtr.pointee)
    }
    public func set_meshes(meshes: [GLTFMesh])  {
        let meshes_native = meshes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(meshes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_meshes_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_animation_players_count(idx: Int64) -> Int64 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_animation_players_count_3744713108._native_ptr(),
                    3744713108)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_animation_player(idx: Int64) -> AnimationPlayer {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_animation_player_925043400._native_ptr(),
                    925043400)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationPlayer(godot: __resPtr.pointee)
        }
    }
    public func get_materials() -> [Material] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_materials_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Material](godot: __resPtr.pointee)
    }
    public func set_materials(materials: [Material])  {
        let materials_native = materials._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(materials_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_materials_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scene_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scene_name_2841200299._native_ptr(),
                    2841200299)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_scene_name(scene_name: godot.String)  {
        let scene_name_native = scene_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scene_name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_scene_name_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_base_path() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_base_path_2841200299._native_ptr(),
                    2841200299)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func set_base_path(base_path: godot.String)  {
        let base_path_native = base_path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_path_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_base_path_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_root_nodes() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_root_nodes_969006518._native_ptr(),
                    969006518)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func set_root_nodes(root_nodes: PackedInt32Array)  {
        let root_nodes_native = root_nodes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(root_nodes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_root_nodes_3614634198._native_ptr(),
                    3614634198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_textures() -> [GLTFTexture] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_textures_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [GLTFTexture](godot: __resPtr.pointee)
    }
    public func set_textures(textures: [GLTFTexture])  {
        let textures_native = textures._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(textures_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_textures_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture_samplers() -> [GLTFTextureSampler] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_samplers_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [GLTFTextureSampler](godot: __resPtr.pointee)
    }
    public func set_texture_samplers(texture_samplers: [GLTFTextureSampler])  {
        let texture_samplers_native = texture_samplers._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_samplers_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_samplers_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_images() -> [Texture2D] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_images_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Texture2D](godot: __resPtr.pointee)
    }
    public func set_images(images: [Texture2D])  {
        let images_native = images._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(images_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_images_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skins() -> [GLTFSkin] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_skins_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [GLTFSkin](godot: __resPtr.pointee)
    }
    public func set_skins(skins: [GLTFSkin])  {
        let skins_native = skins._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skins_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_skins_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_cameras() -> [GLTFCamera] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cameras_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [GLTFCamera](godot: __resPtr.pointee)
    }
    public func set_cameras(cameras: [GLTFCamera])  {
        let cameras_native = cameras._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cameras_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cameras_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_lights() -> [GLTFLight] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_lights_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [GLTFLight](godot: __resPtr.pointee)
    }
    public func set_lights(lights: [GLTFLight])  {
        let lights_native = lights._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lights_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_lights_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_unique_names() -> [godot.String] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_unique_names_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [godot.String](godot: __resPtr.pointee)
    }
    public func set_unique_names(unique_names: [godot.String])  {
        let unique_names_native = unique_names._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unique_names_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_unique_names_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_unique_animation_names() -> [godot.String] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_unique_animation_names_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [godot.String](godot: __resPtr.pointee)
    }
    public func set_unique_animation_names(unique_animation_names: [godot.String])  {
        let unique_animation_names_native = unique_animation_names._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unique_animation_names_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_unique_animation_names_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skeletons() -> [GLTFSkeleton] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_skeletons_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [GLTFSkeleton](godot: __resPtr.pointee)
    }
    public func set_skeletons(skeletons: [GLTFSkeleton])  {
        let skeletons_native = skeletons._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeletons_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_skeletons_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skeleton_to_node() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_skeleton_to_node_2382534195._native_ptr(),
                    2382534195)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func set_skeleton_to_node(skeleton_to_node: Dictionary)  {
        let skeleton_to_node_native = skeleton_to_node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_to_node_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_skeleton_to_node_4155329257._native_ptr(),
                    4155329257)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_create_animations() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_create_animations_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_create_animations(create_animations: UInt8)  {
        withUnsafePointer(to: create_animations) { create_animations_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(create_animations_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_create_animations_2586408642._native_ptr(),
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
    public func get_animations() -> [GLTFAnimation] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_animations_2915620761._native_ptr(),
                    2915620761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [GLTFAnimation](godot: __resPtr.pointee)
    }
    public func set_animations(animations: [GLTFAnimation])  {
        let animations_native = animations._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(animations_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_animations_381264803._native_ptr(),
                    381264803)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scene_node(idx: Int64) -> Node {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scene_node_4253421667._native_ptr(),
                    4253421667)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Node(godot: __resPtr.pointee)
        }
    }
    public func get_additional_data(extension_name: StringName) -> Variant {
        let extension_name_native = extension_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extension_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_additional_data_2138907829._native_ptr(),
                    2138907829)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func set_additional_data(extension_name: StringName, additional_data: Variant)  {
        let additional_data_native = additional_data._native_ptr()
        let extension_name_native = extension_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extension_name_native), .init(additional_data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_additional_data_3776071444._native_ptr(),
                    3776071444)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_handle_binary_image() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_handle_binary_image_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_handle_binary_image(method: Int64)  {
        withUnsafePointer(to: method) { method_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_handle_binary_image_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}