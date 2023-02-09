import godot_native

fileprivate var __godot_name_Sky: StringName! = nil

/// Background that uses a [Material] to draw a sky.
/// 
/// The [Sky] class uses a [Material] to draw the background and update the reflection/radiance cubemaps.
open class Sky : Resource {

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

    static var _method_set_radiance_size_1512957179: StringName! = nil
    static var _method_get_radiance_size_2708733976: StringName! = nil
    static var _method_set_process_mode_875986769: StringName! = nil
    static var _method_get_process_mode_731245043: StringName! = nil
    static var _method_set_material_2757459619: StringName! = nil
    static var _method_get_material_5934680: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Sky == nil)
        __godot_name_Sky = StringName(from: "Sky")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_radiance_size_1512957179 = StringName(from: "set_radiance_size")
        assert(self._method_set_radiance_size_1512957179 != nil)
        self._method_get_radiance_size_2708733976 = StringName(from: "get_radiance_size")
        assert(self._method_get_radiance_size_2708733976 != nil)
        self._method_set_process_mode_875986769 = StringName(from: "set_process_mode")
        assert(self._method_set_process_mode_875986769 != nil)
        self._method_get_process_mode_731245043 = StringName(from: "get_process_mode")
        assert(self._method_get_process_mode_731245043 != nil)
        self._method_set_material_2757459619 = StringName(from: "set_material")
        assert(self._method_set_material_2757459619 != nil)
        self._method_get_material_5934680 = StringName(from: "get_material")
        assert(self._method_get_material_5934680 != nil)
    }

    public func set_radiance_size(size: Sky.RadianceSize)  {
        withUnsafePointer(to: size.rawValue) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_radiance_size_1512957179._native_ptr(),
                    1512957179)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_radiance_size_2708733976._native_ptr(),
                    2708733976)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Sky.RadianceSize(godot: __resPtr.pointee)
    }
    public func set_process_mode(mode: Sky.ProcessMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_process_mode_875986769._native_ptr(),
                    875986769)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_process_mode_731245043._native_ptr(),
                    731245043)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Sky.ProcessMode(godot: __resPtr.pointee)
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