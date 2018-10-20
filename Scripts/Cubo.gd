extends RigidBody2D

export (float) var speed
export (float) var jump
var move_horizontal = 0
var x_force = 0
var move_up = false
var touch_floor = true
var touch_wall = false
var face_right = true
var flip = false

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		move_horizontal = 1
	if Input.is_action_pressed("ui_left"):
		move_horizontal = -1
	if move_horizontal < 0:
		flip = true
	elif move_horizontal > 0:
		flip = false
	$Sprite.flip_h = flip
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()

func _physics_process(delta):
	x_force += move_horizontal
	x_force *= .9
	if move_up:
		if touch_floor:
			touch_floor = false
			linear_velocity = Vector2(x_force, jump)
		elif touch_wall:
			touch_wall = false
			linear_velocity = Vector2(x_force, jump * 2 / 3)
			if x_force < 0:
				x_force = jump / 3
			else:
				x_force = jump / -3
	linear_velocity = Vector2(x_force * speed, linear_velocity.y)

