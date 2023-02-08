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

    static var _method_get_datetime_dict_from_unix_time_3485342025: GDExtensionMethodBindPtr! = nil
    static var _method_get_date_dict_from_unix_time_3485342025: GDExtensionMethodBindPtr! = nil
    static var _method_get_time_dict_from_unix_time_3485342025: GDExtensionMethodBindPtr! = nil
    static var _method_get_datetime_string_from_unix_time_2311239925: GDExtensionMethodBindPtr! = nil
    static var _method_get_date_string_from_unix_time_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_time_string_from_unix_time_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_datetime_dict_from_datetime_string_3253569256: GDExtensionMethodBindPtr! = nil
    static var _method_get_datetime_string_from_datetime_dict_1898123706: GDExtensionMethodBindPtr! = nil
    static var _method_get_unix_time_from_datetime_dict_3021115443: GDExtensionMethodBindPtr! = nil
    static var _method_get_unix_time_from_datetime_string_1321353865: GDExtensionMethodBindPtr! = nil
    static var _method_get_offset_string_from_offset_minutes_844755477: GDExtensionMethodBindPtr! = nil
    static var _method_get_datetime_dict_from_system_205769976: GDExtensionMethodBindPtr! = nil
    static var _method_get_date_dict_from_system_205769976: GDExtensionMethodBindPtr! = nil
    static var _method_get_time_dict_from_system_205769976: GDExtensionMethodBindPtr! = nil
    static var _method_get_datetime_string_from_system_1136425492: GDExtensionMethodBindPtr! = nil
    static var _method_get_date_string_from_system_1162154673: GDExtensionMethodBindPtr! = nil
    static var _method_get_time_string_from_system_1162154673: GDExtensionMethodBindPtr! = nil
    static var _method_get_time_zone_from_system_3102165223: GDExtensionMethodBindPtr! = nil
    static var _method_get_unix_time_from_system_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_ticks_msec_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_ticks_usec_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Time = StringName(from: "Time")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_datetime_dict_from_unix_time_3485342025_name = StringName(from: "get_datetime_dict_from_unix_time")
        self._method_get_datetime_dict_from_unix_time_3485342025 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_datetime_dict_from_unix_time_3485342025_name._native_ptr(), 3485342025)
        assert(Time._method_get_datetime_dict_from_unix_time_3485342025 != nil)
        let _method_get_date_dict_from_unix_time_3485342025_name = StringName(from: "get_date_dict_from_unix_time")
        self._method_get_date_dict_from_unix_time_3485342025 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_date_dict_from_unix_time_3485342025_name._native_ptr(), 3485342025)
        assert(Time._method_get_date_dict_from_unix_time_3485342025 != nil)
        let _method_get_time_dict_from_unix_time_3485342025_name = StringName(from: "get_time_dict_from_unix_time")
        self._method_get_time_dict_from_unix_time_3485342025 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_time_dict_from_unix_time_3485342025_name._native_ptr(), 3485342025)
        assert(Time._method_get_time_dict_from_unix_time_3485342025 != nil)
        let _method_get_datetime_string_from_unix_time_2311239925_name = StringName(from: "get_datetime_string_from_unix_time")
        self._method_get_datetime_string_from_unix_time_2311239925 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_datetime_string_from_unix_time_2311239925_name._native_ptr(), 2311239925)
        assert(Time._method_get_datetime_string_from_unix_time_2311239925 != nil)
        let _method_get_date_string_from_unix_time_844755477_name = StringName(from: "get_date_string_from_unix_time")
        self._method_get_date_string_from_unix_time_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_date_string_from_unix_time_844755477_name._native_ptr(), 844755477)
        assert(Time._method_get_date_string_from_unix_time_844755477 != nil)
        let _method_get_time_string_from_unix_time_844755477_name = StringName(from: "get_time_string_from_unix_time")
        self._method_get_time_string_from_unix_time_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_time_string_from_unix_time_844755477_name._native_ptr(), 844755477)
        assert(Time._method_get_time_string_from_unix_time_844755477 != nil)
        let _method_get_datetime_dict_from_datetime_string_3253569256_name = StringName(from: "get_datetime_dict_from_datetime_string")
        self._method_get_datetime_dict_from_datetime_string_3253569256 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_datetime_dict_from_datetime_string_3253569256_name._native_ptr(), 3253569256)
        assert(Time._method_get_datetime_dict_from_datetime_string_3253569256 != nil)
        let _method_get_datetime_string_from_datetime_dict_1898123706_name = StringName(from: "get_datetime_string_from_datetime_dict")
        self._method_get_datetime_string_from_datetime_dict_1898123706 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_datetime_string_from_datetime_dict_1898123706_name._native_ptr(), 1898123706)
        assert(Time._method_get_datetime_string_from_datetime_dict_1898123706 != nil)
        let _method_get_unix_time_from_datetime_dict_3021115443_name = StringName(from: "get_unix_time_from_datetime_dict")
        self._method_get_unix_time_from_datetime_dict_3021115443 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_unix_time_from_datetime_dict_3021115443_name._native_ptr(), 3021115443)
        assert(Time._method_get_unix_time_from_datetime_dict_3021115443 != nil)
        let _method_get_unix_time_from_datetime_string_1321353865_name = StringName(from: "get_unix_time_from_datetime_string")
        self._method_get_unix_time_from_datetime_string_1321353865 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_unix_time_from_datetime_string_1321353865_name._native_ptr(), 1321353865)
        assert(Time._method_get_unix_time_from_datetime_string_1321353865 != nil)
        let _method_get_offset_string_from_offset_minutes_844755477_name = StringName(from: "get_offset_string_from_offset_minutes")
        self._method_get_offset_string_from_offset_minutes_844755477 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_offset_string_from_offset_minutes_844755477_name._native_ptr(), 844755477)
        assert(Time._method_get_offset_string_from_offset_minutes_844755477 != nil)
        let _method_get_datetime_dict_from_system_205769976_name = StringName(from: "get_datetime_dict_from_system")
        self._method_get_datetime_dict_from_system_205769976 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_datetime_dict_from_system_205769976_name._native_ptr(), 205769976)
        assert(Time._method_get_datetime_dict_from_system_205769976 != nil)
        let _method_get_date_dict_from_system_205769976_name = StringName(from: "get_date_dict_from_system")
        self._method_get_date_dict_from_system_205769976 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_date_dict_from_system_205769976_name._native_ptr(), 205769976)
        assert(Time._method_get_date_dict_from_system_205769976 != nil)
        let _method_get_time_dict_from_system_205769976_name = StringName(from: "get_time_dict_from_system")
        self._method_get_time_dict_from_system_205769976 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_time_dict_from_system_205769976_name._native_ptr(), 205769976)
        assert(Time._method_get_time_dict_from_system_205769976 != nil)
        let _method_get_datetime_string_from_system_1136425492_name = StringName(from: "get_datetime_string_from_system")
        self._method_get_datetime_string_from_system_1136425492 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_datetime_string_from_system_1136425492_name._native_ptr(), 1136425492)
        assert(Time._method_get_datetime_string_from_system_1136425492 != nil)
        let _method_get_date_string_from_system_1162154673_name = StringName(from: "get_date_string_from_system")
        self._method_get_date_string_from_system_1162154673 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_date_string_from_system_1162154673_name._native_ptr(), 1162154673)
        assert(Time._method_get_date_string_from_system_1162154673 != nil)
        let _method_get_time_string_from_system_1162154673_name = StringName(from: "get_time_string_from_system")
        self._method_get_time_string_from_system_1162154673 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_time_string_from_system_1162154673_name._native_ptr(), 1162154673)
        assert(Time._method_get_time_string_from_system_1162154673 != nil)
        let _method_get_time_zone_from_system_3102165223_name = StringName(from: "get_time_zone_from_system")
        self._method_get_time_zone_from_system_3102165223 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_time_zone_from_system_3102165223_name._native_ptr(), 3102165223)
        assert(Time._method_get_time_zone_from_system_3102165223 != nil)
        let _method_get_unix_time_from_system_1740695150_name = StringName(from: "get_unix_time_from_system")
        self._method_get_unix_time_from_system_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_unix_time_from_system_1740695150_name._native_ptr(), 1740695150)
        assert(Time._method_get_unix_time_from_system_1740695150 != nil)
        let _method_get_ticks_msec_3905245786_name = StringName(from: "get_ticks_msec")
        self._method_get_ticks_msec_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_ticks_msec_3905245786_name._native_ptr(), 3905245786)
        assert(Time._method_get_ticks_msec_3905245786 != nil)
        let _method_get_ticks_usec_3905245786_name = StringName(from: "get_ticks_usec")
        self._method_get_ticks_usec_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_Time._native_ptr(), _method_get_ticks_usec_3905245786_name._native_ptr(), 3905245786)
        assert(Time._method_get_ticks_usec_3905245786 != nil)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_datetime_dict_from_unix_time_3485342025,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_date_dict_from_unix_time_3485342025,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_time_dict_from_unix_time_3485342025,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_datetime_string_from_unix_time_2311239925,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_date_string_from_unix_time_844755477,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_time_string_from_unix_time_844755477,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_datetime_dict_from_datetime_string_3253569256,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_datetime_string_from_datetime_dict_1898123706,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_unix_time_from_datetime_dict_3021115443,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_unix_time_from_datetime_string_1321353865,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_offset_string_from_offset_minutes_844755477,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_datetime_dict_from_system_205769976,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_date_dict_from_system_205769976,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_time_dict_from_system_205769976,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_datetime_string_from_system_1136425492,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_date_string_from_system_1162154673,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_time_string_from_system_1162154673,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_time_zone_from_system_3102165223,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_unix_time_from_system_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ticks_msec_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ticks_usec_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}