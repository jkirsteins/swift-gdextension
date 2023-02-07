/// MISSING GODOT DOCUMENTATION
/// 
/// 
public struct PropertyUsageFlags: OptionSet {
    public let rawValue: Int32
    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }
    static let PROPERTY_USAGE_NONE: PropertyUsageFlags = []
    static let PROPERTY_USAGE_STORAGE = PropertyUsageFlags(rawValue: 2)
    static let PROPERTY_USAGE_EDITOR = PropertyUsageFlags(rawValue: 4)
    static let PROPERTY_USAGE_INTERNAL = PropertyUsageFlags(rawValue: 8)
    static let PROPERTY_USAGE_CHECKABLE = PropertyUsageFlags(rawValue: 16)
    static let PROPERTY_USAGE_CHECKED = PropertyUsageFlags(rawValue: 32)
    static let PROPERTY_USAGE_GROUP = PropertyUsageFlags(rawValue: 64)
    static let PROPERTY_USAGE_CATEGORY = PropertyUsageFlags(rawValue: 128)
    static let PROPERTY_USAGE_SUBGROUP = PropertyUsageFlags(rawValue: 256)
    static let PROPERTY_USAGE_CLASS_IS_BITFIELD = PropertyUsageFlags(rawValue: 512)
    static let PROPERTY_USAGE_NO_INSTANCE_STATE = PropertyUsageFlags(rawValue: 1024)
    static let PROPERTY_USAGE_RESTART_IF_CHANGED = PropertyUsageFlags(rawValue: 2048)
    static let PROPERTY_USAGE_SCRIPT_VARIABLE = PropertyUsageFlags(rawValue: 4096)
    static let PROPERTY_USAGE_STORE_IF_NULL = PropertyUsageFlags(rawValue: 8192)
    static let PROPERTY_USAGE_UPDATE_ALL_IF_MODIFIED = PropertyUsageFlags(rawValue: 16384)
    static let PROPERTY_USAGE_SCRIPT_DEFAULT_VALUE = PropertyUsageFlags(rawValue: 32768)
    static let PROPERTY_USAGE_CLASS_IS_ENUM = PropertyUsageFlags(rawValue: 65536)
    static let PROPERTY_USAGE_NIL_IS_VARIANT = PropertyUsageFlags(rawValue: 131072)
    static let PROPERTY_USAGE_ARRAY = PropertyUsageFlags(rawValue: 262144)
    static let PROPERTY_USAGE_ALWAYS_DUPLICATE = PropertyUsageFlags(rawValue: 524288)
    static let PROPERTY_USAGE_NEVER_DUPLICATE = PropertyUsageFlags(rawValue: 1048576)
    static let PROPERTY_USAGE_HIGH_END_GFX = PropertyUsageFlags(rawValue: 2097152)
    static let PROPERTY_USAGE_NODE_PATH_FROM_SCENE_ROOT = PropertyUsageFlags(rawValue: 4194304)
    static let PROPERTY_USAGE_RESOURCE_NOT_PERSISTENT = PropertyUsageFlags(rawValue: 8388608)
    static let PROPERTY_USAGE_KEYING_INCREMENTS = PropertyUsageFlags(rawValue: 16777216)
    static let PROPERTY_USAGE_DEFERRED_SET_RESOURCE = PropertyUsageFlags(rawValue: 33554432)
    static let PROPERTY_USAGE_EDITOR_INSTANTIATE_OBJECT = PropertyUsageFlags(rawValue: 67108864)
    static let PROPERTY_USAGE_EDITOR_BASIC_SETTING = PropertyUsageFlags(rawValue: 134217728)
    static let PROPERTY_USAGE_READ_ONLY = PropertyUsageFlags(rawValue: 268435456)
    static let PROPERTY_USAGE_DEFAULT = PropertyUsageFlags(rawValue: 6)
    static let PROPERTY_USAGE_NO_EDITOR = PropertyUsageFlags(rawValue: 2)
}