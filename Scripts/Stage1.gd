extends Node

func _on_Goal_body_entered(body):
	if body.is_in_group("Cubo"):
		get_tree().change_scene("res://Stages/Stage2.tscn")