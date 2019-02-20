extends KinematicBody2D

signal toggle_menu
#big chungus
export (int) var cam_right_lim = 1920
export (int) var cam_left_lim = 0
export (int) var cam_top_lim = 0
export (int) var cam_bottom_lim = 1080
export (int) var speed
export (int) var jump_power
export (int) var gravity
var horizontal_input = int(0)
var will_jump = bool(false)
var is_shift = bool(false)
var is_fall = bool(false)
var force = Vector2(0, 0)

func _ready():
	connect("toggle_menu", get_tree().get_root().get_node("Game"), "_on_Cubo_toggle_menu")
	connect("restart", get_tree().get_root().get_node("Game"), "_restart")
	$Camera2D.limit_right = cam_right_lim
	$Camera2D.limit_left = cam_left_lim
	$Camera2D.limit_top = cam_top_lim
	$Camera2D.limit_bottom = cam_bottom_lim

func _process(delta):
	if Input.is_key_pressed(KEY_D) and !Input.is_key_pressed(KEY_A):
		horizontal_input = speed
		$Sprite.flip_h = false
	elif Input.is_key_pressed(KEY_A) and !Input.is_key_pressed(KEY_D):
		horizontal_input = -speed
		$Sprite.flip_h = true
	else:
		horizontal_input = 0
	if Input.is_key_pressed(KEY_W):
		will_jump = true
	else:
		will_jump = false
	if Input.is_key_pressed(KEY_SPACE):
		is_shift = true
	else:
		is_shift = false
	if Input.is_key_pressed(KEY_ESCAPE):
		emit_signal("toggle_menu", $Camera2D.get_camera_screen_center())

func _physics_process(delta):
	if not is_fall:
		force.x += horizontal_input
	force.x *= .8
	if is_on_ceiling():
		force.y = 0
	if is_on_floor():
		force.y = 0
		is_fall = false
		if will_jump and not is_shift:
			will_jump = false
			force.y = -jump_power
	else:
		force.y += gravity
	if is_on_wall():
		if is_shift:
			is_fall = true
			if force.x > 0:
				force = Vector2(-jump_power*3, -jump_power*1/3)
			else:
				force = Vector2(jump_power*3, -jump_power*1/3)
		elif will_jump:
			if force.x > 0:
				force = Vector2(-jump_power*1/3, -jump_power*2/3)
			else:
				force = Vector2(jump_power*1/3, -jump_power*2/3)
	move_and_slide(force * delta, Vector2(0, -1))