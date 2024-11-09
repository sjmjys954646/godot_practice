extends Control

var level_scene : PackedScene = load("res://tscn/level.tscn")

func _ready() :
	$CenterContainer/VBoxContainer/Label2.text = "Score " + str(Global.score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("shoot") :
		get_tree().change_scene_to_packed(level_scene)

func _input(event) :
	if event.is_action_just_pressed("shoot") :
		get_tree().change_scene_to_packed(level_scene)
