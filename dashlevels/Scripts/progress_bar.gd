extends TextureProgressBar

@onready var player: CharacterBody2D = $"../.."

func _ready() -> void:
	value = 3

func _on_player_hurt() -> void:
	value -= 1
