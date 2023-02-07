/// MISSING GODOT DOCUMENTATION
/// 
/// 
public struct MouseButtonMask: OptionSet {
    public let rawValue: Int32
    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }
    static let MOUSE_BUTTON_MASK_LEFT = MouseButtonMask(rawValue: 1)
    static let MOUSE_BUTTON_MASK_RIGHT = MouseButtonMask(rawValue: 2)
    static let MOUSE_BUTTON_MASK_MIDDLE = MouseButtonMask(rawValue: 4)
    static let MOUSE_BUTTON_MASK_MB_XBUTTON1 = MouseButtonMask(rawValue: 128)
    static let MOUSE_BUTTON_MASK_MB_XBUTTON2 = MouseButtonMask(rawValue: 256)
}