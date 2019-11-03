extends Panel

func _process(delta):
	if Input.is_action_just_pressed("escape"):
		if !get_tree().paused:
			var camera = get_tree().get_root().get_node("Game/Stage/Cubo/Cam").get_camera_screen_center()
			margin_left = camera.x + -260
			margin_right = camera.x + 260
			margin_top = camera.y + -450
			margin_bottom = camera.y + 450
			show()
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			get_tree().paused = true
		else:
			hide()
			Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
			get_tree().paused = false

func _on_ResumeButton_hide_menu():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	hide()

func _on_RestartLevelButton_hide_menu():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	hide()