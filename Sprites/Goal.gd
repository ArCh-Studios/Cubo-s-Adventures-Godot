extends Area2D

signal _on_Goal_body_entered

func _ready():
	connect("_on_Goal_body_entered", get_tree().get_root().get_node("Game"), "_on_Goal_body_entered")