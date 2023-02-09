import godot_native

fileprivate var __godot_name_GLTFTexture: StringName! = nil

/// MISSING
/// 
/// MISSING
open class GLTFTexture : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFTexture }

    static var _method_get_src_image_3905245786: StringName! = nil
    static var _method_set_src_image_1286410249: StringName! = nil
    static var _method_get_sampler_3905245786: StringName! = nil
    static var _method_set_sampler_1286410249: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GLTFTexture == nil)
        __godot_name_GLTFTexture = StringName(from: "GLTFTexture")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_src_image_3905245786 = StringName(from: "get_src_image")
        assert(self._method_get_src_image_3905245786 != nil)
        self._method_set_src_image_1286410249 = StringName(from: "set_src_image")
        assert(self._method_set_src_image_1286410249 != nil)
        self._method_get_sampler_3905245786 = StringName(from: "get_sampler")
        assert(self._method_get_sampler_3905245786 != nil)
        self._method_set_sampler_1286410249 = StringName(from: "set_sampler")
        assert(self._method_set_sampler_1286410249 != nil)
    }

    public func get_src_image() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_src_image_3905245786._native_ptr(),
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
    public func set_src_image(src_image: Int64)  {
        withUnsafePointer(to: src_image) { src_image_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_image_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_src_image_1286410249._native_ptr(),
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
    public func get_sampler() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sampler_3905245786._native_ptr(),
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
    public func set_sampler(sampler: Int64)  {
        withUnsafePointer(to: sampler) { sampler_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sampler_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sampler_1286410249._native_ptr(),
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