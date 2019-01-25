extends Button

signal toggle_main_menu

func _ready():
	connect("toggle_main_menu", get_tree().get_root().get_node("Menu"), "_toggle_main_menu")

func _pressed():
	var dir = Directory.new()
	dir.remove("user://savegame.save")
	emit_signal("toggle_main_menu")