extends Node2D

@export var dust = preload("res://Scenes/duster.tscn")
@onready var player: CharacterBody2D = $Player

var emit = false

func _ready() -> void:
	emit = false

func _process(delta: float) -> void:
	emit = true

func _on_player_jump() -> void:
	dustemit()


func _on_player_land() -> void:
	dustemit()

func dustemit():
	if emit == true:
		var duster = dust.instantiate()
		add_child(duster)
		duster.position = player.position
		duster.emitting = true
		if player.is_facing_right == true:
			duster.direction.x = -45
		else:
			duster.direction.x = 45


func _on_nextlevel_nextlvlanim() -> void:
	pass # Replace with function body.
