extends Area2D

@onready var path_follow: PathFollow2D = $".."
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
var dead = false
var health = 10
var speed = 250

signal death()
signal defeat()

func _process(delta: float) -> void:
	path_follow.progress += speed * delta
	if health >= 4:
		animated_sprite.play("1p")
	if health <= 3:
		animated_sprite.play("2p")
		speed = 400
	
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Sword"):
		animated_sprite.modulate = Color.RED
		await get_tree().create_timer(0.025).timeout
		animated_sprite.modulate = Color.WHITE
		await get_tree().create_timer(0.025).timeout
		animated_sprite.modulate = Color.RED
		await get_tree().create_timer(0.025).timeout
		animated_sprite.modulate = Color.WHITE
		await get_tree().create_timer(0.025).timeout
		health -= 1
		if health == 0:
			dead = true
			queue_free()
			defeat.emit()


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		death.emit()
