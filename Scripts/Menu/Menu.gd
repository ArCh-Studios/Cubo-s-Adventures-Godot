extends Node

var packed_menu
var current_menu
var queue_load

func _ready():
	check_game()
	queue_load = false
	packed_menu = load("res://Menu/MainMenu.tscn")
	current_menu = packed_menu.instance()
	current_menu.name = "CurrentMenu"
	add_child(current_menu, 1)
	move_child(current_menu, 0)

func check_game():
	var save_file = File.new()
	if not save_file.file_exists("user://savegame.save"):
		ProjectSettings.set("new_game", true)
	else:
		ProjectSettings.set("new_game", false)
	save_file.close()
	
func new_save():
	var save_data = {
		"max_stage" : 1
	}
	var save_game = File.new()
	save_game.open("user://savegame.save", File.WRITE)
	save_game.store_line(to_json(save_data))
	save_game.close()
	get_tree().quit()

func load_game():
	var save_data
	var save_file = File.new()
	if not save_file.file_exists("user://savegame.save"):
		new_save()
	save_file.open("user://savegame.save", File.READ)
	save_data = parse_json(save_file.get_as_text())
	save_file.close()
	ProjectSettings.set("max_stage", save_data["max_stage"])
	ProjectSettings.set("current_stage", save_data["max_stage"])

#warning-ignore:unused_argument
func _process(delta):
	if queue_load:
		queue_load = false
		current_menu = packed_menu.instance()
		current_menu.name = "CurrentMenu"
		add_child(current_menu, 1)
		move_child(current_menu, 0)

func _toggle_menu(path):
	current_menu.queue_free()
	packed_menu = load(path)
	queue_load = true