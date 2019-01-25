extends Node

signal restart

func _ready():
	connect("restart", get_tree().get_root().get_node("Game"), "_restart")

func _physics_process(delta):
	if $Cubo.is_on_floor():
		if ($TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(-20, 40))) == 35 ||
		$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(20, 40))) == 35):
			emit_signal("restart")
	if $Cubo.is_on_ceiling():
		if ($TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(-20, -40))) == 37 ||
		$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(20, -40))) == 37):
			emit_signal("restart")
	if $Cubo.is_on_wall():
		if ($TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(-40, -20))) == 36 ||
		$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(-40, 20))) == 36 || 
		$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(40, -20))) == 38 ||
		$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(40, 20))) == 38):
			emit_signal("restart")