extends Node2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

signal reset_dash

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		reset_dash.emit()
		animated_sprite.play("active")
		await get_tree().create_timer(0.6).timeout
		animated_sprite.play("idle")
