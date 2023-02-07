# rm -rf Sources/godot/gen && swift run bindinggen && mv gen Sources/godot/gen
rm -rf gen && swift run bindinggen && rsync -r gen/ Sources/godot/gen
