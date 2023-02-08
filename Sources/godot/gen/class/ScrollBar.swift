import godot_native

fileprivate var __godot_name_ScrollBar: StringName! = nil

/// Base class for scroll bars.
/// 
/// Scrollbars are a [Range]-based [Control], that display a draggable area (the size of the page). Horizontal ([HScrollBar]) and Vertical ([VScrollBar]) versions are available.
open class ScrollBar : Range {

    

    public override class var __godot_name: StringName { __godot_name_ScrollBar }

    static var _method_set_custom_step_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_step_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ScrollBar = StringName(from: "ScrollBar")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_custom_step_373806689_name = StringName(from: "set_custom_step")
        self._method_set_custom_step_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_ScrollBar._native_ptr(), _method_set_custom_step_373806689_name._native_ptr(), 373806689)
        assert(ScrollBar._method_set_custom_step_373806689 != nil)
        let _method_get_custom_step_1740695150_name = StringName(from: "get_custom_step")
        self._method_get_custom_step_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_ScrollBar._native_ptr(), _method_get_custom_step_1740695150_name._native_ptr(), 1740695150)
        assert(ScrollBar._method_get_custom_step_1740695150 != nil)
    }

    public func set_custom_step(step: Float64)  {
        withUnsafePointer(to: step) { step_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(step_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_custom_step_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_custom_step() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_step_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
}