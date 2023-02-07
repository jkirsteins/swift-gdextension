import godot_native

fileprivate var __godot_name_Sky: StringName! = nil

/// Background that uses a [Material] to draw a sky.
/// 
/// The [Sky] class uses a [Material] to draw the background and update the reflection/radiance cubemaps.
public class Sky : Resource {

    public enum RadianceSize : Int32 {
        case RADIANCE_SIZE_32 = 0
        case RADIANCE_SIZE_64 = 1
        case RADIANCE_SIZE_128 = 2
        case RADIANCE_SIZE_256 = 3
        case RADIANCE_SIZE_512 = 4
        case RADIANCE_SIZE_1024 = 5
        case RADIANCE_SIZE_2048 = 6
        case RADIANCE_SIZE_MAX = 7
    }
    public enum ProcessMode : Int32 {
        case PROCESS_MODE_AUTOMATIC = 0
        case PROCESS_MODE_QUALITY = 1
        case PROCESS_MODE_INCREMENTAL = 2
        case PROCESS_MODE_REALTIME = 3
    }

    public override class var __godot_name: StringName { __godot_name_Sky }

    static var _method_set_radiance_size_1512957179: GDExtensionMethodBindPtr! = nil
    static var _method_get_radiance_size_2708733976: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_mode_875986769: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_mode_731245043: GDExtensionMethodBindPtr! = nil
    static var _method_set_material_2757459619: GDExtensionMethodBindPtr! = nil
    static var _method_get_material_5934680: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Sky = StringName(from: "Sky")

        let _method_set_radiance_size_1512957179_name = StringName(from: "set_radiance_size")
        self._method_set_radiance_size_1512957179 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_radiance_size_1512957179_name._native_ptr(), 1512957179)
        assert(Sky._method_set_radiance_size_1512957179 != nil)
        let _method_get_radiance_size_2708733976_name = StringName(from: "get_radiance_size")
        self._method_get_radiance_size_2708733976 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_radiance_size_2708733976_name._native_ptr(), 2708733976)
        assert(Sky._method_get_radiance_size_2708733976 != nil)
        let _method_set_process_mode_875986769_name = StringName(from: "set_process_mode")
        self._method_set_process_mode_875986769 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_process_mode_875986769_name._native_ptr(), 875986769)
        assert(Sky._method_set_process_mode_875986769 != nil)
        let _method_get_process_mode_731245043_name = StringName(from: "get_process_mode")
        self._method_get_process_mode_731245043 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_process_mode_731245043_name._native_ptr(), 731245043)
        assert(Sky._method_get_process_mode_731245043 != nil)
        let _method_set_material_2757459619_name = StringName(from: "set_material")
        self._method_set_material_2757459619 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_material_2757459619_name._native_ptr(), 2757459619)
        assert(Sky._method_set_material_2757459619 != nil)
        let _method_get_material_5934680_name = StringName(from: "get_material")
        self._method_get_material_5934680 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_material_5934680_name._native_ptr(), 5934680)
        assert(Sky._method_get_material_5934680 != nil)
    }

    public func set_radiance_size(size: Sky.RadianceSize)  {
        withUnsafePointer(to: size.rawValue) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_radiance_size_1512957179,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_radiance_size() -> Sky.RadianceSize {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_radiance_size_2708733976,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Sky.RadianceSize(from: __resPtr.pointee)
    }
    public func set_process_mode(mode: Sky.ProcessMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_mode_875986769,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_process_mode() -> Sky.ProcessMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_process_mode_731245043,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Sky.ProcessMode(from: __resPtr.pointee)
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