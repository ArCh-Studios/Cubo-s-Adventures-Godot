extends Button

signal hide_menu

func _pressed():
	get_tree().paused = false
	emit_signal("hide_menu")