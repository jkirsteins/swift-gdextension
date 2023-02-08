import godot_native

fileprivate var __godot_name_JSONRPC: StringName! = nil

/// A helper to handle dictionaries which look like JSONRPC documents.
/// 
/// [url=https://www.jsonrpc.org/]JSON-RPC[/url] is a standard which wraps a method call in a [JSON] object. The object has a particular structure and identifies which method is called, the parameters to that function, and carries an ID to keep track of responses. This class implements that standard on top of [Dictionary]; you will have to convert between a [Dictionary] and [JSON] with other functions.
open class JSONRPC : Object {

    public enum ErrorCode : Int32 {
        case PARSE_ERROR = -32700
        case INVALID_REQUEST = -32600
        case METHOD_NOT_FOUND = -32601
        case INVALID_PARAMS = -32602
        case INTERNAL_ERROR = -32603
    }

    public override class var __godot_name: StringName { __godot_name_JSONRPC }

    static var _method_set_scope_2572618360: GDExtensionMethodBindPtr! = nil
    static var _method_process_action_2963479484: GDExtensionMethodBindPtr! = nil
    static var _method_process_string_1703090593: GDExtensionMethodBindPtr! = nil
    static var _method_make_request_3423508980: GDExtensionMethodBindPtr! = nil
    static var _method_make_response_5053918: GDExtensionMethodBindPtr! = nil
    static var _method_make_notification_2949127017: GDExtensionMethodBindPtr! = nil
    static var _method_make_response_error_928596297: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_JSONRPC = StringName(from: "JSONRPC")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_scope_2572618360_name = StringName(from: "set_scope")
        self._method_set_scope_2572618360 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSONRPC._native_ptr(), _method_set_scope_2572618360_name._native_ptr(), 2572618360)
        assert(JSONRPC._method_set_scope_2572618360 != nil)
        let _method_process_action_2963479484_name = StringName(from: "process_action")
        self._method_process_action_2963479484 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSONRPC._native_ptr(), _method_process_action_2963479484_name._native_ptr(), 2963479484)
        assert(JSONRPC._method_process_action_2963479484 != nil)
        let _method_process_string_1703090593_name = StringName(from: "process_string")
        self._method_process_string_1703090593 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSONRPC._native_ptr(), _method_process_string_1703090593_name._native_ptr(), 1703090593)
        assert(JSONRPC._method_process_string_1703090593 != nil)
        let _method_make_request_3423508980_name = StringName(from: "make_request")
        self._method_make_request_3423508980 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSONRPC._native_ptr(), _method_make_request_3423508980_name._native_ptr(), 3423508980)
        assert(JSONRPC._method_make_request_3423508980 != nil)
        let _method_make_response_5053918_name = StringName(from: "make_response")
        self._method_make_response_5053918 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSONRPC._native_ptr(), _method_make_response_5053918_name._native_ptr(), 5053918)
        assert(JSONRPC._method_make_response_5053918 != nil)
        let _method_make_notification_2949127017_name = StringName(from: "make_notification")
        self._method_make_notification_2949127017 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSONRPC._native_ptr(), _method_make_notification_2949127017_name._native_ptr(), 2949127017)
        assert(JSONRPC._method_make_notification_2949127017 != nil)
        let _method_make_response_error_928596297_name = StringName(from: "make_response_error")
        self._method_make_response_error_928596297 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSONRPC._native_ptr(), _method_make_response_error_928596297_name._native_ptr(), 928596297)
        assert(JSONRPC._method_make_response_error_928596297 != nil)
    }

    public func set_scope(scope: godot.String, target: Object)  {
        let target_native = target._native_ptr()
        let scope_native = scope._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scope_native), .init(target_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scope_2572618360,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func process_action(action: Variant, recurse: UInt8) -> Variant {
        withUnsafePointer(to: recurse) { recurse_native in
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native), .init(recurse_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_process_action_2963479484,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
    }
    public func process_string(action: godot.String) -> godot.String {
        let action_native = action._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(action_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_process_string_1703090593,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func make_request(method: godot.String, params: Variant, id: Variant) -> Dictionary {
        let id_native = id._native_ptr()
        let params_native = params._native_ptr()
        let method_native = method._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native), .init(params_native), .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_request_3423508980,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func make_response(result: Variant, id: Variant) -> Dictionary {
        let id_native = id._native_ptr()
        let result_native = result._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(result_native), .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_response_5053918,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func make_notification(method: godot.String, params: Variant) -> Dictionary {
        let params_native = params._native_ptr()
        let method_native = method._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(method_native), .init(params_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_notification_2949127017,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func make_response_error(code: Int64, message: godot.String, id: Variant) -> Dictionary {
        withUnsafePointer(to: code) { code_native in
        let id_native = id._native_ptr()
        let message_native = message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native), .init(message_native), .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_response_error_928596297,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
}