import godot_native

fileprivate var __godot_name_SkeletonModification2DStackHolder: StringName! = nil

/// A modification that holds and executes a [SkeletonModificationStack2D].
/// 
/// This [SkeletonModification2D] holds a reference to a [SkeletonModificationStack2D], allowing you to use multiple modification stacks on a single [Skeleton2D].
///  
/// [b]Note:[/b] The modifications in the held [SkeletonModificationStack2D] will only be executed if their execution mode matches the execution mode of the SkeletonModification2DStackHolder.
open class SkeletonModification2DStackHolder : SkeletonModification2D {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonModification2DStackHolder }

    static var _method_set_held_modification_stack_3907307132: StringName! = nil
    static var _method_get_held_modification_stack_2107508396: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SkeletonModification2DStackHolder == nil)
        __godot_name_SkeletonModification2DStackHolder = StringName(from: "SkeletonModification2DStackHolder")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_held_modification_stack_3907307132 = StringName(from: "set_held_modification_stack")
        assert(self._method_set_held_modification_stack_3907307132 != nil)
        self._method_get_held_modification_stack_2107508396 = StringName(from: "get_held_modification_stack")
        assert(self._method_get_held_modification_stack_2107508396 != nil)
    }

    public func set_held_modification_stack(held_modification_stack: SkeletonModificationStack2D)  {
        let held_modification_stack_native = held_modification_stack._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(held_modification_stack_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_held_modification_stack_3907307132._native_ptr(),
                    3907307132)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_held_modification_stack() -> SkeletonModificationStack2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_held_modification_stack_2107508396._native_ptr(),
                    2107508396)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SkeletonModificationStack2D(godot: __resPtr.pointee)
    }
}