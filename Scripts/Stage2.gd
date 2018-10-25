extends Node

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _on_Cubo_toggle_menu():
	$InGameMenu.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	get_tree().paused = true

func _on_Goal_body_entered(body):
	if body.is_in_group("Cubo"):
		get_tree().change_scene("res://Stages/Stage3.tscn")
