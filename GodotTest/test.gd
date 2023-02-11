#!/Users/janis.kirsteins/Projects/godot/bin/godot --headless -v -s
extends SceneTree

func _testClass():
    var node = TestClass.new()
    if node == null:
        printerr("node == null")
        quit(1)
    if node.get_parent() == null:
        printerr("node.get_parent() == null")
        quit(1)
    print("OK: node and parent not null")
    print('node class: %s' % [ node.get_class() ])
    print('node: %s' % [ node ])
    print('node parent: %s' % [ node.get_parent() ])

    #print('node class', node.get_class())
    #print('node:', node )
    #print('node parent:', node.get_parent())
    
func _init():
    _testClass()
    print("All tests were successful!")
    quit()
