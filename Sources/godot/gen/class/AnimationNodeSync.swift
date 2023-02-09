import godot_native

fileprivate var __godot_name_AnimationNodeSync: StringName! = nil

/// 
/// 
/// 
open class AnimationNodeSync : AnimationNode {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeSync }

    static var _method_set_use_sync_2586408642: StringName! = nil
    static var _method_is_using_sync_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AnimationNodeSync == nil)
        __godot_name_AnimationNodeSync = StringName(from: "AnimationNodeSync")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_use_sync_2586408642 = StringName(from: "set_use_sync")
        assert(self._method_set_use_sync_2586408642 != nil)
        self._method_is_using_sync_36873697 = StringName(from: "is_using_sync")
        assert(self._method_is_using_sync_36873697 != nil)
    }

    public func set_use_sync(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_sync_2586408642._native_ptr(),
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
    public func is_using_sync() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_sync_36873697._native_ptr(),
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