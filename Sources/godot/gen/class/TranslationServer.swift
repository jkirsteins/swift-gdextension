import godot_native

fileprivate var __godot_name_TranslationServer: StringName! = nil

/// Server that manages all translations.
/// 
/// Server that manages all translations. Translations can be set to it and removed from it.
open class TranslationServer : Object {

    

    public override class var __godot_name: StringName { __godot_name_TranslationServer }

    static var _method_set_locale_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_locale_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_tool_locale_2841200299: GDExtensionMethodBindPtr! = nil
    static var _method_compare_locales_2878152881: GDExtensionMethodBindPtr! = nil
    static var _method_standardize_locale_3135753539: GDExtensionMethodBindPtr! = nil
    static var _method_get_all_languages_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_language_name_3135753539: GDExtensionMethodBindPtr! = nil
    static var _method_get_all_scripts_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_script_name_3135753539: GDExtensionMethodBindPtr! = nil
    static var _method_get_all_countries_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_country_name_3135753539: GDExtensionMethodBindPtr! = nil
    static var _method_get_locale_name_3135753539: GDExtensionMethodBindPtr! = nil
    static var _method_translate_58037827: GDExtensionMethodBindPtr! = nil
    static var _method_translate_plural_1333931916: GDExtensionMethodBindPtr! = nil
    static var _method_add_translation_1466479800: GDExtensionMethodBindPtr! = nil
    static var _method_remove_translation_1466479800: GDExtensionMethodBindPtr! = nil
    static var _method_get_translation_object_2065240175: GDExtensionMethodBindPtr! = nil
    static var _method_clear_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_loaded_locales_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_is_pseudolocalization_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_pseudolocalization_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_reload_pseudolocalization_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_pseudolocalize_1965194235: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_TranslationServer = StringName(from: "TranslationServer")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_locale_83702148_name = StringName(from: "set_locale")
        self._method_set_locale_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_set_locale_83702148_name._native_ptr(), 83702148)
        assert(TranslationServer._method_set_locale_83702148 != nil)
        let _method_get_locale_201670096_name = StringName(from: "get_locale")
        self._method_get_locale_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_get_locale_201670096_name._native_ptr(), 201670096)
        assert(TranslationServer._method_get_locale_201670096 != nil)
        let _method_get_tool_locale_2841200299_name = StringName(from: "get_tool_locale")
        self._method_get_tool_locale_2841200299 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_get_tool_locale_2841200299_name._native_ptr(), 2841200299)
        assert(TranslationServer._method_get_tool_locale_2841200299 != nil)
        let _method_compare_locales_2878152881_name = StringName(from: "compare_locales")
        self._method_compare_locales_2878152881 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_compare_locales_2878152881_name._native_ptr(), 2878152881)
        assert(TranslationServer._method_compare_locales_2878152881 != nil)
        let _method_standardize_locale_3135753539_name = StringName(from: "standardize_locale")
        self._method_standardize_locale_3135753539 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_standardize_locale_3135753539_name._native_ptr(), 3135753539)
        assert(TranslationServer._method_standardize_locale_3135753539 != nil)
        let _method_get_all_languages_1139954409_name = StringName(from: "get_all_languages")
        self._method_get_all_languages_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_get_all_languages_1139954409_name._native_ptr(), 1139954409)
        assert(TranslationServer._method_get_all_languages_1139954409 != nil)
        let _method_get_language_name_3135753539_name = StringName(from: "get_language_name")
        self._method_get_language_name_3135753539 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_get_language_name_3135753539_name._native_ptr(), 3135753539)
        assert(TranslationServer._method_get_language_name_3135753539 != nil)
        let _method_get_all_scripts_1139954409_name = StringName(from: "get_all_scripts")
        self._method_get_all_scripts_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_get_all_scripts_1139954409_name._native_ptr(), 1139954409)
        assert(TranslationServer._method_get_all_scripts_1139954409 != nil)
        let _method_get_script_name_3135753539_name = StringName(from: "get_script_name")
        self._method_get_script_name_3135753539 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_get_script_name_3135753539_name._native_ptr(), 3135753539)
        assert(TranslationServer._method_get_script_name_3135753539 != nil)
        let _method_get_all_countries_1139954409_name = StringName(from: "get_all_countries")
        self._method_get_all_countries_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_get_all_countries_1139954409_name._native_ptr(), 1139954409)
        assert(TranslationServer._method_get_all_countries_1139954409 != nil)
        let _method_get_country_name_3135753539_name = StringName(from: "get_country_name")
        self._method_get_country_name_3135753539 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_get_country_name_3135753539_name._native_ptr(), 3135753539)
        assert(TranslationServer._method_get_country_name_3135753539 != nil)
        let _method_get_locale_name_3135753539_name = StringName(from: "get_locale_name")
        self._method_get_locale_name_3135753539 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_get_locale_name_3135753539_name._native_ptr(), 3135753539)
        assert(TranslationServer._method_get_locale_name_3135753539 != nil)
        let _method_translate_58037827_name = StringName(from: "translate")
        self._method_translate_58037827 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_translate_58037827_name._native_ptr(), 58037827)
        assert(TranslationServer._method_translate_58037827 != nil)
        let _method_translate_plural_1333931916_name = StringName(from: "translate_plural")
        self._method_translate_plural_1333931916 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_translate_plural_1333931916_name._native_ptr(), 1333931916)
        assert(TranslationServer._method_translate_plural_1333931916 != nil)
        let _method_add_translation_1466479800_name = StringName(from: "add_translation")
        self._method_add_translation_1466479800 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_add_translation_1466479800_name._native_ptr(), 1466479800)
        assert(TranslationServer._method_add_translation_1466479800 != nil)
        let _method_remove_translation_1466479800_name = StringName(from: "remove_translation")
        self._method_remove_translation_1466479800 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_remove_translation_1466479800_name._native_ptr(), 1466479800)
        assert(TranslationServer._method_remove_translation_1466479800 != nil)
        let _method_get_translation_object_2065240175_name = StringName(from: "get_translation_object")
        self._method_get_translation_object_2065240175 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_get_translation_object_2065240175_name._native_ptr(), 2065240175)
        assert(TranslationServer._method_get_translation_object_2065240175 != nil)
        let _method_clear_3218959716_name = StringName(from: "clear")
        self._method_clear_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_clear_3218959716_name._native_ptr(), 3218959716)
        assert(TranslationServer._method_clear_3218959716 != nil)
        let _method_get_loaded_locales_1139954409_name = StringName(from: "get_loaded_locales")
        self._method_get_loaded_locales_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_get_loaded_locales_1139954409_name._native_ptr(), 1139954409)
        assert(TranslationServer._method_get_loaded_locales_1139954409 != nil)
        let _method_is_pseudolocalization_enabled_36873697_name = StringName(from: "is_pseudolocalization_enabled")
        self._method_is_pseudolocalization_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_is_pseudolocalization_enabled_36873697_name._native_ptr(), 36873697)
        assert(TranslationServer._method_is_pseudolocalization_enabled_36873697 != nil)
        let _method_set_pseudolocalization_enabled_2586408642_name = StringName(from: "set_pseudolocalization_enabled")
        self._method_set_pseudolocalization_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_set_pseudolocalization_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(TranslationServer._method_set_pseudolocalization_enabled_2586408642 != nil)
        let _method_reload_pseudolocalization_3218959716_name = StringName(from: "reload_pseudolocalization")
        self._method_reload_pseudolocalization_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_reload_pseudolocalization_3218959716_name._native_ptr(), 3218959716)
        assert(TranslationServer._method_reload_pseudolocalization_3218959716 != nil)
        let _method_pseudolocalize_1965194235_name = StringName(from: "pseudolocalize")
        self._method_pseudolocalize_1965194235 = self.interface.pointee.classdb_get_method_bind(__godot_name_TranslationServer._native_ptr(), _method_pseudolocalize_1965194235_name._native_ptr(), 1965194235)
        assert(TranslationServer._method_pseudolocalize_1965194235 != nil)
    }

    public func set_locale(locale: godot.String)  {
        let locale_native = locale._native_ptr()
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
    public func get_locale() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_locale_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_tool_locale() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tool_locale_2841200299,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func compare_locales(locale_a: godot.String, locale_b: godot.String) -> Int64 {
        let locale_b_native = locale_b._native_ptr()
        let locale_a_native = locale_a._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(locale_a_native), .init(locale_b_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_compare_locales_2878152881,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func standardize_locale(locale: godot.String) -> godot.String {
        let locale_native = locale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(locale_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_standardize_locale_3135753539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_all_languages() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_all_languages_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_language_name(language: godot.String) -> godot.String {
        let language_native = language._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(language_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_language_name_3135753539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_all_scripts() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_all_scripts_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_script_name(script: godot.String) -> godot.String {
        let script_native = script._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(script_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_script_name_3135753539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_all_countries() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_all_countries_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_country_name(country: godot.String) -> godot.String {
        let country_native = country._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(country_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_country_name_3135753539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_locale_name(locale: godot.String) -> godot.String {
        let locale_native = locale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(locale_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_locale_name_3135753539,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func translate(message: StringName, context: StringName) -> StringName {
        let context_native = context._native_ptr()
        let message_native = message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(message_native), .init(context_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_translate_58037827,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func translate_plural(message: StringName, plural_message: StringName, n: Int64, context: StringName) -> StringName {
        withUnsafePointer(to: n) { n_native in
        let context_native = context._native_ptr()
        let plural_message_native = plural_message._native_ptr()
        let message_native = message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(message_native), .init(plural_message_native), .init(n_native), .init(context_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_translate_plural_1333931916,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
        }
    }
    public func add_translation(translation: Translation)  {
        let translation_native = translation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(translation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_translation_1466479800,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_translation(translation: Translation)  {
        let translation_native = translation._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(translation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_translation_1466479800,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_translation_object(locale: godot.String) -> Translation {
        let locale_native = locale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(locale_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_translation_object_2065240175,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Translation(godot: __resPtr.pointee)
    }
    public func clear()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_loaded_locales() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_loaded_locales_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func is_pseudolocalization_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_pseudolocalization_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_pseudolocalization_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pseudolocalization_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reload_pseudolocalization()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reload_pseudolocalization_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func pseudolocalize(message: StringName) -> StringName {
        let message_native = message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(message_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pseudolocalize_1965194235,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
}