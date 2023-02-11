import Foundation
import godot_gen

class ClassInitializer {
    static func initialize<T: Class>(_: T.Type) {
        print("Empty initialize for \(T.self)")
    }
}

