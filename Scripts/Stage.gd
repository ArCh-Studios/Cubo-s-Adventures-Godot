extends Node

func _on_white_key_body_entered(body):
	if body.is_in_group("Cubo"):
		$WhiteKey.queue_free()