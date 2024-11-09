extends CanvasLayer

static var image = load("res://start-assets/player.png")
var time_elapsed := 0

func set_health(amount) :
	for child in $HBoxContainer.get_children() :
		child.queue_free()
		
	for i in amount :
		var text_rect = TextureRect.new()
		text_rect.texture = image
		$HBoxContainer.add_child(text_rect)


func _on_score_timer_timeout() -> void:
	time_elapsed += 1
	$MarginContainer/Label.text = str(time_elapsed)
	Global.score = time_elapsed
