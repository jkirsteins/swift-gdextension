import godot_native

fileprivate var __godot_name_RDPipelineSpecializationConstant: StringName! = nil

/// 
/// 
/// 
open class RDPipelineSpecializationConstant : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_RDPipelineSpecializationConstant }

    static var _method_set_value_1114965689: StringName! = nil
    static var _method_get_value_1214101251: StringName! = nil
    static var _method_set_constant_id_1286410249: StringName! = nil
    static var _method_get_constant_id_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RDPipelineSpecializationConstant == nil)
        __godot_name_RDPipelineSpecializationConstant = StringName(from: "RDPipelineSpecializationConstant")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_value_1114965689 = StringName(from: "set_value")
        assert(self._method_set_value_1114965689 != nil)
        self._method_get_value_1214101251 = StringName(from: "get_value")
        assert(self._method_get_value_1214101251 != nil)
        self._method_set_constant_id_1286410249 = StringName(from: "set_constant_id")
        assert(self._method_set_constant_id_1286410249 != nil)
        self._method_get_constant_id_3905245786 = StringName(from: "get_constant_id")
        assert(self._method_get_constant_id_3905245786 != nil)
    }

    public func set_value(value: Variant)  {
        let value_native = value._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_value_1114965689._native_ptr(),
                    1114965689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_value_1214101251._native_ptr(),
                    1214101251)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func set_constant_id(constant_id: Int64)  {
        withUnsafePointer(to: constant_id) { constant_id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_constant_id_1286410249._native_ptr(),
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
    public func get_constant_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_constant_id_3905245786._native_ptr(),
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
}