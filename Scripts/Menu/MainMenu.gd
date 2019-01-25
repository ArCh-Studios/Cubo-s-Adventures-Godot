extends Node

func _ready():
	var save_file = File.new()
	if ProjectSettings.get("new_game"):
		$CenterContainer/ContinueButton.hide()
	else:
		$CenterContainer/NewGameButton.hide()