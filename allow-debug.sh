GODOT="/Users/janis.kirsteins/Projects/godot/bin/godot.macos.editor.x86_64"
#GODOT="/Applications/Godot_mono.app/Contents/MacOS/Godot"
codesign -s - --deep --force --options=runtime --entitlements ./editor.entitlements $GODOT

