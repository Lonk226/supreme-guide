extends Camera2D

var randomstrength: float = 8
var shakefade: float = 5
var rng = RandomNumberGenerator.new()
var shakestrength: float = 0

func apply_shake():
	shakestrength = randomstrength
	
func randomoffset() -> Vector2:
	return Vector2(rng.randf_range(-shakestrength, shakestrength), rng.randf_range(-shakestrength, shakestrength))
	
func _process(delta: float) -> void:
	if shakestrength > 0:
		shakestrength = lerpf(shakestrength, 0, shakefade * delta)
		
		offset = randomoffset()


func _on_player_dashs() -> void:
	apply_shake()
