extends Panel

func _on_ResumeButton_hide_menu():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	hide()
