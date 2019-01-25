extends Button

signal toggle_options_menu

func _ready():
	connect("toggle_options_menu", get_tree().get_root().get_node("Menu"), "_toggle_options_menu")

func _pressed():
	emit_signal("toggle_options_menu")