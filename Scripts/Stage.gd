extends Node

signal restart

func _ready():
	connect("restart", get_tree().get_root().get_node("Game"), "_on_Scene_restart")

func _physics_process(delta):
	if $Cubo.is_on_floor():
		if ($TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(-20, 40))) == 36 ||
		$TileMap.get_cellv($TileMap.world_to_map($Cubo.position + Vector2(20, 40))) == 36):
			emit_signal("restart")