extends Label

func _process(delta: float) -> void:
	text = "Final Time: " + str(Global.speedtime) + " seconds"
