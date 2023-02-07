/// MISSING GODOT DOCUMENTATION
/// 
/// 
public struct KeyModifierMask: OptionSet {
    public let rawValue: Int32
    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }
    static let KEY_CODE_MASK = KeyModifierMask(rawValue: 8388607)
    static let KEY_MODIFIER_MASK = KeyModifierMask(rawValue: 532676608)
    static let KEY_MASK_CMD_OR_CTRL = KeyModifierMask(rawValue: 16777216)
    static let KEY_MASK_SHIFT = KeyModifierMask(rawValue: 33554432)
    static let KEY_MASK_ALT = KeyModifierMask(rawValue: 67108864)
    static let KEY_MASK_META = KeyModifierMask(rawValue: 134217728)
    static let KEY_MASK_CTRL = KeyModifierMask(rawValue: 268435456)
    static let KEY_MASK_KPAD = KeyModifierMask(rawValue: 536870912)
    static let KEY_MASK_GROUP_SWITCH = KeyModifierMask(rawValue: 1073741824)
}