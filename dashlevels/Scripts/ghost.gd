extends Sprite2D

func _ready() -> void:
	ghosting()

func set_property(tx_posx, tx_posy, tx_scale):
	position.x = tx_posx
	position.y = tx_posy
	scale = tx_scale

func ghosting():
	var tween_fade = get_tree().create_tween()
	tween_fade.tween_property(self, "self_modulate", Color(1.0, 1.0, 1.0, 0.0),0.15)
	await tween_fade.finished
	queue_free()
