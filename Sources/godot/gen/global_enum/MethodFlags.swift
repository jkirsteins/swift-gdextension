/// MISSING GODOT DOCUMENTATION
/// 
/// 
public struct MethodFlags: OptionSet {
    public let rawValue: Int32
    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }
    static let METHOD_FLAG_NORMAL = MethodFlags(rawValue: 1)
    static let METHOD_FLAG_EDITOR = MethodFlags(rawValue: 2)
    static let METHOD_FLAG_CONST = MethodFlags(rawValue: 4)
    static let METHOD_FLAG_VIRTUAL = MethodFlags(rawValue: 8)
    static let METHOD_FLAG_VARARG = MethodFlags(rawValue: 16)
    static let METHOD_FLAG_STATIC = MethodFlags(rawValue: 32)
    static let METHOD_FLAG_OBJECT_CORE = MethodFlags(rawValue: 64)
    static let METHOD_FLAGS_DEFAULT = MethodFlags(rawValue: 1)
}