import godot_native

fileprivate var __godot_name_SkinReference: StringName! = nil

/// 
/// 
/// 
public class SkinReference : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_SkinReference }

    static var _method_get_skeleton_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_skin_2074563878: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SkinReference = StringName(from: "SkinReference")

        let _method_get_skeleton_2944877500_name = StringName(from: "get_skeleton")
        self._method_get_skeleton_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skeleton_2944877500_name._native_ptr(), 2944877500)
        assert(SkinReference._method_get_skeleton_2944877500 != nil)
        let _method_get_skin_2074563878_name = StringName(from: "get_skin")
        self._method_get_skin_2074563878 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_skin_2074563878_name._native_ptr(), 2074563878)
        assert(SkinReference._method_get_skin_2074563878 != nil)
    }

    public func get_skeleton() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skeleton_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func get_skin() -> Skin {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skin_2074563878,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skin(from: __resPtr.pointee)
    }
}