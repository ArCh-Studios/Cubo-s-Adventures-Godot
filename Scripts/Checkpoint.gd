extends Area2D

func _ready():
#warning-ignore:return_value_discarded
	connect("body_entered", self, "body_entered")

func body_entered(body):
	if body.is_in_group("Cubo") && ProjectSettings.get("checkpoint") != get_index():
		if ProjectSettings.get("checkpoint") != -1:
			get_parent().get_child(ProjectSettings.get("checkpoint")).reset()
		ProjectSettings.set("checkpoint", get_index())
		flag()

func reset():
	$Sprite.region_rect = Rect2(0, 0, 64, 64)

func flag():
	$Sprite.region_rect = Rect2(0, 65, 64, 64)