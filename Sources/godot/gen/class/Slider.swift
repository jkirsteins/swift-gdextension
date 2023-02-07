import godot_native

fileprivate var __godot_name_Slider: StringName! = nil

/// Base class for GUI sliders.
/// 
/// Base class for GUI sliders.
///  
/// [b]Note:[/b] The [signal Range.changed] and [signal Range.value_changed] signals are part of the [Range] class which this class inherits from.
public class Slider : Range {

    

    public override class var __godot_name: StringName { __godot_name_Slider }

    static var _method_set_ticks_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_ticks_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_ticks_on_borders_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_ticks_on_borders_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_editable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_editable_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_scrollable_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_scrollable_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Slider = StringName(from: "Slider")

        let _method_set_ticks_1286410249_name = StringName(from: "set_ticks")
        self._method_set_ticks_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ticks_1286410249_name._native_ptr(), 1286410249)
        assert(Slider._method_set_ticks_1286410249 != nil)
        let _method_get_ticks_3905245786_name = StringName(from: "get_ticks")
        self._method_get_ticks_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ticks_3905245786_name._native_ptr(), 3905245786)
        assert(Slider._method_get_ticks_3905245786 != nil)
        let _method_get_ticks_on_borders_36873697_name = StringName(from: "get_ticks_on_borders")
        self._method_get_ticks_on_borders_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ticks_on_borders_36873697_name._native_ptr(), 36873697)
        assert(Slider._method_get_ticks_on_borders_36873697 != nil)
        let _method_set_ticks_on_borders_2586408642_name = StringName(from: "set_ticks_on_borders")
        self._method_set_ticks_on_borders_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ticks_on_borders_2586408642_name._native_ptr(), 2586408642)
        assert(Slider._method_set_ticks_on_borders_2586408642 != nil)
        let _method_set_editable_2586408642_name = StringName(from: "set_editable")
        self._method_set_editable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_editable_2586408642_name._native_ptr(), 2586408642)
        assert(Slider._method_set_editable_2586408642 != nil)
        let _method_is_editable_36873697_name = StringName(from: "is_editable")
        self._method_is_editable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_editable_36873697_name._native_ptr(), 36873697)
        assert(Slider._method_is_editable_36873697 != nil)
        let _method_set_scrollable_2586408642_name = StringName(from: "set_scrollable")
        self._method_set_scrollable_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_scrollable_2586408642_name._native_ptr(), 2586408642)
        assert(Slider._method_set_scrollable_2586408642 != nil)
        let _method_is_scrollable_36873697_name = StringName(from: "is_scrollable")
        self._method_is_scrollable_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_scrollable_36873697_name._native_ptr(), 36873697)
        assert(Slider._method_is_scrollable_36873697 != nil)
    }

    public func set_ticks(count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ticks_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ticks() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ticks_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func get_ticks_on_borders() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ticks_on_borders_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_ticks_on_borders(ticks_on_border: UInt8)  {
        withUnsafePointer(to: ticks_on_border) { ticks_on_border_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ticks_on_border_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ticks_on_borders_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_editable(editable: UInt8)  {
        withUnsafePointer(to: editable) { editable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(editable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_editable_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_editable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_editable_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_scrollable(scrollable: UInt8)  {
        withUnsafePointer(to: scrollable) { scrollable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scrollable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scrollable_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_scrollable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_scrollable_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}