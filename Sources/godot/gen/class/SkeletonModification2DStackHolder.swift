import godot_native

fileprivate var __godot_name_SkeletonModification2DStackHolder: StringName! = nil

/// A modification that holds and executes a [SkeletonModificationStack2D].
/// 
/// This [SkeletonModification2D] holds a reference to a [SkeletonModificationStack2D], allowing you to use multiple modification stacks on a single [Skeleton2D].
///  
/// [b]Note:[/b] The modifications in the held [SkeletonModificationStack2D] will only be executed if their execution mode matches the execution mode of the SkeletonModification2DStackHolder.
public class SkeletonModification2DStackHolder : SkeletonModification2D {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonModification2DStackHolder }

    static var _method_set_held_modification_stack_3907307132: GDExtensionMethodBindPtr! = nil
    static var _method_get_held_modification_stack_2107508396: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SkeletonModification2DStackHolder = StringName(from: "SkeletonModification2DStackHolder")

        let _method_set_held_modification_stack_3907307132_name = StringName(from: "set_held_modification_stack")
        self._method_set_held_modification_stack_3907307132 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_held_modification_stack_3907307132_name._native_ptr(), 3907307132)
        assert(SkeletonModification2DStackHolder._method_set_held_modification_stack_3907307132 != nil)
        let _method_get_held_modification_stack_2107508396_name = StringName(from: "get_held_modification_stack")
        self._method_get_held_modification_stack_2107508396 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_held_modification_stack_2107508396_name._native_ptr(), 2107508396)
        assert(SkeletonModification2DStackHolder._method_get_held_modification_stack_2107508396 != nil)
    }

    public func set_held_modification_stack(held_modification_stack: SkeletonModificationStack2D)  {
        let held_modification_stack_native = held_modification_stack._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(held_modification_stack_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_held_modification_stack_3907307132,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_held_modification_stack_2107508396,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SkeletonModificationStack2D(from: __resPtr.pointee)
    }
}