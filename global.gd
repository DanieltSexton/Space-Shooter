extends Node
 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Quit"):
		get_tree().quit()
	pass
