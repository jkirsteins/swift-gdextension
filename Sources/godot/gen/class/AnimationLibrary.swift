import godot_native

fileprivate var __godot_name_AnimationLibrary: StringName! = nil

/// Container for [Animation] resources.
/// 
/// An animation library stores a set of animations accessible through [StringName] keys, for use with [AnimationPlayer] nodes.
open class AnimationLibrary : Resource {

    

    public override class var __godot_name: StringName { __godot_name_AnimationLibrary }

    static var _method_add_animation_1811855551: StringName! = nil
    static var _method_remove_animation_3304788590: StringName! = nil
    static var _method_rename_animation_3740211285: StringName! = nil
    static var _method_has_animation_2619796661: StringName! = nil
    static var _method_get_animation_2933122410: StringName! = nil
    static var _method_get_animation_list_3995934104: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AnimationLibrary == nil)
        __godot_name_AnimationLibrary = StringName(from: "AnimationLibrary")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_add_animation_1811855551 = StringName(from: "add_animation")
        assert(self._method_add_animation_1811855551 != nil)
        self._method_remove_animation_3304788590 = StringName(from: "remove_animation")
        assert(self._method_remove_animation_3304788590 != nil)
        self._method_rename_animation_3740211285 = StringName(from: "rename_animation")
        assert(self._method_rename_animation_3740211285 != nil)
        self._method_has_animation_2619796661 = StringName(from: "has_animation")
        assert(self._method_has_animation_2619796661 != nil)
        self._method_get_animation_2933122410 = StringName(from: "get_animation")
        assert(self._method_get_animation_2933122410 != nil)
        self._method_get_animation_list_3995934104 = StringName(from: "get_animation_list")
        assert(self._method_get_animation_list_3995934104 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_animation_1811855551._native_ptr(),
                    1811855551)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func remove_animation(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_animation_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_rename_animation_3740211285._native_ptr(),
                    3740211285)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_animation_2619796661._native_ptr(),
                    2619796661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_animation_2933122410._native_ptr(),
                    2933122410)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Animation(godot: __resPtr.pointee)
    }
    public func get_animation_list() -> [StringName] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_animation_list_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [StringName](godot: __resPtr.pointee)
    }
}