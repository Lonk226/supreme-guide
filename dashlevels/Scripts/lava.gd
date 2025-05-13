extends Area2D

var speed = -50
var finalspeed = -80

func _process(delta: float) -> void:
	var current_scene_file = get_tree().current_scene.scene_file_path
	if current_scene_file == "res://Scenes/Levels/level_15.tscn":
		translate(Vector2(0, finalspeed * delta))
	else:
		translate(Vector2(0, speed * delta))
