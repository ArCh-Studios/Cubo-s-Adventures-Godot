extends Area2D

func _ready():
	connect("body_entered", get_tree().get_root().get_node("Game/Stage"), "_on_gkey_body_entered")