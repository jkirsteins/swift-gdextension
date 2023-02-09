import godot_native

fileprivate var __godot_name_HeightMapShape3D: StringName! = nil

/// Height map shape resource for 3D physics.
/// 
/// Height map shape resource, which can be added to a [PhysicsBody3D] or [Area3D]. Heightmap collision is typically used for colliding with terrains. However, since heightmaps cannot store overhangs, collisions with other structures (such as buildings) must be done with other collision shapes such as [ConcavePolygonShape3D]. If needed, "holes" can be created in an [HeightMapShape3D] by assigning very low points (like [code]-100000[/code]) in the desired area.
///  
/// [b]Performance:[/b] [HeightMapShape3D] is faster to check collisions against compared to [ConcavePolygonShape3D], but it is slower than primitive collision shapes such as [SphereShape3D] or [BoxShape3D].
open class HeightMapShape3D : Shape3D {

    

    public override class var __godot_name: StringName { __godot_name_HeightMapShape3D }

    static var _method_set_map_width_1286410249: StringName! = nil
    static var _method_get_map_width_3905245786: StringName! = nil
    static var _method_set_map_depth_1286410249: StringName! = nil
    static var _method_get_map_depth_3905245786: StringName! = nil
    static var _method_set_map_data_2899603908: StringName! = nil
    static var _method_get_map_data_675695659: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_HeightMapShape3D == nil)
        __godot_name_HeightMapShape3D = StringName(from: "HeightMapShape3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_map_width_1286410249 = StringName(from: "set_map_width")
        assert(self._method_set_map_width_1286410249 != nil)
        self._method_get_map_width_3905245786 = StringName(from: "get_map_width")
        assert(self._method_get_map_width_3905245786 != nil)
        self._method_set_map_depth_1286410249 = StringName(from: "set_map_depth")
        assert(self._method_set_map_depth_1286410249 != nil)
        self._method_get_map_depth_3905245786 = StringName(from: "get_map_depth")
        assert(self._method_get_map_depth_3905245786 != nil)
        self._method_set_map_data_2899603908 = StringName(from: "set_map_data")
        assert(self._method_set_map_data_2899603908 != nil)
        self._method_get_map_data_675695659 = StringName(from: "get_map_data")
        assert(self._method_get_map_data_675695659 != nil)
    }

    public func set_map_width(width: Int64)  {
        withUnsafePointer(to: width) { width_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(width_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_map_width_1286410249._native_ptr(),
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
    public func get_map_width() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_map_width_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_map_depth(height: Int64)  {
        withUnsafePointer(to: height) { height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_map_depth_1286410249._native_ptr(),
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
    public func get_map_depth() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_map_depth_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_map_data(data: PackedFloat32Array)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_map_data_2899603908._native_ptr(),
                    2899603908)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_map_data() -> PackedFloat32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_map_data_675695659._native_ptr(),
                    675695659)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat32Array(godot: __resPtr.pointee)
    }
}