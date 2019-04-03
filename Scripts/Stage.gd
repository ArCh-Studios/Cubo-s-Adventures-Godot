extends Node

signal restart

func _ready():
#warning-ignore:return_value_discarded
	connect("restart", get_tree().get_root().get_node("Game"), "_restart")

func _physics_process(delta):
#warning-ignore:return_value_discarded
	if ($TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(17, 16))) == 38 or
	$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(-17, 16))) == 36 or
	$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(17, -16))) == 38 or 
	$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(-17, -16))) == 36 or
	$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(-16, -17))) == 37 or
	$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(16, -17))) == 37 or
	$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(-16, 17))) == 35 or
	$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(16, 17))) == 35):
		emit_signal("restart")

func _on_white_key_body_entered(body):
	if body.is_in_group("Cubo"):
		$WhiteKey.queue_free()
		var doors = get_tree().get_nodes_in_group("WhiteDoor")
		for door in doors:
			door.get_child(0).queue_free()

func _on_red_key_body_entered(body):
	if body.is_in_group("Cubo"):
		$RedKey.queue_free()
		var doors = get_tree().get_nodes_in_group("RedDoor")
		for door in doors:
			door.get_child(0).queue_free()

func _on_green_key_body_entered(body):
	if body.is_in_group("Cubo"):
		$GreenKey.queue_free()
		var doors = get_tree().get_nodes_in_group("GreenDoor")
		for door in doors:
			door.get_child(0).queue_free()

func _on_blue_key_body_entered(body):
	if body.is_in_group("Cubo"):
		$BlueKey.queue_free()
		var doors = get_tree().get_nodes_in_group("BlueDoor")
		for door in doors:
			door.get_child(0).queue_free()