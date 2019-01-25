extends Button

signal check_game
signal toggle_menu

func _ready():
	connect("check_game", get_tree().get_root().get_node("Menu"), "check_game")
	connect("toggle_menu", get_tree().get_root().get_node("Menu"), "_toggle_menu")

func _pressed():
	var dir = Directory.new()
	dir.remove("user://savegame.save")
	emit_signal("check_game")
	emit_signal("toggle_menu", "res://Menu/MainMenu.tscn")