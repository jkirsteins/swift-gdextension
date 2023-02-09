import godot_native

fileprivate var __godot_name_TextServerManager: StringName! = nil

/// Manager for the font and complex text layout servers.
/// 
/// [TextServerManager] is the API backend for loading, enumeration and switching [TextServer]s.
///  
/// [b]Note:[/b] Switching text server at runtime is possible, but will invalidate all fonts and text buffers. Make sure to unload all controls, fonts, and themes before doing so.
open class TextServerManager : Object {

    

    public override class var __godot_name: StringName { __godot_name_TextServerManager }

    static var _method_add_interface_1799689403: StringName! = nil
    static var _method_get_interface_count_3905245786: StringName! = nil
    static var _method_remove_interface_1799689403: StringName! = nil
    static var _method_get_interface_1672475555: StringName! = nil
    static var _method_get_interfaces_3995934104: StringName! = nil
    static var _method_find_interface_2240905781: StringName! = nil
    static var _method_set_primary_interface_1799689403: StringName! = nil
    static var _method_get_primary_interface_905850878: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_TextServerManager == nil)
        __godot_name_TextServerManager = StringName(from: "TextServerManager")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_interface_1799689403 = StringName(from: "add_interface")
        assert(self._method_add_interface_1799689403 != nil)
        self._method_get_interface_count_3905245786 = StringName(from: "get_interface_count")
        assert(self._method_get_interface_count_3905245786 != nil)
        self._method_remove_interface_1799689403 = StringName(from: "remove_interface")
        assert(self._method_remove_interface_1799689403 != nil)
        self._method_get_interface_1672475555 = StringName(from: "get_interface")
        assert(self._method_get_interface_1672475555 != nil)
        self._method_get_interfaces_3995934104 = StringName(from: "get_interfaces")
        assert(self._method_get_interfaces_3995934104 != nil)
        self._method_find_interface_2240905781 = StringName(from: "find_interface")
        assert(self._method_find_interface_2240905781 != nil)
        self._method_set_primary_interface_1799689403 = StringName(from: "set_primary_interface")
        assert(self._method_set_primary_interface_1799689403 != nil)
        self._method_get_primary_interface_905850878 = StringName(from: "get_primary_interface")
        assert(self._method_get_primary_interface_905850878 != nil)
    }

    public func add_interface(interface: TextServer)  {
        let interface_native = interface._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_interface_1799689403._native_ptr(),
                    1799689403)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_interface_count_3905245786._native_ptr(),
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
    public func remove_interface(interface: TextServer)  {
        let interface_native = interface._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_interface_1799689403._native_ptr(),
                    1799689403)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_interface_1672475555._native_ptr(),
                    1672475555)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_interfaces_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_find_interface_2240905781._native_ptr(),
                    2240905781)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_primary_interface_1799689403._native_ptr(),
                    1799689403)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_primary_interface_905850878._native_ptr(),
                    905850878)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return TextServer(godot: __resPtr.pointee)
    }
}