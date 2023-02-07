import godot_native

fileprivate var __godot_name_RDPipelineSpecializationConstant: StringName! = nil

/// 
/// 
/// 
public class RDPipelineSpecializationConstant : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDPipelineSpecializationConstant }

    static var _method_set_value_1114965689: GDExtensionMethodBindPtr! = nil
    static var _method_get_value_1214101251: GDExtensionMethodBindPtr! = nil
    static var _method_set_constant_id_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_id_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RDPipelineSpecializationConstant = StringName(from: "RDPipelineSpecializationConstant")

        let _method_set_value_1114965689_name = StringName(from: "set_value")
        self._method_set_value_1114965689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_value_1114965689_name._native_ptr(), 1114965689)
        assert(RDPipelineSpecializationConstant._method_set_value_1114965689 != nil)
        let _method_get_value_1214101251_name = StringName(from: "get_value")
        self._method_get_value_1214101251 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_value_1214101251_name._native_ptr(), 1214101251)
        assert(RDPipelineSpecializationConstant._method_get_value_1214101251 != nil)
        let _method_set_constant_id_1286410249_name = StringName(from: "set_constant_id")
        self._method_set_constant_id_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_constant_id_1286410249_name._native_ptr(), 1286410249)
        assert(RDPipelineSpecializationConstant._method_set_constant_id_1286410249 != nil)
        let _method_get_constant_id_3905245786_name = StringName(from: "get_constant_id")
        self._method_get_constant_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_constant_id_3905245786_name._native_ptr(), 3905245786)
        assert(RDPipelineSpecializationConstant._method_get_constant_id_3905245786 != nil)
    }

    public func set_value(value: Variant)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_value_1114965689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_value() -> Variant {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_value_1214101251,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func set_constant_id(constant_id: Int64)  {
        withUnsafePointer(to: constant_id) { constant_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_id_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_constant_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}