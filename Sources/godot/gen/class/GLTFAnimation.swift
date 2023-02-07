import godot_native

fileprivate var __godot_name_GLTFAnimation: StringName! = nil

/// MISSING
/// 
/// MISSING
public class GLTFAnimation : Resource {

    

    public override class var __godot_name: StringName { __godot_name_GLTFAnimation }

    static var _method_get_loop_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_loop_2586408642: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GLTFAnimation = StringName(from: "GLTFAnimation")

        let _method_get_loop_36873697_name = StringName(from: "get_loop")
        self._method_get_loop_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_loop_36873697_name._native_ptr(), 36873697)
        assert(GLTFAnimation._method_get_loop_36873697 != nil)
        let _method_set_loop_2586408642_name = StringName(from: "set_loop")
        self._method_set_loop_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_loop_2586408642_name._native_ptr(), 2586408642)
        assert(GLTFAnimation._method_set_loop_2586408642 != nil)
    }

    public func get_loop() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_loop_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_loop(loop: UInt8)  {
        withUnsafePointer(to: loop) { loop_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_loop_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}