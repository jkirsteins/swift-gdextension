import godot_native

fileprivate var __godot_name_SubViewportContainer: StringName! = nil

/// Control for holding [SubViewport]s.
/// 
/// A [Container] node that holds a [SubViewport]. It uses the [SubViewport]'s size as minimum size, unless [member stretch] is enabled.
///  
/// [b]Note:[/b] Changing a SubViewportContainer's [member Control.scale] will cause its contents to appear distorted. To change its visual size without causing distortion, adjust the node's margins instead (if it's not already in a container).
///  
/// [b]Note:[/b] The SubViewportContainer forwards mouse-enter and mouse-exit notifications to its sub-viewports.
public class SubViewportContainer : Container {

    

    public override class var __godot_name: StringName { __godot_name_SubViewportContainer }

    static var _method_set_stretch_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_stretch_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_stretch_shrink_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_stretch_shrink_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SubViewportContainer = StringName(from: "SubViewportContainer")

        let _method_set_stretch_2586408642_name = StringName(from: "set_stretch")
        self._method_set_stretch_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stretch_2586408642_name._native_ptr(), 2586408642)
        assert(SubViewportContainer._method_set_stretch_2586408642 != nil)
        let _method_is_stretch_enabled_36873697_name = StringName(from: "is_stretch_enabled")
        self._method_is_stretch_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_stretch_enabled_36873697_name._native_ptr(), 36873697)
        assert(SubViewportContainer._method_is_stretch_enabled_36873697 != nil)
        let _method_set_stretch_shrink_1286410249_name = StringName(from: "set_stretch_shrink")
        self._method_set_stretch_shrink_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_stretch_shrink_1286410249_name._native_ptr(), 1286410249)
        assert(SubViewportContainer._method_set_stretch_shrink_1286410249 != nil)
        let _method_get_stretch_shrink_3905245786_name = StringName(from: "get_stretch_shrink")
        self._method_get_stretch_shrink_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_stretch_shrink_3905245786_name._native_ptr(), 3905245786)
        assert(SubViewportContainer._method_get_stretch_shrink_3905245786 != nil)
    }

    public func set_stretch(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stretch_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_stretch_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_stretch_shrink(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_stretch_shrink_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_stretch_shrink_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}