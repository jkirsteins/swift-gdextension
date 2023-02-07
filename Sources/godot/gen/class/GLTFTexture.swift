import godot_native

fileprivate var __godot_name_GLTFTexture: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GLTFTexture : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFTexture }

    static var _method_get_src_image_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_src_image_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_sampler_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_sampler_1286410249: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GLTFTexture = StringName(from: "GLTFTexture")

        let _method_get_src_image_3905245786_name = StringName(from: "get_src_image")
        self._method_get_src_image_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_src_image_3905245786_name._native_ptr(), 3905245786)
        assert(GLTFTexture._method_get_src_image_3905245786 != nil)
        let _method_set_src_image_1286410249_name = StringName(from: "set_src_image")
        self._method_set_src_image_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_src_image_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFTexture._method_set_src_image_1286410249 != nil)
        let _method_get_sampler_3905245786_name = StringName(from: "get_sampler")
        self._method_get_sampler_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sampler_3905245786_name._native_ptr(), 3905245786)
        assert(GLTFTexture._method_get_sampler_3905245786 != nil)
        let _method_set_sampler_1286410249_name = StringName(from: "set_sampler")
        self._method_set_sampler_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sampler_1286410249_name._native_ptr(), 1286410249)
        assert(GLTFTexture._method_set_sampler_1286410249 != nil)
    }

    public func get_src_image() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_src_image_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_src_image(src_image: Int64)  {
        withUnsafePointer(to: src_image) { src_image_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_image_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_src_image_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sampler_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_sampler(sampler: Int64)  {
        withUnsafePointer(to: sampler) { sampler_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sampler_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sampler_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}