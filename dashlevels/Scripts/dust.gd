extends AnimatedSprite2D

func _ready() -> void:
	queue_free()
	await get_tree().create_timer(0.25).timeout
	queue_free()
