import godot_native

extension String {
    func _create_native__kept() -> UnsafeRawPointer {
        let len = self.utf8.count
        let unsafe: UnsafeMutableRawPointer = .allocate(byteCount: len, alignment: 4)
        self.withCString { utf8Ptr in
            gde_interface!.pointee.string_new_with_utf8_chars_and_len(
                unsafe,
                utf8Ptr,
                GDExtensionInt(len))
        }
        return .init(unsafe)
    }
}
