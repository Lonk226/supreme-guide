extends Area2D

signal getboots()



func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		getboots.emit()
		get_tree().paused = true
		await get_tree().create_timer(0.66666666666666).timeout
		get_tree().paused = false
		queue_free()
