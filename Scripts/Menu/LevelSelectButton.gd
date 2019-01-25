extends Button

signal toggle_menu

func _ready():
	connect("toggle_menu", get_tree().get_root().get_node("Menu"), "_toggle_menu")
	var save_data
	var save_file = File.new()
	if save_file.file_exists("user://savegame.save"):
		save_file.open("user://savegame.save", File.READ)
		save_data = parse_json(save_file.get_as_text())
		save_file.close()
		ProjectSettings.set("max_stage", save_data["max_stage"])
		
func _pressed():
	emit_signal("toggle_menu", "res://Menu/LevelSelectMenu.tscn")