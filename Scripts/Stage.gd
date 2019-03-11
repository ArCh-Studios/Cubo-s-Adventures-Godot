extends Node

func _on_white_key_body_entered(body):
	if body.is_in_group("Cubo"):
		$WhiteKey.queue_free()
		$WhiteDoor/WhiteLock.queue_free()

func _on_red_key_body_entered(body):
	if body.is_in_group("Cubo"):
		$RedKey.queue_free()
		$RedDoor/RedLock.queue_free()

func _on_green_key_body_entered(body):
	if body.is_in_group("Cubo"):
		$GreenKey.queue_free()
		$GreenDoor/GreenLock.queue_free()

func _on_blue_key_body_entered(body):
	if body.is_in_group("Cubo"):
		$BlueKey.queue_free()
		$BlueDoor/BlueLock.queue_free()