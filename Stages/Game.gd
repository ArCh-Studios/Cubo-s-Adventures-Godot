extends Node

var stage

func _ready():
	var stage = 0
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _on_Goal_body_entered(body):
	if body.is_in_group("Cubo"):
		queue_free()
		stage = stage + 1
		add_child("res://Stages/Stage" + stage + ".tscn")

func _on_Cubo_toggle_menu():
	$InGameMenu.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	get_tree().paused = true