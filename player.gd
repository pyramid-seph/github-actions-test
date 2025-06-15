extends CharacterBody2D


func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel") and not event.is_echo():
		var curr_locale: String = TranslationServer.get_locale()
		var new_locale: String = "es" if curr_locale.begins_with("en") else "en"
		TranslationServer.set_locale(new_locale)

func _physics_process(delta: float) -> void:
	var vector: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = vector * 500.0
	move_and_slide()
