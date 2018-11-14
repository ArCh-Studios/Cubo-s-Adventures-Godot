extends Node

var stage_num = 1
var packed_stage
var stage

func _ready():
	packed_stage = load("res://Stages/Stage1.tscn")
	stage = packed_stage.instance()
	add_child(stage)
	move_child(stage, 0)

func _on_Goal_body_entered(body):
	if body.is_in_group("Cubo"):
		stage.queue_free()
		stage_num = stage_num + 1
		packed_stage = load("res://Stages/Stage" + str(stage_num) + ".tscn")
		stage = packed_stage.instance()
		add_child(stage)
		move_child(stage, 0)
		

func _on_Cubo_toggle_menu():
	$InGameMenu.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	get_tree().paused = true