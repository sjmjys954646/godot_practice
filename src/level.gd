extends Node2D

var coin_scene: PackedScene = load("res://tscn/coin.tscn")
var laser_scene: PackedScene = load("res://tscn/laser.tscn")

func _on_timer_timeout() -> void:
	var coin = coin_scene.instantiate()
	$Coins.add_child(coin)


func _on_player_laser(pos) -> void:
	var laser = laser_scene.instantiate()
	$Lasers.add_child(laser)
	laser.position = pos
