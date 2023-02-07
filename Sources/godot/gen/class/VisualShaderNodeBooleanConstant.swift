import godot_native

fileprivate var __godot_name_VisualShaderNodeBooleanConstant: StringName! = nil

/// A boolean constant to be used within the visual shader graph.
/// 
/// Has only one output port and no inputs.
///  
/// Translated to [code]bool[/code] in the shader language.
public class VisualShaderNodeBooleanConstant : VisualShaderNodeConstant {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeBooleanConstant }

    static var _method_set_constant_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeBooleanConstant = StringName(from: "VisualShaderNodeBooleanConstant")

        let _method_set_constant_2586408642_name = StringName(from: "set_constant")
        self._method_set_constant_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_constant_2586408642_name._native_ptr(), 2586408642)
        assert(VisualShaderNodeBooleanConstant._method_set_constant_2586408642 != nil)
        let _method_get_constant_36873697_name = StringName(from: "get_constant")
        self._method_get_constant_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_constant_36873697_name._native_ptr(), 36873697)
        assert(VisualShaderNodeBooleanConstant._method_get_constant_36873697 != nil)
    }

    public func set_constant(constant: UInt8)  {
        withUnsafePointer(to: constant) { constant_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(constant_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_constant() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}