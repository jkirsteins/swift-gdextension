import godot_native

fileprivate var __godot_name_InputEventFromWindow: StringName! = nil

/// 
/// 
/// 
open class InputEventFromWindow : InputEvent {

    

    public override class var __godot_name: StringName { __godot_name_InputEventFromWindow }

    static var _method_set_window_id_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_window_id_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_InputEventFromWindow = StringName(from: "InputEventFromWindow")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_window_id_1286410249_name = StringName(from: "set_window_id")
        self._method_set_window_id_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventFromWindow._native_ptr(), _method_set_window_id_1286410249_name._native_ptr(), 1286410249)
        assert(InputEventFromWindow._method_set_window_id_1286410249 != nil)
        let _method_get_window_id_3905245786_name = StringName(from: "get_window_id")
        self._method_get_window_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_InputEventFromWindow._native_ptr(), _method_get_window_id_3905245786_name._native_ptr(), 3905245786)
        assert(InputEventFromWindow._method_get_window_id_3905245786 != nil)
    }

    public func set_window_id(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_window_id_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_window_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_window_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}