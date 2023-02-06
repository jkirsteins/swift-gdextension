import godot_native

public var gde_interface: UnsafeMutablePointer<GDExtensionInterface>? = nil
public var gde_library: GDExtensionClassLibraryPtr? = nil

public func register_interface(
    _ p_interface: UnsafeMutablePointer<GDExtensionInterface>,
    _ p_library: GDExtensionClassLibraryPtr)
{
    gde_interface = p_interface
    gde_library = p_library
}

public func initialize_classes(_ builtin: Bool) {
    if (!builtin) {
        Node.initialize_class()
    } else {
        StringName.initialize_class()
    }
}
