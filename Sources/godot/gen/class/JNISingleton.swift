import godot_native

fileprivate var __godot_name_JNISingleton: StringName! = nil

/// Singleton that connects the engine with Android plugins to interface with native Android code.
/// 
/// The JNISingleton is implemented only in the Android export. It's used to call methods and connect signals from an Android plugin written in Java or Kotlin. Methods and signals can be called and connected to the JNISingleton as if it is a Node. See [url=https://en.wikipedia.org/wiki/Java_Native_Interface]Java Native Interface - Wikipedia[/url] for more information.
open class JNISingleton : Object {

    

    public override class var __godot_name: StringName { __godot_name_JNISingleton }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_JNISingleton = StringName(from: "JNISingleton")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}