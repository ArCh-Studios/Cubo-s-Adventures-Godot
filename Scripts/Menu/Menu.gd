extends Node

var packed_menu
var current_menu
var queue_load

func _ready():
	queue_load = false
	packed_menu = load("res://Menu/MainMenu.tscn")
	current_menu = packed_menu.instance()
	current_menu.name = "CurrentMenu"
	add_child(current_menu, 1)
	move_child(current_menu, 0)
	
func _process(delta):
	if queue_load:
		queue_load = false
		current_menu = packed_menu.instance()
		current_menu.name = "CurrentMenu"
		add_child(current_menu, 1)
		move_child(current_menu, 0)

func _toggle_main_menu():
	current_menu.queue_free()
	packed_menu = load("res://Menu/MainMenu.tscn")
	queue_load = true

func _toggle_level_select_menu():
	current_menu.queue_free()
	packed_menu = load("res://Menu/LevelSelectMenu.tscn")
	queue_load = true
	
func _toggle_options_menu():
	current_menu.queue_free()
	packed_menu = load("res://Menu/OptionsMenu.tscn")
	queue_load = true