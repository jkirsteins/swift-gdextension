import godot_native

fileprivate var __godot_name_AnimationNodeSync: StringName! = nil

/// 
/// 
/// 
public class AnimationNodeSync : AnimationNode {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeSync }

    static var _method_set_use_sync_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_sync_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AnimationNodeSync = StringName(from: "AnimationNodeSync")

        let _method_set_use_sync_2586408642_name = StringName(from: "set_use_sync")
        self._method_set_use_sync_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_use_sync_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationNodeSync._method_set_use_sync_2586408642 != nil)
        let _method_is_using_sync_36873697_name = StringName(from: "is_using_sync")
        self._method_is_using_sync_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_using_sync_36873697_name._native_ptr(), 36873697)
        assert(AnimationNodeSync._method_is_using_sync_36873697 != nil)
    }

    public func set_use_sync(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_sync_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_sync() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_sync_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}