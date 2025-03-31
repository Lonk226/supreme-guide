extends CharacterBody2D

@onready var sprite: Sprite2D = $Area2D/Sprite2D

const  spedd = 30
var dir: Vector2
var chase = false
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

func _ready() -> void:
	chase = false

func move(delta):
	if not chase:
		pass

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		death.emit()


func _on_timer_timeout() -> void:
	$Timer.wait_time = choose([1.0,1.5,2.0])
	if not chase:
		dir = choose([Vector2.RIGHT,Vector2.UP,Vector2.DOWN,Vector2.LEFT])
		print(dir)

func choose(array):
	array.shuffle()
	return array.front()


func _on_area_2d_area_entered(area: Area2D) -> void:
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


func _on_area_2d_body_entered(body: Node2D) -> void:
		if body.is_in_group("Player"):
			death.emit()
