import godot_native

fileprivate var __godot_name_Translation: StringName! = nil

/// Language Translation.
/// 
/// Translations are resources that can be loaded and unloaded on demand. They map a string to another string.
public class Translation : Resource {

    

    public override class var __godot_name: StringName { __godot_name_Translation }

    static var _method__get_plural_message_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_message_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_locale_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_locale_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_add_message_971803314: GDExtensionMethodBindPtr! = nil
    static var _method_add_plural_message_360316719: GDExtensionMethodBindPtr! = nil
    static var _method_get_message_58037827: GDExtensionMethodBindPtr! = nil
    static var _method_get_plural_message_1333931916: GDExtensionMethodBindPtr! = nil
    static var _method_erase_message_3919944288: GDExtensionMethodBindPtr! = nil
    static var _method_get_message_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_translated_message_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_message_count_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Translation = StringName(from: "Translation")

        let _method_set_locale_83702148_name = StringName(from: "set_locale")
        self._method_set_locale_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_locale_83702148_name._native_ptr(), 83702148)
        assert(Translation._method_set_locale_83702148 != nil)
        let _method_get_locale_201670096_name = StringName(from: "get_locale")
        self._method_get_locale_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_locale_201670096_name._native_ptr(), 201670096)
        assert(Translation._method_get_locale_201670096 != nil)
        let _method_add_message_971803314_name = StringName(from: "add_message")
        self._method_add_message_971803314 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_message_971803314_name._native_ptr(), 971803314)
        assert(Translation._method_add_message_971803314 != nil)
        let _method_add_plural_message_360316719_name = StringName(from: "add_plural_message")
        self._method_add_plural_message_360316719 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_plural_message_360316719_name._native_ptr(), 360316719)
        assert(Translation._method_add_plural_message_360316719 != nil)
        let _method_get_message_58037827_name = StringName(from: "get_message")
        self._method_get_message_58037827 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_message_58037827_name._native_ptr(), 58037827)
        assert(Translation._method_get_message_58037827 != nil)
        let _method_get_plural_message_1333931916_name = StringName(from: "get_plural_message")
        self._method_get_plural_message_1333931916 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_plural_message_1333931916_name._native_ptr(), 1333931916)
        assert(Translation._method_get_plural_message_1333931916 != nil)
        let _method_erase_message_3919944288_name = StringName(from: "erase_message")
        self._method_erase_message_3919944288 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_erase_message_3919944288_name._native_ptr(), 3919944288)
        assert(Translation._method_erase_message_3919944288 != nil)
        let _method_get_message_list_1139954409_name = StringName(from: "get_message_list")
        self._method_get_message_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_message_list_1139954409_name._native_ptr(), 1139954409)
        assert(Translation._method_get_message_list_1139954409 != nil)
        let _method_get_translated_message_list_1139954409_name = StringName(from: "get_translated_message_list")
        self._method_get_translated_message_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_translated_message_list_1139954409_name._native_ptr(), 1139954409)
        assert(Translation._method_get_translated_message_list_1139954409 != nil)
        let _method_get_message_count_3905245786_name = StringName(from: "get_message_count")
        self._method_get_message_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_message_count_3905245786_name._native_ptr(), 3905245786)
        assert(Translation._method_get_message_count_3905245786 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_plural_message_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_message_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
    }
    public func set_locale(locale: String)  {
        withUnsafePointer(to: locale) { locale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(locale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_locale_83702148,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_locale() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_locale_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_message_971803314,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_plural_message_360316719,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_message_58037827,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_plural_message_1333931916,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_erase_message_3919944288,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_message_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func get_translated_message_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_translated_message_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func get_message_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_message_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
}