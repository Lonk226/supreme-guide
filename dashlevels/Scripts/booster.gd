extends Area2D

signal getboost()

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		getboost.emit()
		get_tree().paused = true
		await get_tree().create_timer(0.66666666666666).timeout
		get_tree().paused = false
		queue_free()
