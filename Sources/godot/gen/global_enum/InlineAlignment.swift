/// MISSING GODOT DOCUMENTATION
/// 
/// 
public struct InlineAlignment: RawRepresentable {
    public let rawValue: Int32
    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }
    static let INLINE_ALIGNMENT_TOP_TO = InlineAlignment(rawValue: 0)
    static let INLINE_ALIGNMENT_CENTER_TO = InlineAlignment(rawValue: 1)
    static let INLINE_ALIGNMENT_BASELINE_TO = InlineAlignment(rawValue: 3)
    static let INLINE_ALIGNMENT_BOTTOM_TO = InlineAlignment(rawValue: 2)
    static let INLINE_ALIGNMENT_TO_TOP = InlineAlignment(rawValue: 0)
    static let INLINE_ALIGNMENT_TO_CENTER = InlineAlignment(rawValue: 4)
    static let INLINE_ALIGNMENT_TO_BASELINE = InlineAlignment(rawValue: 8)
    static let INLINE_ALIGNMENT_TO_BOTTOM = InlineAlignment(rawValue: 12)
    static let INLINE_ALIGNMENT_TOP = InlineAlignment(rawValue: 0)
    static let INLINE_ALIGNMENT_CENTER = InlineAlignment(rawValue: 5)
    static let INLINE_ALIGNMENT_BOTTOM = InlineAlignment(rawValue: 14)
    static let INLINE_ALIGNMENT_IMAGE_MASK = InlineAlignment(rawValue: 3)
    static let INLINE_ALIGNMENT_TEXT_MASK = InlineAlignment(rawValue: 12)
}