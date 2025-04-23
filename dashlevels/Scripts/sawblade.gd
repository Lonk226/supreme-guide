extends Area2D

signal death

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		death.emit()
