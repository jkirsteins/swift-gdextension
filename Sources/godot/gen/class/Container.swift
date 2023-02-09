import godot_native

fileprivate var __godot_name_Container: StringName! = nil

/// Base node for containers.
/// 
/// Base node for containers. A [Container] contains other controls and automatically arranges them in a certain way.
///  
/// A Control can inherit this to create custom container classes.
open class Container : Control {

    

    public override class var __godot_name: StringName { __godot_name_Container }

    static var _method__get_allowed_size_flags_horizontal_0: StringName! = nil
    static var _method__get_allowed_size_flags_vertical_0: StringName! = nil
    static var _method_queue_sort_3218959716: StringName! = nil
    static var _method_fit_child_in_rect_1993438598: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Container == nil)
        __godot_name_Container = StringName(from: "Container")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_queue_sort_3218959716 = StringName(from: "queue_sort")
        assert(self._method_queue_sort_3218959716 != nil)
        self._method_fit_child_in_rect_1993438598 = StringName(from: "fit_child_in_rect")
        assert(self._method_fit_child_in_rect_1993438598 != nil)
    }

    public func _get_allowed_size_flags_horizontal() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func _get_allowed_size_flags_vertical() -> PackedInt32Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return PackedInt32Array(godot: __resPtr.pointee)
    }
    public func queue_sort()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_queue_sort_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func fit_child_in_rect(child: Control, rect: Rect2)  {
        let rect_native = rect._native_ptr()
        let child_native = child._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(child_native), .init(rect_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_fit_child_in_rect_1993438598._native_ptr(),
                    1993438598)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}