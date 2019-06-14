extends Button

signal load_game

func _ready():
	connect("load_game", get_tree().get_root().get_node("Menu"), "load_game")

func pressed():
	emit_signal("load_game")