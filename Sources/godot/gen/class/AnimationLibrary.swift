import godot_native

fileprivate var __godot_name_AnimationLibrary: StringName! = nil

/// Container for [Animation] resources.
/// 
/// An animation library stores a set of animations accessible through [StringName] keys, for use with [AnimationPlayer] nodes.
public class AnimationLibrary : Resource {

    

    public override class var __godot_name: StringName { __godot_name_AnimationLibrary }

    static var _method_add_animation_1811855551: GDExtensionMethodBindPtr! = nil
    static var _method_remove_animation_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_rename_animation_3740211285: GDExtensionMethodBindPtr! = nil
    static var _method_has_animation_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_2933122410: GDExtensionMethodBindPtr! = nil
    static var _method_get_animation_list_3995934104: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AnimationLibrary = StringName(from: "AnimationLibrary")

        let _method_add_animation_1811855551_name = StringName(from: "add_animation")
        self._method_add_animation_1811855551 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_animation_1811855551_name._native_ptr(), 1811855551)
        assert(AnimationLibrary._method_add_animation_1811855551 != nil)
        let _method_remove_animation_3304788590_name = StringName(from: "remove_animation")
        self._method_remove_animation_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_animation_3304788590_name._native_ptr(), 3304788590)
        assert(AnimationLibrary._method_remove_animation_3304788590 != nil)
        let _method_rename_animation_3740211285_name = StringName(from: "rename_animation")
        self._method_rename_animation_3740211285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_rename_animation_3740211285_name._native_ptr(), 3740211285)
        assert(AnimationLibrary._method_rename_animation_3740211285 != nil)
        let _method_has_animation_2619796661_name = StringName(from: "has_animation")
        self._method_has_animation_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_animation_2619796661_name._native_ptr(), 2619796661)
        assert(AnimationLibrary._method_has_animation_2619796661 != nil)
        let _method_get_animation_2933122410_name = StringName(from: "get_animation")
        self._method_get_animation_2933122410 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_animation_2933122410_name._native_ptr(), 2933122410)
        assert(AnimationLibrary._method_get_animation_2933122410 != nil)
        let _method_get_animation_list_3995934104_name = StringName(from: "get_animation_list")
        self._method_get_animation_list_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_animation_list_3995934104_name._native_ptr(), 3995934104)
        assert(AnimationLibrary._method_get_animation_list_3995934104 != nil)
    }

    public func add_animation(name: StringName, animation: Animation) -> Error {
        let animation_native = animation._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(animation_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_animation_1811855551,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
    }
    public func remove_animation(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_animation_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func rename_animation(name: StringName, newname: StringName)  {
        let newname_native = newname._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(newname_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rename_animation_3740211285,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_animation(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_animation_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_animation(name: StringName) -> Animation {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animation_2933122410,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Animation(from: __resPtr.pointee)
    }
    public func get_animation_list() -> [StringName] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_animation_list_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [StringName](from: __resPtr.pointee)
    }
}