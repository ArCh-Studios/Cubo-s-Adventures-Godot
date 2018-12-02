extends Node

var save_data
var current_stage
var packed_stage
var stage

func _ready():
	load_game()
	current_stage = save_data["max_stage"]
	packed_stage = load("res://Stages/Stage" + str(current_stage) + ".tscn")
	stage = packed_stage.instance()
	add_child(stage)
	move_child(stage, 0)
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
func save_game():
	var save_game = File.new()
	save_game.open("user://savegame.save", File.WRITE)
	save_game.store_line(to_json(save_data))
	save_game.close()

func load_game():
	var save_file = File.new()
	if not save_file.file_exists("user://savegame.save"):
		save_game()
	save_file.open("user://savegame.save", File.READ)
	save_data = parse_json(save_file.get_as_text())
	save_file.close()

func _on_Cubo_toggle_menu(camera):
	$InGameMenu.margin_left = camera.x - 260
	$InGameMenu.margin_right = camera.x + 260
	$InGameMenu.margin_top = camera.y - 450
	$InGameMenu.margin_bottom = camera.y + 450
	$InGameMenu.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	get_tree().paused = true

func _on_Cubo_collided(pos):
	pass

func _on_Goal_body_entered(body):
	if body.is_in_group("Cubo"):
		stage.queue_free()
		current_stage += 1
		if current_stage > save_data["max_stage"]:
			save_data["max_stage"] = current_stage
			save_game()
		packed_stage = load("res://Stages/Stage" + str(current_stage) + ".tscn")
		stage = packed_stage.instance()
		stage.name = "Stage"
		add_child(stage)
		move_child(stage, 0)