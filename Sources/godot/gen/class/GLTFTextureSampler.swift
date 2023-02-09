import godot_native

fileprivate var __godot_name_GLTFTextureSampler: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GLTFTextureSampler : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFTextureSampler }

    static var _method_get_mag_filter_3905245786: StringName! = nil
    static var _method_set_mag_filter_1286410249: StringName! = nil
    static var _method_get_min_filter_3905245786: StringName! = nil
    static var _method_set_min_filter_1286410249: StringName! = nil
    static var _method_get_wrap_s_3905245786: StringName! = nil
    static var _method_set_wrap_s_1286410249: StringName! = nil
    static var _method_get_wrap_t_3905245786: StringName! = nil
    static var _method_set_wrap_t_1286410249: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GLTFTextureSampler == nil)
        __godot_name_GLTFTextureSampler = StringName(from: "GLTFTextureSampler")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_mag_filter_3905245786 = StringName(from: "get_mag_filter")
        assert(self._method_get_mag_filter_3905245786 != nil)
        self._method_set_mag_filter_1286410249 = StringName(from: "set_mag_filter")
        assert(self._method_set_mag_filter_1286410249 != nil)
        self._method_get_min_filter_3905245786 = StringName(from: "get_min_filter")
        assert(self._method_get_min_filter_3905245786 != nil)
        self._method_set_min_filter_1286410249 = StringName(from: "set_min_filter")
        assert(self._method_set_min_filter_1286410249 != nil)
        self._method_get_wrap_s_3905245786 = StringName(from: "get_wrap_s")
        assert(self._method_get_wrap_s_3905245786 != nil)
        self._method_set_wrap_s_1286410249 = StringName(from: "set_wrap_s")
        assert(self._method_set_wrap_s_1286410249 != nil)
        self._method_get_wrap_t_3905245786 = StringName(from: "get_wrap_t")
        assert(self._method_get_wrap_t_3905245786 != nil)
        self._method_set_wrap_t_1286410249 = StringName(from: "set_wrap_t")
        assert(self._method_set_wrap_t_1286410249 != nil)
    }

    public func get_mag_filter() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mag_filter_3905245786._native_ptr(),
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
    public func set_mag_filter(filter_mode: Int64)  {
        withUnsafePointer(to: filter_mode) { filter_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mag_filter_1286410249._native_ptr(),
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
    public func get_min_filter() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_min_filter_3905245786._native_ptr(),
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
    public func set_min_filter(filter_mode: Int64)  {
        withUnsafePointer(to: filter_mode) { filter_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_min_filter_1286410249._native_ptr(),
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
    public func get_wrap_s() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_wrap_s_3905245786._native_ptr(),
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
    public func set_wrap_s(wrap_mode: Int64)  {
        withUnsafePointer(to: wrap_mode) { wrap_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(wrap_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_wrap_s_1286410249._native_ptr(),
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
    public func get_wrap_t() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_wrap_t_3905245786._native_ptr(),
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
    public func set_wrap_t(wrap_mode: Int64)  {
        withUnsafePointer(to: wrap_mode) { wrap_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(wrap_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_wrap_t_1286410249._native_ptr(),
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