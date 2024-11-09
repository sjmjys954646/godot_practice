extends Node2D

var coin_scene: PackedScene = load("res://tscn/coin.tscn")
var laser_scene: PackedScene = load("res://tscn/laser.tscn")

var health: int = 5

func _ready() :
	get_tree().call_group('UI', 'set_health', health)

func _on_timer_timeout() -> void:
	var coin = coin_scene.instantiate()
	$Coins.add_child(coin)
	coin.connect('collision', _on_coin_collision)
	
func _on_coin_collision():
	health -= 1
	get_tree().call_group('UI', 'set_health', health)
	if health <= 0 :
		get_tree().change_scene_to_file("res://tscn/game_over.tscn")


func _on_player_laser(pos) -> void:
	var laser = laser_scene.instantiate()
	$Lasers.add_child(laser)
	laser.position = pos
