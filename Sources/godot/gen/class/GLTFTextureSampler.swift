import godot_native

fileprivate var __godot_name_GLTFTextureSampler: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GLTFTextureSampler : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFTextureSampler }

    static var _method_get_mag_filter_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_mag_filter_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_min_filter_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_min_filter_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_wrap_s_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_wrap_s_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_wrap_t_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_wrap_t_1286410249: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GLTFTextureSampler = StringName(from: "GLTFTextureSampler")

        let _method_get_mag_filter_3905245786_name = StringName(from: "get_mag_filter")
        self._method_get_mag_filter_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_mag_filter_3905245786_name._native_ptr(), 3905245786)
        assert(GLTFTextureSampler._method_get_mag_filter_3905245786 != nil)
        let _method_set_mag_filter_1286410249_name = StringName(from: "set_mag_filter")
        self._method_set_mag_filter_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_mag_filter_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFTextureSampler._method_set_mag_filter_1286410249 != nil)
        let _method_get_min_filter_3905245786_name = StringName(from: "get_min_filter")
        self._method_get_min_filter_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_min_filter_3905245786_name._native_ptr(), 3905245786)
        assert(GLTFTextureSampler._method_get_min_filter_3905245786 != nil)
        let _method_set_min_filter_1286410249_name = StringName(from: "set_min_filter")
        self._method_set_min_filter_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_min_filter_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFTextureSampler._method_set_min_filter_1286410249 != nil)
        let _method_get_wrap_s_3905245786_name = StringName(from: "get_wrap_s")
        self._method_get_wrap_s_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_wrap_s_3905245786_name._native_ptr(), 3905245786)
        assert(GLTFTextureSampler._method_get_wrap_s_3905245786 != nil)
        let _method_set_wrap_s_1286410249_name = StringName(from: "set_wrap_s")
        self._method_set_wrap_s_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_wrap_s_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFTextureSampler._method_set_wrap_s_1286410249 != nil)
        let _method_get_wrap_t_3905245786_name = StringName(from: "get_wrap_t")
        self._method_get_wrap_t_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_wrap_t_3905245786_name._native_ptr(), 3905245786)
        assert(GLTFTextureSampler._method_get_wrap_t_3905245786 != nil)
        let _method_set_wrap_t_1286410249_name = StringName(from: "set_wrap_t")
        self._method_set_wrap_t_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_wrap_t_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFTextureSampler._method_set_wrap_t_1286410249 != nil)
    }

    public func get_mag_filter() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mag_filter_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_mag_filter(filter_mode: Int64)  {
        withUnsafePointer(to: filter_mode) { filter_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mag_filter_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_min_filter_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_min_filter(filter_mode: Int64)  {
        withUnsafePointer(to: filter_mode) { filter_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_min_filter_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_wrap_s_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_wrap_s(wrap_mode: Int64)  {
        withUnsafePointer(to: wrap_mode) { wrap_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(wrap_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_wrap_s_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_wrap_t_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_wrap_t(wrap_mode: Int64)  {
        withUnsafePointer(to: wrap_mode) { wrap_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(wrap_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_wrap_t_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}