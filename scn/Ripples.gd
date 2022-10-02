extends Sprite

const VELOCITY: float = 1.665
var g_texture_with: float = 0

func _ready():
	g_texture_with = texture.get_size().x
	print(g_texture_with)

func _physics_process(delta):
	position.x += VELOCITY
	_attempt_reposition()


func _attempt_reposition():
	if position.x > 2915:
		position.x = -995
