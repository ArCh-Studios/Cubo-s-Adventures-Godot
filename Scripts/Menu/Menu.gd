extends Node

func _ready():
	var save_file = File.new()
	if not save_file.file_exists("user://savegame.save"):
		$CenterContainer/Continue.hide()