import godot_native

fileprivate var __godot_name_SubViewportContainer: StringName! = nil

/// Control for holding [SubViewport]s.
/// 
/// A [Container] node that holds a [SubViewport]. It uses the [SubViewport]'s size as minimum size, unless [member stretch] is enabled.
///  
/// [b]Note:[/b] Changing a SubViewportContainer's [member Control.scale] will cause its contents to appear distorted. To change its visual size without causing distortion, adjust the node's margins instead (if it's not already in a container).
///  
/// [b]Note:[/b] The SubViewportContainer forwards mouse-enter and mouse-exit notifications to its sub-viewports.
open class SubViewportContainer : Container {

    

    public override class var __godot_name: StringName { __godot_name_SubViewportContainer }

    static var _method_set_stretch_2586408642: StringName! = nil
    static var _method_is_stretch_enabled_36873697: StringName! = nil
    static var _method_set_stretch_shrink_1286410249: StringName! = nil
    static var _method_get_stretch_shrink_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SubViewportContainer == nil)
        __godot_name_SubViewportContainer = StringName(from: "SubViewportContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_stretch_2586408642 = StringName(from: "set_stretch")
        assert(self._method_set_stretch_2586408642 != nil)
        self._method_is_stretch_enabled_36873697 = StringName(from: "is_stretch_enabled")
        assert(self._method_is_stretch_enabled_36873697 != nil)
        self._method_set_stretch_shrink_1286410249 = StringName(from: "set_stretch_shrink")
        assert(self._method_set_stretch_shrink_1286410249 != nil)
        self._method_get_stretch_shrink_3905245786 = StringName(from: "get_stretch_shrink")
        assert(self._method_get_stretch_shrink_3905245786 != nil)
    }

    public func set_stretch(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stretch_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_stretch_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_stretch_enabled_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_stretch_shrink(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_stretch_shrink_1286410249._native_ptr(),
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
    public func get_stretch_shrink() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_stretch_shrink_3905245786._native_ptr(),
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