extends Button

func _pressed():
	var save_data = {
		"max_stage" : ProjectSettings.get("max_stage")
	}
	var save_game = File.new()
	save_game.open("user://savegame.save", File.WRITE)
	save_game.store_line(to_json(save_data))
	save_game.close()
	get_tree().quit()