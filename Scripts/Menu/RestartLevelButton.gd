extends Button

signal hide_menu
signal toggle_restart

func _ready():
	connect("toggle_restart", get_tree().get_root().get_node("Game"), "_on_menu_restart")

func _pressed():
	get_tree().paused = false
	emit_signal("hide_menu")
	emit_signal("toggle_restart")