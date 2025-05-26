extends CharacterBody2D


func _physics_process(delta: float) -> void:
	var vector: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = vector * 500.0
	move_and_slide()
