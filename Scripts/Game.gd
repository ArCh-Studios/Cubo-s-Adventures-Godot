extends Node

var current_stage
var packed_stage
var stage
var queue_load
var camera

func _enter_tree():
	default()

func default():
	ProjectSettings.set("checkpoint", -1)
	ProjectSettings.set("wkeyr", false)
	ProjectSettings.set("rkeyr", false)
	ProjectSettings.set("gkeyr", false)
	ProjectSettings.set("bkeyr", false)
	ProjectSettings.set("wkey", false)
	ProjectSettings.set("rkey", false)
	ProjectSettings.set("gkey", false)
	ProjectSettings.set("bkey", false)
	

func _ready():
	queue_load = false
	current_stage = ProjectSettings.get("current_stage")
	packed_stage = load("res://Stages/Stage" + str(current_stage) + ".tscn")
	stage = packed_stage.instance()
	stage.name = "Stage"
	add_child(stage, 1)
	move_child(stage, 0)
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

#warning-ignore:unused_argument
func _process(delta):
	if queue_load:
		queue_load = false
		stage = packed_stage.instance()
		stage.name = "Stage"
		add_child(stage, 1)
		move_child(stage, 0)

func _restart():
	ProjectSettings.set("wkeyr", false)
	ProjectSettings.set("rkeyr", false)
	ProjectSettings.set("gkeyr", false)
	ProjectSettings.set("bkeyr", false)
	stage.queue_free()
	queue_load = true

func _on_Goal_body_entered(body):
	if body.is_in_group("Cubo"):
		current_stage += 1
		ProjectSettings.set("current_stage", current_stage)
		stage.queue_free()
		if current_stage > ProjectSettings.get("max_stage"):
			ProjectSettings.set("max_stage", current_stage)
		packed_stage = load("res://Stages/Stage" + str(current_stage) + ".tscn")
		queue_load = true
		default()