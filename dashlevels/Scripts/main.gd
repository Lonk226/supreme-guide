extends Node

var death_count = 0

func _on_enemy_death() -> void:
	die()


func _on_killzone_death() -> void:
	die()

func die():
	death_count += 1
	print(death_count)
