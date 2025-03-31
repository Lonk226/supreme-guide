extends Area2D

@onready var sprite: Sprite2D = $Sprite2D

var dead = false

signal death()

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Sword"):
		dead = true
		sprite.modulate = Color.RED
		await get_tree().create_timer(0.025).timeout
		sprite.modulate = Color.WHITE
		await get_tree().create_timer(0.025).timeout
		sprite.modulate = Color.RED
		await get_tree().create_timer(0.025).timeout
		sprite.modulate = Color.WHITE
		await get_tree().create_timer(0.025).timeout
		queue_free()


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		death.emit()
