extends Control


func _physics_process(delta: float) -> void:
	start()

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/level_1.tscn")
	



func _on_quit_pressed() -> void:
	get_tree().quit()

func start():
	if Input.is_action_just_pressed("pause"):
		get_tree().change_scene_to_file("res://Scenes/Levels/level_1.tscn")
