import godot_native

fileprivate var __godot_name_VisualShaderNodeComment: StringName! = nil

/// A comment node to be placed on visual shader graph.
/// 
/// A resizable rectangular area with changeable [member title] and [member description] used for better organizing of other visual shader nodes.
public class VisualShaderNodeComment : VisualShaderNodeResizableBase {

    

    public override class var __godot_name: StringName { __godot_name_VisualShaderNodeComment }

    static var _method_set_title_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_title_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_description_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_description_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_VisualShaderNodeComment = StringName(from: "VisualShaderNodeComment")

        let _method_set_title_83702148_name = StringName(from: "set_title")
        self._method_set_title_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_title_83702148_name._native_ptr(), 83702148)
        assert(VisualShaderNodeComment._method_set_title_83702148 != nil)
        let _method_get_title_201670096_name = StringName(from: "get_title")
        self._method_get_title_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_title_201670096_name._native_ptr(), 201670096)
        assert(VisualShaderNodeComment._method_get_title_201670096 != nil)
        let _method_set_description_83702148_name = StringName(from: "set_description")
        self._method_set_description_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_description_83702148_name._native_ptr(), 83702148)
        assert(VisualShaderNodeComment._method_set_description_83702148 != nil)
        let _method_get_description_201670096_name = StringName(from: "get_description")
        self._method_get_description_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_description_201670096_name._native_ptr(), 201670096)
        assert(VisualShaderNodeComment._method_get_description_201670096 != nil)
    }

    public func set_title(title: String)  {
        withUnsafePointer(to: title) { title_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(title_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_title_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_title() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_title_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_description(description: String)  {
        withUnsafePointer(to: description) { description_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(description_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_description_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_description() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_description_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
}