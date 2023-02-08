import godot_native

fileprivate var __godot_name_JavaScriptObject: StringName! = nil

/// A wrapper class for web native JavaScript objects.
/// 
/// JavaScriptObject is used to interact with JavaScript objects retrieved or created via [method JavaScriptBridge.get_interface], [method JavaScriptBridge.create_object], or [method JavaScriptBridge.create_callback].
///  
/// [b]Example:[/b]
///  
/// [codeblock]
///  
/// extends Node
///  
///  
/// var _my_js_callback = JavaScriptBridge.create_callback(self, "myCallback") # This reference must be kept
///  
/// var console = JavaScriptBridge.get_interface("console")
///  
///  
/// func _init():
///  
///     var buf = JavaScriptBridge.create_object("ArrayBuffer", 10) # new ArrayBuffer(10)
///  
///     print(buf) # prints [JavaScriptObject:OBJECT_ID]
///  
///     var uint8arr = JavaScriptBridge.create_object("Uint8Array", buf) # new Uint8Array(buf)
///  
///     uint8arr[1] = 255
///  
///     prints(uint8arr[1], uint8arr.byteLength) # prints 255 10
///  
///     console.log(uint8arr) # prints in browser console "Uint8Array(10) [ 0, 255, 0, 0, 0, 0, 0, 0, 0, 0 ]"
///  
///  
///     # Equivalent of JavaScriptBridge: Array.from(uint8arr).forEach(myCallback)
///  
///     JavaScriptBridge.get_interface("Array").from(uint8arr).forEach(_my_js_callback)
///  
///  
/// func myCallback(args):
///  
///     # Will be called with the parameters passed to the "forEach" callback
///  
///     # [0, 0, [JavaScriptObject:1173]]
///  
///     # [255, 1, [JavaScriptObject:1173]]
///  
///     # ...
///  
///     # [0, 9, [JavaScriptObject:1180]]
///  
///     print(args)
///  
/// [/codeblock]
///  
/// [b]Note:[/b] Only available in the Web platform.
open class JavaScriptObject : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_JavaScriptObject }

    
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_JavaScriptObject = StringName(from: "JavaScriptObject")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        
    }

    
}