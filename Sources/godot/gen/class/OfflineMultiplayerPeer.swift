import godot_native

fileprivate var __godot_name_OfflineMultiplayerPeer: StringName! = nil

/// A [MultiplayerPeer] which is always connected and acts as a server.
/// 
/// This is the default [member MultiplayerAPI.multiplayer_peer] for the [member Node.multiplayer]. It mimics the behavior of a server with no peers connected.
///  
/// This means that the [SceneTree] will act as the multiplayer authority by default. Calls to [method MultiplayerAPI.is_server] will return [code]true[/code], and calls to [method MultiplayerAPI.get_unique_id] will return [constant MultiplayerPeer.TARGET_PEER_SERVER].
public class OfflineMultiplayerPeer : MultiplayerPeer {

    

    public override class var __godot_name: StringName { __godot_name_OfflineMultiplayerPeer }

    
    
    public override class func initialize_class() {
        __godot_name_OfflineMultiplayerPeer = StringName(from: "OfflineMultiplayerPeer")

        
    }

    
}