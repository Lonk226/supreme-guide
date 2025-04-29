extends Area2D

var speed = -35

func _process(delta: float) -> void:
	translate(Vector2(0, speed * delta))
