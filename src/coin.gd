extends Area2D

var speed

signal collision
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var rng := RandomNumberGenerator.new()
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(0, width)
	var random_y = rng.randi_range(-150, -50)
	speed = rng.randi_range(200, 500)
	position = Vector2(random_x, random_y)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += Vector2(0, 1.0) * speed * delta


func _on_body_entered(body: Node2D) -> void:
	collision.emit()

func _on_area_entered(area: Area2D) -> void:
	area.queue_free()
	queue_free()
