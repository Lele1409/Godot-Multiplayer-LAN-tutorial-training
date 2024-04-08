extends Control

@export var address = "127.0.0.1"
@export var port = 8910

var peer

func _ready():
	multiplayer.peer_connected.connect(_on_peer_connected)
	multiplayer.peer_disconnected.connect(_on_peer_disconnected)
	multiplayer.connected_to_server.connect(_on_connected_to_server)
	multiplayer.connection_failed.connect(_on_connection_failed)
	
	if "--server" in OS.get_cmdline_args():
		GameManager.players.erase(1)
		host_game()


# Gets called on the server and clients
func _on_peer_connected(id):
	print("Player Connected " + str(id))


# Gets called on the server and clients
func _on_peer_disconnected(id):
	GameManager.players.erase(id)
	print("Player Disconnected " + str(id))
	var players = get_tree().get_nodes_in_group("players")
	for p in players:
		if p.id == id:
			p.queue_free()


# Called only from clients
func _on_connected_to_server():
	print("Connected to Server")
	send_player_information.rpc_id(1, $LineEdit.text, multiplayer.get_unique_id())

# Called only from clients
func _on_connection_failed():
	print("Connection Failed")


@rpc("any_peer")
func send_player_information(name, id):
	if !GameManager.players.has(id):
		GameManager.players[id] = {
			"name": name,
			"id": id,
			"score": 0
		}
	
	if multiplayer.is_server():
		for i in GameManager.players:
			send_player_information.rpc(GameManager.players[i].name, i)


@rpc("any_peer", "call_local")
func start_game():
	var scene = preload("res://test_scene.tscn").instantiate()
	get_tree().root.add_child(scene)
	self.hide()


func host_game():
	peer = ENetMultiplayerPeer.new()
	var error = peer.create_server(port, 10)
	
	if error != OK:
		print("Cannot host: " + error)
		return
	
	peer.get_host().compress(ENetConnection.COMPRESS_RANGE_CODER)
	
	multiplayer.set_multiplayer_peer(peer)
	print("Waiting for players!")


func _on_host_button_down():
	host_game()
	
	send_player_information($LineEdit.text, multiplayer.get_unique_id())

func _on_join_button_down():
	peer = ENetMultiplayerPeer.new()
	peer.create_client(address, port)
	
	peer.get_host().compress(ENetConnection.COMPRESS_RANGE_CODER)
	
	multiplayer.set_multiplayer_peer(peer)


func _on_start_game_button_down():
	start_game.rpc()
