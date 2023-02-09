import godot_native

fileprivate var __godot_name_SplitContainer: StringName! = nil

/// Container for splitting and adjusting.
/// 
/// Container for splitting two [Control]s vertically or horizontally, with a grabber that allows adjusting the split offset or ratio.
open class SplitContainer : Container {

    public enum DraggerVisibility : Int32 {
        case DRAGGER_VISIBLE = 0
        case DRAGGER_HIDDEN = 1
        case DRAGGER_HIDDEN_COLLAPSED = 2
    }

    public override class var __godot_name: StringName { __godot_name_SplitContainer }

    static var _method_set_split_offset_1286410249: StringName! = nil
    static var _method_get_split_offset_3905245786: StringName! = nil
    static var _method_clamp_split_offset_3218959716: StringName! = nil
    static var _method_set_collapsed_2586408642: StringName! = nil
    static var _method_is_collapsed_36873697: StringName! = nil
    static var _method_set_dragger_visibility_1168273952: StringName! = nil
    static var _method_get_dragger_visibility_967297479: StringName! = nil
    static var _method_set_vertical_2586408642: StringName! = nil
    static var _method_is_vertical_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SplitContainer == nil)
        __godot_name_SplitContainer = StringName(from: "SplitContainer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_split_offset_1286410249 = StringName(from: "set_split_offset")
        assert(self._method_set_split_offset_1286410249 != nil)
        self._method_get_split_offset_3905245786 = StringName(from: "get_split_offset")
        assert(self._method_get_split_offset_3905245786 != nil)
        self._method_clamp_split_offset_3218959716 = StringName(from: "clamp_split_offset")
        assert(self._method_clamp_split_offset_3218959716 != nil)
        self._method_set_collapsed_2586408642 = StringName(from: "set_collapsed")
        assert(self._method_set_collapsed_2586408642 != nil)
        self._method_is_collapsed_36873697 = StringName(from: "is_collapsed")
        assert(self._method_is_collapsed_36873697 != nil)
        self._method_set_dragger_visibility_1168273952 = StringName(from: "set_dragger_visibility")
        assert(self._method_set_dragger_visibility_1168273952 != nil)
        self._method_get_dragger_visibility_967297479 = StringName(from: "get_dragger_visibility")
        assert(self._method_get_dragger_visibility_967297479 != nil)
        self._method_set_vertical_2586408642 = StringName(from: "set_vertical")
        assert(self._method_set_vertical_2586408642 != nil)
        self._method_is_vertical_36873697 = StringName(from: "is_vertical")
        assert(self._method_is_vertical_36873697 != nil)
    }

    public func set_split_offset(offset: Int64)  {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_split_offset_1286410249._native_ptr(),
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
    public func get_split_offset() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_split_offset_3905245786._native_ptr(),
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
    public func clamp_split_offset()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clamp_split_offset_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_collapsed(collapsed: UInt8)  {
        withUnsafePointer(to: collapsed) { collapsed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collapsed_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collapsed_2586408642._native_ptr(),
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
    public func is_collapsed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_collapsed_36873697._native_ptr(),
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
    public func set_dragger_visibility(mode: SplitContainer.DraggerVisibility)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_dragger_visibility_1168273952._native_ptr(),
                    1168273952)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_dragger_visibility() -> SplitContainer.DraggerVisibility {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_dragger_visibility_967297479._native_ptr(),
                    967297479)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SplitContainer.DraggerVisibility(godot: __resPtr.pointee)
    }
    public func set_vertical(vertical: UInt8)  {
        withUnsafePointer(to: vertical) { vertical_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertical_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vertical_2586408642._native_ptr(),
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
    public func is_vertical() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_vertical_36873697._native_ptr(),
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
}