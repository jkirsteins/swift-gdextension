import godot_native

fileprivate var __godot_name_TextServerManager: StringName! = nil

/// Manager for the font and complex text layout servers.
/// 
/// [TextServerManager] is the API backend for loading, enumeration and switching [TextServer]s.
///  
/// [b]Note:[/b] Switching text server at runtime is possible, but will invalidate all fonts and text buffers. Make sure to unload all controls, fonts, and themes before doing so.
open class TextServerManager : Object {

    

    public override class var __godot_name: StringName { __godot_name_TextServerManager }

    static var _method_add_interface_1799689403: GDExtensionMethodBindPtr! = nil
    static var _method_get_interface_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_remove_interface_1799689403: GDExtensionMethodBindPtr! = nil
    static var _method_get_interface_1672475555: GDExtensionMethodBindPtr! = nil
    static var _method_get_interfaces_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_find_interface_2240905781: GDExtensionMethodBindPtr! = nil
    static var _method_set_primary_interface_1799689403: GDExtensionMethodBindPtr! = nil
    static var _method_get_primary_interface_905850878: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_TextServerManager = StringName(from: "TextServerManager")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_add_interface_1799689403_name = StringName(from: "add_interface")
        self._method_add_interface_1799689403 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextServerManager._native_ptr(), _method_add_interface_1799689403_name._native_ptr(), 1799689403)
        assert(TextServerManager._method_add_interface_1799689403 != nil)
        let _method_get_interface_count_3905245786_name = StringName(from: "get_interface_count")
        self._method_get_interface_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextServerManager._native_ptr(), _method_get_interface_count_3905245786_name._native_ptr(), 3905245786)
        assert(TextServerManager._method_get_interface_count_3905245786 != nil)
        let _method_remove_interface_1799689403_name = StringName(from: "remove_interface")
        self._method_remove_interface_1799689403 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextServerManager._native_ptr(), _method_remove_interface_1799689403_name._native_ptr(), 1799689403)
        assert(TextServerManager._method_remove_interface_1799689403 != nil)
        let _method_get_interface_1672475555_name = StringName(from: "get_interface")
        self._method_get_interface_1672475555 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextServerManager._native_ptr(), _method_get_interface_1672475555_name._native_ptr(), 1672475555)
        assert(TextServerManager._method_get_interface_1672475555 != nil)
        let _method_get_interfaces_3995934104_name = StringName(from: "get_interfaces")
        self._method_get_interfaces_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextServerManager._native_ptr(), _method_get_interfaces_3995934104_name._native_ptr(), 3995934104)
        assert(TextServerManager._method_get_interfaces_3995934104 != nil)
        let _method_find_interface_2240905781_name = StringName(from: "find_interface")
        self._method_find_interface_2240905781 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextServerManager._native_ptr(), _method_find_interface_2240905781_name._native_ptr(), 2240905781)
        assert(TextServerManager._method_find_interface_2240905781 != nil)
        let _method_set_primary_interface_1799689403_name = StringName(from: "set_primary_interface")
        self._method_set_primary_interface_1799689403 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextServerManager._native_ptr(), _method_set_primary_interface_1799689403_name._native_ptr(), 1799689403)
        assert(TextServerManager._method_set_primary_interface_1799689403 != nil)
        let _method_get_primary_interface_905850878_name = StringName(from: "get_primary_interface")
        self._method_get_primary_interface_905850878 = self.interface.pointee.classdb_get_method_bind(__godot_name_TextServerManager._native_ptr(), _method_get_primary_interface_905850878_name._native_ptr(), 905850878)
        assert(TextServerManager._method_get_primary_interface_905850878 != nil)
    }

    public func add_interface(interface: TextServer)  {
        let interface_native = interface._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_interface_1799689403,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_interface_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_interface_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func remove_interface(interface: TextServer)  {
        let interface_native = interface._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_interface_1799689403,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_interface(idx: Int64) -> TextServer {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_interface_1672475555,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer(godot: __resPtr.pointee)
        }
    }
    public func get_interfaces() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_interfaces_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](godot: __resPtr.pointee)
    }
    public func find_interface(name: godot.String) -> TextServer {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_find_interface_2240905781,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer(godot: __resPtr.pointee)
    }
    public func set_primary_interface(index: TextServer)  {
        let index_native = index._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_primary_interface_1799689403,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_primary_interface() -> TextServer {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_primary_interface_905850878,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer(godot: __resPtr.pointee)
    }
}