import godot_native

fileprivate var __godot_name_FogVolume: StringName! = nil

/// A node used to add local fog with the volumetric fog effect.
/// 
/// [FogVolume]s are used to add localized fog into the global volumetric fog effect. [FogVolume]s can also remove volumetric fog from specific areas if using a [FogMaterial] with a negative [member FogMaterial.density].
///  
/// Performance of [FogVolume]s is directly related to their relative size on the screen and the complexity of their attached [FogMaterial]. It is best to keep [FogVolume]s relatively small and simple where possible.
///  
/// [b]Note:[/b] [FogVolume]s only have a visible effect if [member Environment.volumetric_fog_enabled] is [code]true[/code]. If you don't want fog to be globally visible (but only within [FogVolume] nodes), set [member Environment.volumetric_fog_density] to [code]0.0[/code].
open class FogVolume : VisualInstance3D {

    

    public override class var __godot_name: StringName { __godot_name_FogVolume }

    static var _method_set_size_3460891852: StringName! = nil
    static var _method_get_size_3360562783: StringName! = nil
    static var _method_set_shape_1416323362: StringName! = nil
    static var _method_get_shape_3920334604: StringName! = nil
    static var _method_set_material_2757459619: StringName! = nil
    static var _method_get_material_5934680: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_FogVolume == nil)
        __godot_name_FogVolume = StringName(from: "FogVolume")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_size_3460891852 = StringName(from: "set_size")
        assert(self._method_set_size_3460891852 != nil)
        self._method_get_size_3360562783 = StringName(from: "get_size")
        assert(self._method_get_size_3360562783 != nil)
        self._method_set_shape_1416323362 = StringName(from: "set_shape")
        assert(self._method_set_shape_1416323362 != nil)
        self._method_get_shape_3920334604 = StringName(from: "get_shape")
        assert(self._method_get_shape_3920334604 != nil)
        self._method_set_material_2757459619 = StringName(from: "set_material")
        assert(self._method_set_material_2757459619 != nil)
        self._method_get_material_5934680 = StringName(from: "get_material")
        assert(self._method_get_material_5934680 != nil)
    }

    public func set_size(size: Vector3)  {
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_size_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_size_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_shape(shape: RenderingServer.FogVolumeShape)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shape_1416323362._native_ptr(),
                    1416323362)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_shape() -> RenderingServer.FogVolumeShape {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_shape_3920334604._native_ptr(),
                    3920334604)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingServer.FogVolumeShape(godot: __resPtr.pointee)
    }
    public func set_material(material: Material)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_material_2757459619._native_ptr(),
                    2757459619)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_material() -> Material {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_material_5934680._native_ptr(),
                    5934680)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(godot: __resPtr.pointee)
    }
}