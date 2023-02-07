import godot_native

fileprivate var __godot_name_SplitContainer: StringName! = nil

/// Container for splitting and adjusting.
/// 
/// Container for splitting two [Control]s vertically or horizontally, with a grabber that allows adjusting the split offset or ratio.
public class SplitContainer : Container {

    public enum DraggerVisibility : Int32 {
        case DRAGGER_VISIBLE = 0
        case DRAGGER_HIDDEN = 1
        case DRAGGER_HIDDEN_COLLAPSED = 2
    }

    public override class var __godot_name: StringName { __godot_name_SplitContainer }

    static var _method_set_split_offset_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_split_offset_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_clamp_split_offset_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_collapsed_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_collapsed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_dragger_visibility_1168273952: GDExtensionMethodBindPtr! = nil
    static var _method_get_dragger_visibility_967297479: GDExtensionMethodBindPtr! = nil
    static var _method_set_vertical_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_vertical_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SplitContainer = StringName(from: "SplitContainer")

        let _method_set_split_offset_1286410249_name = StringName(from: "set_split_offset")
        self._method_set_split_offset_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_split_offset_1286410249_name._native_ptr(), 1286410249)
        assert(SplitContainer._method_set_split_offset_1286410249 != nil)
        let _method_get_split_offset_3905245786_name = StringName(from: "get_split_offset")
        self._method_get_split_offset_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_split_offset_3905245786_name._native_ptr(), 3905245786)
        assert(SplitContainer._method_get_split_offset_3905245786 != nil)
        let _method_clamp_split_offset_3218959716_name = StringName(from: "clamp_split_offset")
        self._method_clamp_split_offset_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clamp_split_offset_3218959716_name._native_ptr(), 3218959716)
        assert(SplitContainer._method_clamp_split_offset_3218959716 != nil)
        let _method_set_collapsed_2586408642_name = StringName(from: "set_collapsed")
        self._method_set_collapsed_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collapsed_2586408642_name._native_ptr(), 2586408642)
        assert(SplitContainer._method_set_collapsed_2586408642 != nil)
        let _method_is_collapsed_36873697_name = StringName(from: "is_collapsed")
        self._method_is_collapsed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_collapsed_36873697_name._native_ptr(), 36873697)
        assert(SplitContainer._method_is_collapsed_36873697 != nil)
        let _method_set_dragger_visibility_1168273952_name = StringName(from: "set_dragger_visibility")
        self._method_set_dragger_visibility_1168273952 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_dragger_visibility_1168273952_name._native_ptr(), 1168273952)
        assert(SplitContainer._method_set_dragger_visibility_1168273952 != nil)
        let _method_get_dragger_visibility_967297479_name = StringName(from: "get_dragger_visibility")
        self._method_get_dragger_visibility_967297479 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_dragger_visibility_967297479_name._native_ptr(), 967297479)
        assert(SplitContainer._method_get_dragger_visibility_967297479 != nil)
        let _method_set_vertical_2586408642_name = StringName(from: "set_vertical")
        self._method_set_vertical_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_vertical_2586408642_name._native_ptr(), 2586408642)
        assert(SplitContainer._method_set_vertical_2586408642 != nil)
        let _method_is_vertical_36873697_name = StringName(from: "is_vertical")
        self._method_is_vertical_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_vertical_36873697_name._native_ptr(), 36873697)
        assert(SplitContainer._method_is_vertical_36873697 != nil)
    }

    public func set_split_offset(offset: Int64)  {
        withUnsafePointer(to: offset) { offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_split_offset_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_split_offset_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func clamp_split_offset()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clamp_split_offset_3218959716,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collapsed_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_collapsed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_dragger_visibility(mode: SplitContainer.DraggerVisibility)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_dragger_visibility_1168273952,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_dragger_visibility_967297479,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SplitContainer.DraggerVisibility(from: __resPtr.pointee)
    }
    public func set_vertical(vertical: UInt8)  {
        withUnsafePointer(to: vertical) { vertical_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertical_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_vertical_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_vertical_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}