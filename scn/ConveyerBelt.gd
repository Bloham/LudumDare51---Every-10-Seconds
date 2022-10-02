extends TextureRect

onready var ripples1 = $Ripples1
onready var ripples2 = $Ripples2
var scrollspeed = 170

func _physics_process(delta):
	ripples1 += delta * scrollspeed
