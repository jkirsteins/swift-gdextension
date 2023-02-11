import godot
import godot_native

import XCTest


class TestClass : GDCustomClass
{
    static var parentName: Swift.String { "Sprite2D" }
    
    func whoami() -> Swift.String {
        "TestClass in embeddedtest"
    }
    
    public required init() {
        print("Default init")
    }
}

let global_initialize: (@convention(c) (_ userdata: UnsafeMutableRawPointer?, _ p_level: GDExtensionInitializationLevel)->()) = {userdata,p_level in

    let x = godot.String(from: "Hello Godot")
    
    if p_level == GDEXTENSION_INITIALIZATION_SCENE {
        let suite = XCTestSuite.default
        suite.run()
        guard let failures = suite.testRun?.totalFailureCount else {
            fatalError("Failed to run test")
        }
        guard failures == 0 else {
            "Encountered test failures: \(failures)".withCString { descPtr in
                #file.withCString {
                    Wrapped.interface.pointee.print_error(descPtr, $0, "global_initialize", #line)
                }
            }
            
            raise(SIGKILL)
            fatalError()
        }
    }
}

let global_deinitialize: (@convention(c) (_ userdata: UnsafeMutableRawPointer?, _ p_level: GDExtensionInitializationLevel)->()) = {userdata,p_level in
    print("Deinitializing the test module")
}

@_cdecl("godot_extension_entry")
func hello_extension_entry(
    p_interface: UnsafeMutablePointer<GDExtensionInterface>,
    p_library: GDExtensionClassLibraryPtr,
    r_initialization: UnsafeMutablePointer<GDExtensionInitialization>
) -> GDExtensionBool {

    let initializer = GodotInitializer(
        p_interface,
        p_library,
        r_initialization)

    initializer.register_scene_initializer(global_initialize)
    initializer.register_scene_terminator(global_deinitialize)
    
    initializer.register(TestClass.self)

    return initializer.initialize();
}
