extends Area2D

signal nextlvlanim()

@onready var animation_player: AnimationPlayer = $CanvasLayer/AnimationPlayer

func _ready() -> void:
	animation_player.play("back2basix")

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		var current_scene_file = get_tree().current_scene.scene_file_path
		var next_level_number = current_scene_file.to_int() + 1
		
		var next_level_path = "res://Scenes/Levels/level_" + str(next_level_number) + ".tscn"
		nextlvlanim.emit()
		animation_player.play("Fade")
		await get_tree().create_timer(0.5).timeout
		get_tree().change_scene_to_file(next_level_path)





func _on_player_death() -> void:
	animation_player.play("Fade")
