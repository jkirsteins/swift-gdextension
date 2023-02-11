rm -rf gen && swift run bindinggen && rsync -r gen/ Sources/godot-gen/gen && rm -r gen
