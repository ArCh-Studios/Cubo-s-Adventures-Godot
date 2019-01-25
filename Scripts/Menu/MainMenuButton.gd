extends Button

signal toggle_menu

func _ready():
	connect("toggle_menu", get_tree().get_root().get_node("Menu"), "_toggle_menu")

func _pressed():
	emit_signal("toggle_menu", "res://Menu/MainMenu.tscn")