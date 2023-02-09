import godot_native

fileprivate var __godot_name_Time: StringName! = nil

/// Time singleton for working with time.
/// 
/// The Time singleton allows converting time between various formats and also getting time information from the system.
///  
/// This class conforms with as many of the ISO 8601 standards as possible. All dates follow the Proleptic Gregorian calendar. As such, the day before [code]1582-10-15[/code] is [code]1582-10-14[/code], not [code]1582-10-04[/code]. The year before 1 AD (aka 1 BC) is number [code]0[/code], with the year before that (2 BC) being [code]-1[/code], etc.
///  
/// Conversion methods assume "the same timezone", and do not handle timezone conversions or DST automatically. Leap seconds are also not handled, they must be done manually if desired. Suffixes such as "Z" are not handled, you need to strip them away manually.
///  
/// When getting time information from the system, the time can either be in the local timezone or UTC depending on the [code]utc[/code] parameter. However, the [method get_unix_time_from_system] method always returns the time in UTC.
///  
/// [b]Important:[/b] The [code]_from_system[/code] methods use the system clock that the user can manually set. [b]Never use[/b] this method for precise time calculation since its results are subject to automatic adjustments by the user or the operating system. [b]Always use[/b] [method get_ticks_usec] or [method get_ticks_msec] for precise time calculation instead, since they are guaranteed to be monotonic (i.e. never decrease).
open class Time : Object {

    public enum Month : Int32 {
        case MONTH_JANUARY = 1
        case MONTH_FEBRUARY = 2
        case MONTH_MARCH = 3
        case MONTH_APRIL = 4
        case MONTH_MAY = 5
        case MONTH_JUNE = 6
        case MONTH_JULY = 7
        case MONTH_AUGUST = 8
        case MONTH_SEPTEMBER = 9
        case MONTH_OCTOBER = 10
        case MONTH_NOVEMBER = 11
        case MONTH_DECEMBER = 12
    }
    public enum Weekday : Int32 {
        case WEEKDAY_SUNDAY = 0
        case WEEKDAY_MONDAY = 1
        case WEEKDAY_TUESDAY = 2
        case WEEKDAY_WEDNESDAY = 3
        case WEEKDAY_THURSDAY = 4
        case WEEKDAY_FRIDAY = 5
        case WEEKDAY_SATURDAY = 6
    }

    public override class var __godot_name: StringName { __godot_name_Time }

