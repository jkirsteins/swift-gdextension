import godot_native

fileprivate var __godot_name_EditorSpinSlider: StringName! = nil

/// Godot editor's control for editing numeric values.
/// 
/// This [Control] node is used in the editor's Inspector dock to allow editing of numeric values. Can be used with [EditorInspectorPlugin] to recreate the same behavior.
public class EditorSpinSlider : Range {

    

    public override class var __godot_name: StringName { __godot_name_EditorSpinSlider }

    static var _method_set_label_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_label_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_suffix_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_suffix_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_read_only_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_read_only_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_flat_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_flat_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_hide_slider_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_hiding_slider_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EditorSpinSlider = StringName(from: "EditorSpinSlider")

        let _method_set_label_83702148_name = StringName(from: "set_label")
        self._method_set_label_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_label_83702148_name._native_ptr(), 83702148)
        assert(EditorSpinSlider._method_set_label_83702148 != nil)
        let _method_get_label_201670096_name = StringName(from: "get_label")
        self._method_get_label_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_label_201670096_name._native_ptr(), 201670096)
        assert(EditorSpinSlider._method_get_label_201670096 != nil)
        let _method_set_suffix_83702148_name = StringName(from: "set_suffix")
        self._method_set_suffix_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_suffix_83702148_name._native_ptr(), 83702148)
        assert(EditorSpinSlider._method_set_suffix_83702148 != nil)
        let _method_get_suffix_201670096_name = StringName(from: "get_suffix")
        self._method_get_suffix_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_suffix_201670096_name._native_ptr(), 201670096)
        assert(EditorSpinSlider._method_get_suffix_201670096 != nil)
        let _method_set_read_only_2586408642_name = StringName(from: "set_read_only")
        self._method_set_read_only_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_read_only_2586408642_name._native_ptr(), 2586408642)
        assert(EditorSpinSlider._method_set_read_only_2586408642 != nil)
        let _method_is_read_only_36873697_name = StringName(from: "is_read_only")
        self._method_is_read_only_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_read_only_36873697_name._native_ptr(), 36873697)
        assert(EditorSpinSlider._method_is_read_only_36873697 != nil)
        let _method_set_flat_2586408642_name = StringName(from: "set_flat")
        self._method_set_flat_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flat_2586408642_name._native_ptr(), 2586408642)
        assert(EditorSpinSlider._method_set_flat_2586408642 != nil)
        let _method_is_flat_36873697_name = StringName(from: "is_flat")
        self._method_is_flat_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_flat_36873697_name._native_ptr(), 36873697)
        assert(EditorSpinSlider._method_is_flat_36873697 != nil)
        let _method_set_hide_slider_2586408642_name = StringName(from: "set_hide_slider")
        self._method_set_hide_slider_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_hide_slider_2586408642_name._native_ptr(), 2586408642)
        assert(EditorSpinSlider._method_set_hide_slider_2586408642 != nil)
        let _method_is_hiding_slider_36873697_name = StringName(from: "is_hiding_slider")
        self._method_is_hiding_slider_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_hiding_slider_36873697_name._native_ptr(), 36873697)
        assert(EditorSpinSlider._method_is_hiding_slider_36873697 != nil)
    }

    public func set_label(label: String)  {
        withUnsafePointer(to: label) { label_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(label_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_label_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_label() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_label_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_suffix(suffix: String)  {
        withUnsafePointer(to: suffix) { suffix_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(suffix_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_suffix_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_suffix() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_suffix_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_read_only(read_only: UInt8)  {
        withUnsafePointer(to: read_only) { read_only_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(read_only_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_read_only_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_read_only() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_read_only_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_flat(flat: UInt8)  {
        withUnsafePointer(to: flat) { flat_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flat_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flat_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_flat() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_flat_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_hide_slider(hide_slider: UInt8)  {
        withUnsafePointer(to: hide_slider) { hide_slider_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hide_slider_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hide_slider_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_hiding_slider() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_hiding_slider_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}