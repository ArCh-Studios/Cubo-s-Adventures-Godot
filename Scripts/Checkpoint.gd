extends Area2D

func _ready():
#warning-ignore:return_value_discarded
	connect("body_entered", self, "body_entered")

func body_entered(body):
	if body.is_in_group("Cubo"):
		if ProjectSettings.get("checkpoint") != get_index():
			if ProjectSettings.get("checkpoint") != -1:
				get_parent().get_child(ProjectSettings.get("checkpoint")).reset()
			ProjectSettings.set("checkpoint", get_index())
			flag()
		if ProjectSettings.get("wkeyr"):
			ProjectSettings.set("wkey", true)
		if ProjectSettings.get("rkeyr"):
			ProjectSettings.set("rkey", true)
		if ProjectSettings.get("gkeyr"):
			ProjectSettings.set("gkey", true)
		if ProjectSettings.get("bkeyr"):
			ProjectSettings.set("bkey", true)

func reset():
	$Sprite.region_rect = Rect2(0, 0, 64, 64)

func flag():
	$Sprite.region_rect = Rect2(0, 65, 64, 64)