    static var _method_get_datetime_dict_from_unix_time_3485342025: StringName! = nil
    static var _method_get_date_dict_from_unix_time_3485342025: StringName! = nil
    static var _method_get_time_dict_from_unix_time_3485342025: StringName! = nil
    static var _method_get_datetime_string_from_unix_time_2311239925: StringName! = nil
    static var _method_get_date_string_from_unix_time_844755477: StringName! = nil
    static var _method_get_time_string_from_unix_time_844755477: StringName! = nil
    static var _method_get_datetime_dict_from_datetime_string_3253569256: StringName! = nil
    static var _method_get_datetime_string_from_datetime_dict_1898123706: StringName! = nil
    static var _method_get_unix_time_from_datetime_dict_3021115443: StringName! = nil
    static var _method_get_unix_time_from_datetime_string_1321353865: StringName! = nil
    static var _method_get_offset_string_from_offset_minutes_844755477: StringName! = nil
    static var _method_get_datetime_dict_from_system_205769976: StringName! = nil
    static var _method_get_date_dict_from_system_205769976: StringName! = nil
    static var _method_get_time_dict_from_system_205769976: StringName! = nil
    static var _method_get_datetime_string_from_system_1136425492: StringName! = nil
    static var _method_get_date_string_from_system_1162154673: StringName! = nil
    static var _method_get_time_string_from_system_1162154673: StringName! = nil
    static var _method_get_time_zone_from_system_3102165223: StringName! = nil
    static var _method_get_unix_time_from_system_1740695150: StringName! = nil
    static var _method_get_ticks_msec_3905245786: StringName! = nil
    static var _method_get_ticks_usec_3905245786: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Time == nil)
        __godot_name_Time = StringName(from: "Time")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_datetime_dict_from_unix_time_3485342025 = StringName(from: "get_datetime_dict_from_unix_time")
        assert(self._method_get_datetime_dict_from_unix_time_3485342025 != nil)
        self._method_get_date_dict_from_unix_time_3485342025 = StringName(from: "get_date_dict_from_unix_time")
        assert(self._method_get_date_dict_from_unix_time_3485342025 != nil)
        self._method_get_time_dict_from_unix_time_3485342025 = StringName(from: "get_time_dict_from_unix_time")
        assert(self._method_get_time_dict_from_unix_time_3485342025 != nil)
        self._method_get_datetime_string_from_unix_time_2311239925 = StringName(from: "get_datetime_string_from_unix_time")
        assert(self._method_get_datetime_string_from_unix_time_2311239925 != nil)
        self._method_get_date_string_from_unix_time_844755477 = StringName(from: "get_date_string_from_unix_time")
        assert(self._method_get_date_string_from_unix_time_844755477 != nil)
        self._method_get_time_string_from_unix_time_844755477 = StringName(from: "get_time_string_from_unix_time")
        assert(self._method_get_time_string_from_unix_time_844755477 != nil)
        self._method_get_datetime_dict_from_datetime_string_3253569256 = StringName(from: "get_datetime_dict_from_datetime_string")
        assert(self._method_get_datetime_dict_from_datetime_string_3253569256 != nil)
        self._method_get_datetime_string_from_datetime_dict_1898123706 = StringName(from: "get_datetime_string_from_datetime_dict")
        assert(self._method_get_datetime_string_from_datetime_dict_1898123706 != nil)
        self._method_get_unix_time_from_datetime_dict_3021115443 = StringName(from: "get_unix_time_from_datetime_dict")
        assert(self._method_get_unix_time_from_datetime_dict_3021115443 != nil)
        self._method_get_unix_time_from_datetime_string_1321353865 = StringName(from: "get_unix_time_from_datetime_string")
        assert(self._method_get_unix_time_from_datetime_string_1321353865 != nil)
        self._method_get_offset_string_from_offset_minutes_844755477 = StringName(from: "get_offset_string_from_offset_minutes")
        assert(self._method_get_offset_string_from_offset_minutes_844755477 != nil)
        self._method_get_datetime_dict_from_system_205769976 = StringName(from: "get_datetime_dict_from_system")
        assert(self._method_get_datetime_dict_from_system_205769976 != nil)
        self._method_get_date_dict_from_system_205769976 = StringName(from: "get_date_dict_from_system")
        assert(self._method_get_date_dict_from_system_205769976 != nil)
        self._method_get_time_dict_from_system_205769976 = StringName(from: "get_time_dict_from_system")
        assert(self._method_get_time_dict_from_system_205769976 != nil)
        self._method_get_datetime_string_from_system_1136425492 = StringName(from: "get_datetime_string_from_system")
        assert(self._method_get_datetime_string_from_system_1136425492 != nil)
        self._method_get_date_string_from_system_1162154673 = StringName(from: "get_date_string_from_system")
        assert(self._method_get_date_string_from_system_1162154673 != nil)
        self._method_get_time_string_from_system_1162154673 = StringName(from: "get_time_string_from_system")
        assert(self._method_get_time_string_from_system_1162154673 != nil)
        self._method_get_time_zone_from_system_3102165223 = StringName(from: "get_time_zone_from_system")
        assert(self._method_get_time_zone_from_system_3102165223 != nil)
        self._method_get_unix_time_from_system_1740695150 = StringName(from: "get_unix_time_from_system")
        assert(self._method_get_unix_time_from_system_1740695150 != nil)
        self._method_get_ticks_msec_3905245786 = StringName(from: "get_ticks_msec")
        assert(self._method_get_ticks_msec_3905245786 != nil)
        self._method_get_ticks_usec_3905245786 = StringName(from: "get_ticks_usec")
        assert(self._method_get_ticks_usec_3905245786 != nil)
    }

    public func get_datetime_dict_from_unix_time(unix_time_val: Int64) -> Dictionary {
        withUnsafePointer(to: unix_time_val) { unix_time_val_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unix_time_val_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_datetime_dict_from_unix_time_3485342025._native_ptr(),
                    3485342025)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func get_date_dict_from_unix_time(unix_time_val: Int64) -> Dictionary {
        withUnsafePointer(to: unix_time_val) { unix_time_val_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unix_time_val_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_date_dict_from_unix_time_3485342025._native_ptr(),
                    3485342025)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func get_time_dict_from_unix_time(unix_time_val: Int64) -> Dictionary {
        withUnsafePointer(to: unix_time_val) { unix_time_val_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unix_time_val_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_time_dict_from_unix_time_3485342025._native_ptr(),
                    3485342025)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func get_datetime_string_from_unix_time(unix_time_val: Int64, use_space: UInt8) -> godot.String {
        withUnsafePointer(to: use_space) { use_space_native in
        withUnsafePointer(to: unix_time_val) { unix_time_val_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unix_time_val_native), .init(use_space_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_datetime_string_from_unix_time_2311239925._native_ptr(),
                    2311239925)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
        }
    }
    public func get_date_string_from_unix_time(unix_time_val: Int64) -> godot.String {
        withUnsafePointer(to: unix_time_val) { unix_time_val_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unix_time_val_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_date_string_from_unix_time_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_time_string_from_unix_time(unix_time_val: Int64) -> godot.String {
        withUnsafePointer(to: unix_time_val) { unix_time_val_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(unix_time_val_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_time_string_from_unix_time_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_datetime_dict_from_datetime_string(datetime: godot.String, weekday: UInt8) -> Dictionary {
        withUnsafePointer(to: weekday) { weekday_native in
        let datetime_native = datetime._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(datetime_native), .init(weekday_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_datetime_dict_from_datetime_string_3253569256._native_ptr(),
                    3253569256)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func get_datetime_string_from_datetime_dict(datetime: Dictionary, use_space: UInt8) -> godot.String {
        withUnsafePointer(to: use_space) { use_space_native in
        let datetime_native = datetime._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(datetime_native), .init(use_space_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_datetime_string_from_datetime_dict_1898123706._native_ptr(),
                    1898123706)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_unix_time_from_datetime_dict(datetime: Dictionary) -> Int64 {
        let datetime_native = datetime._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(datetime_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_unix_time_from_datetime_dict_3021115443._native_ptr(),
                    3021115443)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_unix_time_from_datetime_string(datetime: godot.String) -> Int64 {
        let datetime_native = datetime._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(datetime_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_unix_time_from_datetime_string_1321353865._native_ptr(),
                    1321353865)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_offset_string_from_offset_minutes(offset_minutes: Int64) -> godot.String {
        withUnsafePointer(to: offset_minutes) { offset_minutes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_minutes_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_offset_string_from_offset_minutes_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_datetime_dict_from_system(utc: UInt8) -> Dictionary {
        withUnsafePointer(to: utc) { utc_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(utc_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_datetime_dict_from_system_205769976._native_ptr(),
                    205769976)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func get_date_dict_from_system(utc: UInt8) -> Dictionary {
        withUnsafePointer(to: utc) { utc_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(utc_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_date_dict_from_system_205769976._native_ptr(),
                    205769976)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func get_time_dict_from_system(utc: UInt8) -> Dictionary {
        withUnsafePointer(to: utc) { utc_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(utc_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_time_dict_from_system_205769976._native_ptr(),
                    205769976)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
        }
    }
    public func get_datetime_string_from_system(utc: UInt8, use_space: UInt8) -> godot.String {
        withUnsafePointer(to: use_space) { use_space_native in
        withUnsafePointer(to: utc) { utc_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(utc_native), .init(use_space_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_datetime_string_from_system_1136425492._native_ptr(),
                    1136425492)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
        }
    }
    public func get_date_string_from_system(utc: UInt8) -> godot.String {
        withUnsafePointer(to: utc) { utc_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(utc_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_date_string_from_system_1162154673._native_ptr(),
                    1162154673)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_time_string_from_system(utc: UInt8) -> godot.String {
        withUnsafePointer(to: utc) { utc_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(utc_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_time_string_from_system_1162154673._native_ptr(),
                    1162154673)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func get_time_zone_from_system() -> Dictionary {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_time_zone_from_system_3102165223._native_ptr(),
                    3102165223)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(godot: __resPtr.pointee)
    }
    public func get_unix_time_from_system() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_unix_time_from_system_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_ticks_msec() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ticks_msec_3905245786._native_ptr(),
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
    public func get_ticks_usec() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ticks_usec_3905245786._native_ptr(),
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