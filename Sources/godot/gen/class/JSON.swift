import godot_native

fileprivate var __godot_name_JSON: StringName! = nil

/// Helper class for creating and parsing JSON data.
/// 
/// The [JSON] enables all data types to be converted to and from a JSON string. This useful for serializing data to save to a file or send over the network.
///  
/// [method stringify] is used to convert any data type into a JSON string.
///  
/// [method parse] is used to convert any existing JSON data into a [Variant] that can be used within Godot. If successfully parsed, use [member data] to retrieve the [Variant], and use [code]typeof[/code] to check if the Variant's type is what you expect. JSON Objects are converted into a [Dictionary], but JSON data can be used to store [Array]s, numbers, [String]s and even just a boolean.
///  
/// [b]Example[/b]
///  
/// [codeblock]
///  
/// var data_to_send = ["a", "b", "c"]
///  
/// var json_string = JSON.stringify(data_to_send)
///  
/// # Save data
///  
/// # ...
///  
/// # Retrieve data
///  
/// var error = json.parse(json_string)
///  
/// if error == OK:
///  
///     var data_received = json.data
///  
///     if typeof(data_received) == TYPE_ARRAY:
///  
///         print(data_received) # Prints array
///  
///     else:
///  
///         print("Unexpected data")
///  
/// else:
///  
///     print("JSON Parse Error: ", json.get_error_message(), " in ", json_string, " at line ", json.get_error_line())
///  
/// [/codeblock]
///  
/// Alternatively, you can parse string using the static [method parse_string] method, but it doesn't allow to handle errors.
///  
/// [codeblock]
///  
/// var data = JSON.parse_string(json_string) # Returns null if parsing failed.
///  
/// [/codeblock]
///  
/// [b]Note:[/b] Both parse methods do not fully comply with the JSON specification:
///  
/// - Trailing commas in arrays or objects are ignored, instead of causing a parser error.
///  
/// - New line and tab characters are accepted in string literals, and are treated like their corresponding escape sequences [code]\n[/code] and [code]\t[/code].
///  
/// - Numbers are parsed using [method String.to_float] which is generally more lax than the JSON specification.
///  
/// - Certain errors, such as invalid Unicode sequences, do not cause a parser error. Instead, the string is cleansed and an error is logged to the console.
open class JSON : Resource {

    

    public override class var __godot_name: StringName { __godot_name_JSON }

    static var _method_stringify_2656701787: GDExtensionMethodBindPtr! = nil
    static var _method_parse_string_309047738: GDExtensionMethodBindPtr! = nil
    static var _method_parse_885841341: GDExtensionMethodBindPtr! = nil
    static var _method_get_data_1214101251: GDExtensionMethodBindPtr! = nil
    static var _method_set_data_1114965689: GDExtensionMethodBindPtr! = nil
    static var _method_get_parsed_text_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_error_line_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_error_message_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_JSON = StringName(from: "JSON")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_stringify_2656701787_name = StringName(from: "stringify")
        self._method_stringify_2656701787 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSON._native_ptr(), _method_stringify_2656701787_name._native_ptr(), 2656701787)
        assert(JSON._method_stringify_2656701787 != nil)
        let _method_parse_string_309047738_name = StringName(from: "parse_string")
        self._method_parse_string_309047738 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSON._native_ptr(), _method_parse_string_309047738_name._native_ptr(), 309047738)
        assert(JSON._method_parse_string_309047738 != nil)
        let _method_parse_885841341_name = StringName(from: "parse")
        self._method_parse_885841341 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSON._native_ptr(), _method_parse_885841341_name._native_ptr(), 885841341)
        assert(JSON._method_parse_885841341 != nil)
        let _method_get_data_1214101251_name = StringName(from: "get_data")
        self._method_get_data_1214101251 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSON._native_ptr(), _method_get_data_1214101251_name._native_ptr(), 1214101251)
        assert(JSON._method_get_data_1214101251 != nil)
        let _method_set_data_1114965689_name = StringName(from: "set_data")
        self._method_set_data_1114965689 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSON._native_ptr(), _method_set_data_1114965689_name._native_ptr(), 1114965689)
        assert(JSON._method_set_data_1114965689 != nil)
        let _method_get_parsed_text_201670096_name = StringName(from: "get_parsed_text")
        self._method_get_parsed_text_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSON._native_ptr(), _method_get_parsed_text_201670096_name._native_ptr(), 201670096)
        assert(JSON._method_get_parsed_text_201670096 != nil)
        let _method_get_error_line_3905245786_name = StringName(from: "get_error_line")
        self._method_get_error_line_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSON._native_ptr(), _method_get_error_line_3905245786_name._native_ptr(), 3905245786)
        assert(JSON._method_get_error_line_3905245786 != nil)
        let _method_get_error_message_201670096_name = StringName(from: "get_error_message")
        self._method_get_error_message_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_JSON._native_ptr(), _method_get_error_message_201670096_name._native_ptr(), 201670096)
        assert(JSON._method_get_error_message_201670096 != nil)
    }

    public func stringify(data: Variant, indent: godot.String, sort_keys: UInt8, full_precision: UInt8) -> godot.String {
        withUnsafePointer(to: full_precision) { full_precision_native in
        withUnsafePointer(to: sort_keys) { sort_keys_native in
        let indent_native = indent._native_ptr()
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native), .init(indent_native), .init(sort_keys_native), .init(full_precision_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stringify_2656701787,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
        }
    }
    public func parse_string(json_string: godot.String) -> Variant {
        let json_string_native = json_string._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(json_string_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_parse_string_309047738,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func parse(json_text: godot.String, keep_text: UInt8) -> Error {
        withUnsafePointer(to: keep_text) { keep_text_native in
        let json_text_native = json_text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(json_text_native), .init(keep_text_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_parse_885841341,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func get_data() -> Variant {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_data_1214101251,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func set_data(data: Variant)  {
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_data_1114965689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_parsed_text() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_parsed_text_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_error_line() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_error_line_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_error_message() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_error_message_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}