extends Button

export (int) var level

func _ready():
	if ProjectSettings.get("new_game"):
		hide()
	else:
		if level > ProjectSettings.get("max_stage"):
			hide()

func _pressed():
	ProjectSettings.set("current_stage", level)
	get_tree().change_scene("res://Stages/Game.tscn")