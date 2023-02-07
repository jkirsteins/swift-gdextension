import godot_native

fileprivate var __godot_name_ShaderInclude: StringName! = nil

/// 
/// 
/// 
public class ShaderInclude : Resource {

    

    public override class var __godot_name: StringName { __godot_name_ShaderInclude }

    static var _method_set_code_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_code_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ShaderInclude = StringName(from: "ShaderInclude")

        let _method_set_code_83702148_name = StringName(from: "set_code")
        self._method_set_code_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_code_83702148_name._native_ptr(), 83702148)
        assert(ShaderInclude._method_set_code_83702148 != nil)
        let _method_get_code_201670096_name = StringName(from: "get_code")
        self._method_get_code_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_code_201670096_name._native_ptr(), 201670096)
        assert(ShaderInclude._method_get_code_201670096 != nil)
    }

    public func set_code(code: String)  {
        withUnsafePointer(to: code) { code_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_code_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_code() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_code_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
}