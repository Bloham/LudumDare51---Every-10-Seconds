extends Sprite



var scroll_speed = 100

func _ready():
	print("New Workpiece Spawning here: ", self.position)
	pass # Replace with function body.


func _physics_process(delta):
	self.position.x += delta * scroll_speed
