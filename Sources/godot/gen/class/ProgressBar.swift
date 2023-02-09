import godot_native

fileprivate var __godot_name_ProgressBar: StringName! = nil

/// General-purpose progress bar.
/// 
/// General-purpose progress bar. Shows fill percentage from right to left.
open class ProgressBar : Range {

    public enum FillMode : Int32 {
        case FILL_BEGIN_TO_END = 0
        case FILL_END_TO_BEGIN = 1
        case FILL_TOP_TO_BOTTOM = 2
        case FILL_BOTTOM_TO_TOP = 3
    }

    public override class var __godot_name: StringName { __godot_name_ProgressBar }

    static var _method_set_fill_mode_1286410249: StringName! = nil
    static var _method_get_fill_mode_2455072627: StringName! = nil
    static var _method_set_show_percentage_2586408642: StringName! = nil
    static var _method_is_percentage_shown_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ProgressBar == nil)
        __godot_name_ProgressBar = StringName(from: "ProgressBar")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_fill_mode_1286410249 = StringName(from: "set_fill_mode")
        assert(self._method_set_fill_mode_1286410249 != nil)
        self._method_get_fill_mode_2455072627 = StringName(from: "get_fill_mode")
        assert(self._method_get_fill_mode_2455072627 != nil)
        self._method_set_show_percentage_2586408642 = StringName(from: "set_show_percentage")
        assert(self._method_set_show_percentage_2586408642 != nil)
        self._method_is_percentage_shown_36873697 = StringName(from: "is_percentage_shown")
        assert(self._method_is_percentage_shown_36873697 != nil)
    }

    public func set_fill_mode(mode: Int64)  {
        withUnsafePointer(to: mode) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fill_mode_1286410249._native_ptr(),
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
    public func get_fill_mode() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fill_mode_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_show_percentage(visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visible_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_show_percentage_2586408642._native_ptr(),
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
    public func is_percentage_shown() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_percentage_shown_36873697._native_ptr(),
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