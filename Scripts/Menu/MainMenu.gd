extends Node

func _ready():
	if ProjectSettings.get("new_game"):
		$CenterContainer/ContinueButton.hide()
	else:
		$CenterContainer/NewGameButton.hide()