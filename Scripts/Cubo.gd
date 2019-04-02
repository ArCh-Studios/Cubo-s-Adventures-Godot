extends KinematicBody2D

signal toggle_menu
signal restart
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
var map

func _ready():
#warning-ignore:return_value_discarded
	connect("toggle_menu", get_tree().get_root().get_node("Game"), "_on_Cubo_toggle_menu")
#warning-ignore:return_value_discarded
	connect("restart", get_tree().get_root().get_node("Game"), "_restart")
	$Camera2D.limit_right = cam_right_lim
	$Camera2D.limit_left = cam_left_lim
	$Camera2D.limit_top = cam_top_lim
	$Camera2D.limit_bottom = cam_bottom_lim
	map = get_tree().get_root().get_node("Game/Stage/TileMap")

#warning-ignore:unused_argument
func _process(delta):
	if Input.is_key_pressed(KEY_D) and !Input.is_key_pressed(KEY_A):
		horizontal_input = speed
		$Sprite.flip_h = false
	elif Input.is_key_pressed(KEY_A) and !Input.is_key_pressed(KEY_D):
		horizontal_input = -speed
		$Sprite.flip_h = true
	else:
		horizontal_input = 0
	will_jump = Input.is_key_pressed(KEY_W)
	is_shift = Input.is_key_pressed(KEY_SPACE)
	if Input.is_key_pressed(KEY_ESCAPE):
		emit_signal("toggle_menu", $Camera2D.get_camera_screen_center())

func _physics_process(delta):
	if not is_fall:
		force.x += horizontal_input
	force.x *= .6
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
	if not is_fall and is_on_wall():
		if is_shift:
			is_fall = true
			if force.x > 0:
				force = Vector2(-speed*16, -jump_power*1/3)
			else:
				force = Vector2(speed*16, -jump_power*1/3)
		elif will_jump:
			if force.x > 0:
				force = Vector2(-speed*8/3, -jump_power*2/3)
			else:
				force = Vector2(speed*8/3, -jump_power*2/3)
#warning-ignore:return_value_discarded
	move_and_slide(force * delta, Vector2(0, -1))
	if (map.get_cellv(map.world_to_map(position + Vector2(17, 16))) == 38 or
	map.get_cellv(map.world_to_map(position + Vector2(-17, 16))) == 36 or
	map.get_cellv(map.world_to_map(position + Vector2(17, -16))) == 38 or 
	map.get_cellv(map.world_to_map(position + Vector2(-17, -16))) == 36 or
	map.get_cellv(map.world_to_map(position + Vector2(-16, -17))) == 37 or
	map.get_cellv(map.world_to_map(position + Vector2(16, -17))) == 37 or
	map.get_cellv(map.world_to_map(position + Vector2(-16, 17))) == 35 or
	map.get_cellv(map.world_to_map(position + Vector2(16, 17))) == 35):
		emit_signal("restart")