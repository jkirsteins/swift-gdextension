import godot_native

fileprivate var __godot_name_FogVolume: StringName! = nil

/// A node used to add local fog with the volumetric fog effect.
/// 
/// [FogVolume]s are used to add localized fog into the global volumetric fog effect. [FogVolume]s can also remove volumetric fog from specific areas if using a [FogMaterial] with a negative [member FogMaterial.density].
///  
/// Performance of [FogVolume]s is directly related to their relative size on the screen and the complexity of their attached [FogMaterial]. It is best to keep [FogVolume]s relatively small and simple where possible.
///  
/// [b]Note:[/b] [FogVolume]s only have a visible effect if [member Environment.volumetric_fog_enabled] is [code]true[/code]. If you don't want fog to be globally visible (but only within [FogVolume] nodes), set [member Environment.volumetric_fog_density] to [code]0.0[/code].
public class FogVolume : VisualInstance3D {

    

    public override class var __godot_name: StringName { __godot_name_FogVolume }

    static var _method_set_size_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_size_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_shape_1416323362: GDExtensionMethodBindPtr! = nil
    static var _method_get_shape_3920334604: GDExtensionMethodBindPtr! = nil
    static var _method_set_material_2757459619: GDExtensionMethodBindPtr! = nil
    static var _method_get_material_5934680: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_FogVolume = StringName(from: "FogVolume")

        let _method_set_size_3460891852_name = StringName(from: "set_size")
        self._method_set_size_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_size_3460891852_name._native_ptr(), 3460891852)
        assert(FogVolume._method_set_size_3460891852 != nil)
        let _method_get_size_3360562783_name = StringName(from: "get_size")
        self._method_get_size_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_size_3360562783_name._native_ptr(), 3360562783)
        assert(FogVolume._method_get_size_3360562783 != nil)
        let _method_set_shape_1416323362_name = StringName(from: "set_shape")
        self._method_set_shape_1416323362 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shape_1416323362_name._native_ptr(), 1416323362)
        assert(FogVolume._method_set_shape_1416323362 != nil)
        let _method_get_shape_3920334604_name = StringName(from: "get_shape")
        self._method_get_shape_3920334604 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shape_3920334604_name._native_ptr(), 3920334604)
        assert(FogVolume._method_get_shape_3920334604 != nil)
        let _method_set_material_2757459619_name = StringName(from: "set_material")
        self._method_set_material_2757459619 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_material_2757459619_name._native_ptr(), 2757459619)
        assert(FogVolume._method_set_material_2757459619 != nil)
        let _method_get_material_5934680_name = StringName(from: "get_material")
        self._method_get_material_5934680 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_material_5934680_name._native_ptr(), 5934680)
        assert(FogVolume._method_get_material_5934680 != nil)
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
            return Vector3(from: __resPtr.pointee)
    }
    public func set_shape(shape: RenderingServer.FogVolumeShape)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shape_1416323362,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shape_3920334604,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingServer.FogVolumeShape(from: __resPtr.pointee)
    }
    public func set_material(material: Material)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_material_2757459619,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_material_5934680,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(from: __resPtr.pointee)
    }
}