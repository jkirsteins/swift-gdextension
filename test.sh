GODOT="/Users/janis.kirsteins/Projects/godot/bin/godot.macos.editor.x86_64"
swift build && cp ./.build/x86_64-apple-macosx/debug/libswiftlib.dylib ./libswiftlib.dylib && $GODOT --headless --upwards --quit
