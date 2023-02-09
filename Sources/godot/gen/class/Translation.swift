import godot_native

fileprivate var __godot_name_Translation: StringName! = nil

/// Language Translation.
/// 
/// Translations are resources that can be loaded and unloaded on demand. They map a string to another string.
open class Translation : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Translation }

    static var _method__get_plural_message_0: StringName! = nil
    static var _method__get_message_0: StringName! = nil
    static var _method_set_locale_83702148: StringName! = nil
    static var _method_get_locale_201670096: StringName! = nil
    static var _method_add_message_971803314: StringName! = nil
    static var _method_add_plural_message_360316719: StringName! = nil
    static var _method_get_message_58037827: StringName! = nil
    static var _method_get_plural_message_1333931916: StringName! = nil
    static var _method_erase_message_3919944288: StringName! = nil
    static var _method_get_message_list_1139954409: StringName! = nil
    static var _method_get_translated_message_list_1139954409: StringName! = nil
    static var _method_get_message_count_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Translation == nil)
        __godot_name_Translation = StringName(from: "Translation")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_locale_83702148 = StringName(from: "set_locale")
        assert(self._method_set_locale_83702148 != nil)
        self._method_get_locale_201670096 = StringName(from: "get_locale")
        assert(self._method_get_locale_201670096 != nil)
        self._method_add_message_971803314 = StringName(from: "add_message")
        assert(self._method_add_message_971803314 != nil)
        self._method_add_plural_message_360316719 = StringName(from: "add_plural_message")
        assert(self._method_add_plural_message_360316719 != nil)
        self._method_get_message_58037827 = StringName(from: "get_message")
        assert(self._method_get_message_58037827 != nil)
        self._method_get_plural_message_1333931916 = StringName(from: "get_plural_message")
        assert(self._method_get_plural_message_1333931916 != nil)
        self._method_erase_message_3919944288 = StringName(from: "erase_message")
        assert(self._method_erase_message_3919944288 != nil)
        self._method_get_message_list_1139954409 = StringName(from: "get_message_list")
        assert(self._method_get_message_list_1139954409 != nil)
        self._method_get_translated_message_list_1139954409 = StringName(from: "get_translated_message_list")
        assert(self._method_get_translated_message_list_1139954409 != nil)
        self._method_get_message_count_3905245786 = StringName(from: "get_message_count")
        assert(self._method_get_message_count_3905245786 != nil)
    }

    public func _get_plural_message(src_message: StringName, src_plural_message: StringName, n: Int64, context: StringName) -> StringName {
        withUnsafePointer(to: n) { n_native in
        let context_native = context._native_ptr()
        let src_plural_message_native = src_plural_message._native_ptr()
        let src_message_native = src_message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_message_native), .init(src_plural_message_native), .init(n_native), .init(context_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func _get_message(src_message: StringName, context: StringName) -> StringName {
        let context_native = context._native_ptr()
        let src_message_native = src_message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_message_native), .init(context_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            fatalError("Not implemented: virtual default results")
            return StringName(godot: __resPtr.pointee)
    }
    public func set_locale(locale: godot.String)  {
        let locale_native = locale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(locale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_locale_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_locale() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_locale_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func add_message(src_message: StringName, xlated_message: StringName, context: StringName)  {
        let context_native = context._native_ptr()
        let xlated_message_native = xlated_message._native_ptr()
        let src_message_native = src_message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_message_native), .init(xlated_message_native), .init(context_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_message_971803314._native_ptr(),
                    971803314)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_plural_message(src_message: StringName, xlated_messages: PackedStringArray, context: StringName)  {
        let context_native = context._native_ptr()
        let xlated_messages_native = xlated_messages._native_ptr()
        let src_message_native = src_message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_message_native), .init(xlated_messages_native), .init(context_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_plural_message_360316719._native_ptr(),
                    360316719)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_message(src_message: StringName, context: StringName) -> StringName {
        let context_native = context._native_ptr()
        let src_message_native = src_message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_message_native), .init(context_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_message_58037827._native_ptr(),
                    58037827)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func get_plural_message(src_message: StringName, src_plural_message: StringName, n: Int64, context: StringName) -> StringName {
        withUnsafePointer(to: n) { n_native in
        let context_native = context._native_ptr()
        let src_plural_message_native = src_plural_message._native_ptr()
        let src_message_native = src_message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_message_native), .init(src_plural_message_native), .init(n_native), .init(context_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_plural_message_1333931916._native_ptr(),
                    1333931916)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func erase_message(src_message: StringName, context: StringName)  {
        let context_native = context._native_ptr()
        let src_message_native = src_message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(src_message_native), .init(context_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_erase_message_3919944288._native_ptr(),
                    3919944288)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_message_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_message_list_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_translated_message_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_translated_message_list_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_message_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_message_count_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}