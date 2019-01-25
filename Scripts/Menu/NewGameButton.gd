extends Button

func pressed():
	var save_game = File.new()
	save_game.open("user://savegame.save", File.WRITE)
	save_game.store_line(to_json({
		"max_stage" : 1
	}))
	save_game.close()
	ProjectSettings.set("max_stage", 1)
	ProjectSettings.set("current_stage", 1)
	get_tree().change_scene("res://Stages/Game.tscn")