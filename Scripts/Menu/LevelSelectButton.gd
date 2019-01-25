extends Button

signal toggle_level_select_menu

func _ready():
	connect("toggle_level_select_menu", get_tree().get_root().get_node("Menu"), "_toggle_level_select_menu")

func _pressed():
	emit_signal("toggle_level_select_menu")