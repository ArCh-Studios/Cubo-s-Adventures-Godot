extends Button

func pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Stages/Game.tscn")