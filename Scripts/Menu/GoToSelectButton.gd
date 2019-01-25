extends Button

signal toggle_level_select_menu

func pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Menu/Menu.tscn")