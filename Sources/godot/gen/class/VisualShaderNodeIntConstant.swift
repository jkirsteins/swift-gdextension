import godot_native

fileprivate var __godot_name_VisualShaderNodeIntConstant: StringName! = nil

/// A scalar integer constant to be used within the visual shader graph.
/// 
/// Translated to [code]int[/code] in the shader language.
public class VisualShaderNodeIntConstant : VisualShaderNodeConstant {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeIntConstant }

    static var _method_set_constant_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeIntConstant = StringName(from: "VisualShaderNodeIntConstant")

        let _method_set_constant_1286410249_name = StringName(from: "set_constant")
        self._method_set_constant_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_constant_1286410249_name._native_ptr(), 1286410249)
        assert(VisualShaderNodeIntConstant._method_set_constant_1286410249 != nil)
        let _method_get_constant_3905245786_name = StringName(from: "get_constant")
        self._method_get_constant_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_constant_3905245786_name._native_ptr(), 3905245786)
        assert(VisualShaderNodeIntConstant._method_get_constant_3905245786 != nil)
    }

    public func set_constant(constant: Int64)  {
        withUnsafePointer(to: constant) { constant_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_constant() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}