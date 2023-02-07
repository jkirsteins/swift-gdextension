import godot_native

fileprivate var __godot_name_RDUniform: StringName! = nil

/// 
/// 
/// 
public class RDUniform : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDUniform }

    static var _method_set_uniform_type_1664894931: GDExtensionMethodBindPtr! = nil
    static var _method_get_uniform_type_475470040: GDExtensionMethodBindPtr! = nil
    static var _method_set_binding_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_binding_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_add_id_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_clear_ids_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_ids_3995934104: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RDUniform = StringName(from: "RDUniform")

        let _method_set_uniform_type_1664894931_name = StringName(from: "set_uniform_type")
        self._method_set_uniform_type_1664894931 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_uniform_type_1664894931_name._native_ptr(), 1664894931)
        assert(RDUniform._method_set_uniform_type_1664894931 != nil)
        let _method_get_uniform_type_475470040_name = StringName(from: "get_uniform_type")
        self._method_get_uniform_type_475470040 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_uniform_type_475470040_name._native_ptr(), 475470040)
        assert(RDUniform._method_get_uniform_type_475470040 != nil)
        let _method_set_binding_1286410249_name = StringName(from: "set_binding")
        self._method_set_binding_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_binding_1286410249_name._native_ptr(), 1286410249)
        assert(RDUniform._method_set_binding_1286410249 != nil)
        let _method_get_binding_3905245786_name = StringName(from: "get_binding")
        self._method_get_binding_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_binding_3905245786_name._native_ptr(), 3905245786)
        assert(RDUniform._method_get_binding_3905245786 != nil)
        let _method_add_id_2722037293_name = StringName(from: "add_id")
        self._method_add_id_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_id_2722037293_name._native_ptr(), 2722037293)
        assert(RDUniform._method_add_id_2722037293 != nil)
        let _method_clear_ids_3218959716_name = StringName(from: "clear_ids")
        self._method_clear_ids_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_ids_3218959716_name._native_ptr(), 3218959716)
        assert(RDUniform._method_clear_ids_3218959716 != nil)
        let _method_get_ids_3995934104_name = StringName(from: "get_ids")
        self._method_get_ids_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ids_3995934104_name._native_ptr(), 3995934104)
        assert(RDUniform._method_get_ids_3995934104 != nil)
    }

    public func set_uniform_type(p_member: RenderingDevice.UniformType)  {
        withUnsafePointer(to: p_member.rawValue) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uniform_type_1664894931,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_uniform_type() -> RenderingDevice.UniformType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_uniform_type_475470040,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.UniformType(from: __resPtr.pointee)
    }
    public func set_binding(p_member: Int64)  {
        withUnsafePointer(to: p_member) { p_member_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(p_member_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_binding_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_binding() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_binding_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func add_id(id: RID)  {
        let id_native = id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_id_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_ids()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_ids_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_ids() -> [RID] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ids_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RID](from: __resPtr.pointee)
    }
}