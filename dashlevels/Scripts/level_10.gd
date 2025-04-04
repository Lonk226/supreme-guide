extends Node2D


func _on_enemy_defeat() -> void:
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://Scenes/Levels/level_11.tscn")
