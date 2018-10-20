extends KinematicBody2D

export (int) var speed
export (int) var jump_power
export (int) var gravity
var horizontal_input = int(0)
var is_jumping = bool(false)
var force = Vector2(0, 0)

func _ready():
	pass

func _process(delta):
	if (Input.is_key_pressed(KEY_D) and !Input.is_key_pressed(KEY_A)):
		horizontal_input = speed
		$Sprite.flip_h = false
	elif (Input.is_key_pressed(KEY_A) and !Input.is_key_pressed(KEY_D)):
		horizontal_input = -speed
		$Sprite.flip_h = true
	else:
		horizontal_input = 0
	if (Input.is_key_pressed(KEY_W)):
		is_jumping = true
	else:
		is_jumping = false

func _physics_process(delta):
	force.x += horizontal_input
	force.x *= .8
	if is_on_floor():
		force.y = 0
		if is_jumping:
			force.y = -jump_power
	else:
		force.y += gravity
	if is_on_wall() and is_jumping:
		if force.x > 0:
			force = Vector2(-jump_power*2/3, -jump_power*3/4)
		else:
			force = Vector2(jump_power*2/3, -jump_power*3/4)
	move_and_slide(force * delta, Vector2(0, -1))

func on_body_enter():
	get_tree().change_scene("res://path/to/scene.tscn")