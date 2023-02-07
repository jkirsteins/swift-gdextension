import godot_native

fileprivate var __godot_name_Script: StringName! = nil

/// A class stored as a resource.
/// 
/// A class stored as a resource. A script extends the functionality of all objects that instantiate it.
///  
/// This is the base class for all scripts and should not be used directly. Trying to create a new script with this class will result in an error.
///  
/// The [code]new[/code] method of a script subclass creates a new instance. [method Object.set_script] extends an existing object, if that object's class matches one of the script's base classes.
public class Script : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Script }

    static var _method_can_instantiate_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_instance_has_397768994: GDExtensionMethodBindPtr! = nil
    static var _method_has_source_code_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_source_code_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_set_source_code_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_reload_1633102583: GDExtensionMethodBindPtr! = nil
    static var _method_get_base_script_278624046: GDExtensionMethodBindPtr! = nil
    static var _method_get_instance_base_type_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_has_script_signal_2619796661: GDExtensionMethodBindPtr! = nil
    static var _method_get_script_property_list_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_get_script_method_list_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_get_script_signal_list_2915620761: GDExtensionMethodBindPtr! = nil
    static var _method_get_script_constant_map_2382534195: GDExtensionMethodBindPtr! = nil
    static var _method_get_property_default_value_2138907829: GDExtensionMethodBindPtr! = nil
    static var _method_is_tool_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Script = StringName(from: "Script")

        let _method_can_instantiate_36873697_name = StringName(from: "can_instantiate")
        self._method_can_instantiate_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_can_instantiate_36873697_name._native_ptr(), 36873697)
        assert(Script._method_can_instantiate_36873697 != nil)
        let _method_instance_has_397768994_name = StringName(from: "instance_has")
        self._method_instance_has_397768994 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_has_397768994_name._native_ptr(), 397768994)
        assert(Script._method_instance_has_397768994 != nil)
        let _method_has_source_code_36873697_name = StringName(from: "has_source_code")
        self._method_has_source_code_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_source_code_36873697_name._native_ptr(), 36873697)
        assert(Script._method_has_source_code_36873697 != nil)
        let _method_get_source_code_201670096_name = StringName(from: "get_source_code")
        self._method_get_source_code_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_source_code_201670096_name._native_ptr(), 201670096)
        assert(Script._method_get_source_code_201670096 != nil)
        let _method_set_source_code_83702148_name = StringName(from: "set_source_code")
        self._method_set_source_code_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_source_code_83702148_name._native_ptr(), 83702148)
        assert(Script._method_set_source_code_83702148 != nil)
        let _method_reload_1633102583_name = StringName(from: "reload")
        self._method_reload_1633102583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reload_1633102583_name._native_ptr(), 1633102583)
        assert(Script._method_reload_1633102583 != nil)
        let _method_get_base_script_278624046_name = StringName(from: "get_base_script")
        self._method_get_base_script_278624046 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_base_script_278624046_name._native_ptr(), 278624046)
        assert(Script._method_get_base_script_278624046 != nil)
        let _method_get_instance_base_type_2002593661_name = StringName(from: "get_instance_base_type")
        self._method_get_instance_base_type_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_instance_base_type_2002593661_name._native_ptr(), 2002593661)
        assert(Script._method_get_instance_base_type_2002593661 != nil)
        let _method_has_script_signal_2619796661_name = StringName(from: "has_script_signal")
        self._method_has_script_signal_2619796661 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_script_signal_2619796661_name._native_ptr(), 2619796661)
        assert(Script._method_has_script_signal_2619796661 != nil)
        let _method_get_script_property_list_2915620761_name = StringName(from: "get_script_property_list")
        self._method_get_script_property_list_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_script_property_list_2915620761_name._native_ptr(), 2915620761)
        assert(Script._method_get_script_property_list_2915620761 != nil)
        let _method_get_script_method_list_2915620761_name = StringName(from: "get_script_method_list")
        self._method_get_script_method_list_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_script_method_list_2915620761_name._native_ptr(), 2915620761)
        assert(Script._method_get_script_method_list_2915620761 != nil)
        let _method_get_script_signal_list_2915620761_name = StringName(from: "get_script_signal_list")
        self._method_get_script_signal_list_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_script_signal_list_2915620761_name._native_ptr(), 2915620761)
        assert(Script._method_get_script_signal_list_2915620761 != nil)
        let _method_get_script_constant_map_2382534195_name = StringName(from: "get_script_constant_map")
        self._method_get_script_constant_map_2382534195 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_script_constant_map_2382534195_name._native_ptr(), 2382534195)
        assert(Script._method_get_script_constant_map_2382534195 != nil)
        let _method_get_property_default_value_2138907829_name = StringName(from: "get_property_default_value")
        self._method_get_property_default_value_2138907829 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_property_default_value_2138907829_name._native_ptr(), 2138907829)
        assert(Script._method_get_property_default_value_2138907829 != nil)
        let _method_is_tool_36873697_name = StringName(from: "is_tool")
        self._method_is_tool_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_tool_36873697_name._native_ptr(), 36873697)
        assert(Script._method_is_tool_36873697 != nil)
    }

    public func can_instantiate() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_can_instantiate_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func instance_has(base_object: Object) -> UInt8 {
        let base_object_native = base_object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_object_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_has_397768994,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func has_source_code() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_source_code_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_source_code() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_source_code_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func set_source_code(source: String)  {
        withUnsafePointer(to: source) { source_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_source_code_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reload(keep_state: UInt8) -> Error {
        withUnsafePointer(to: keep_state) { keep_state_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(keep_state_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reload_1633102583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
    }
    public func get_base_script() -> Script {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_base_script_278624046,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Script(from: __resPtr.pointee)
    }
    public func get_instance_base_type() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_instance_base_type_2002593661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func has_script_signal(signal_name: StringName) -> UInt8 {
        let signal_name_native = signal_name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(signal_name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_script_signal_2619796661,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_script_property_list() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_script_property_list_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func get_script_method_list() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_script_method_list_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func get_script_signal_list() -> [Dictionary] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_script_signal_list_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func get_script_constant_map() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_script_constant_map_2382534195,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
    }
    public func get_property_default_value(property: StringName) -> Variant {
        let property_native = property._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(property_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_property_default_value_2138907829,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func is_tool() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_tool_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}