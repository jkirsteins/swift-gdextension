import godot_native

fileprivate var __godot_name_SkinReference: StringName! = nil

/// 
/// 
/// 
open class SkinReference : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_SkinReference }

    static var _method_get_skeleton_2944877500: StringName! = nil
    static var _method_get_skin_2074563878: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SkinReference == nil)
        __godot_name_SkinReference = StringName(from: "SkinReference")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_skeleton_2944877500 = StringName(from: "get_skeleton")
        assert(self._method_get_skeleton_2944877500 != nil)
        self._method_get_skin_2074563878 = StringName(from: "get_skin")
        assert(self._method_get_skin_2074563878 != nil)
    }

    public func get_skeleton() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_skeleton_2944877500._native_ptr(),
                    2944877500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func get_skin() -> Skin {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_skin_2074563878._native_ptr(),
                    2074563878)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skin(godot: __resPtr.pointee)
    }
}