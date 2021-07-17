extends Spatial

export var speed = 2.0
export var offset = Vector3.UP * 2.5

onready var tween = $Tween
onready var door = $Door

func open():
	tween.interpolate_property(door, "transform:origin", null,
			offset, 1/speed,
			Tween.TRANS_LINEAR, Tween.EASE_OUT)
	tween.start()
	
func close():
	tween.interpolate_property(door, "transform:origin", null,
			Vector3.ZERO, 1/speed,
			Tween.TRANS_LINEAR, Tween.EASE_OUT)
	tween.start()