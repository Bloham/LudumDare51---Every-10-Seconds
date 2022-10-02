extends TextureRect

onready var PauseMenue = $CenterContainer/PauseMenue
onready var GameOverMenue = $CenterContainer/GameOverMenue
onready var StartMenue = $CenterContainer/StartScreen

# Called when the node enters the scene tree for the first time.
func _ready():
	PauseMenue.visible = false
	GameOverMenue.visible = false
	StartMenue.visible = true
	get_tree().paused = true

func openPauseMenue():
	tweenDown()
	PauseMenue.visible = true
	GameOverMenue.visible = false
	StartMenue.visible = false

func openGameOverMenue():
	tweenDown()
	PauseMenue.visible = false
	GameOverMenue.visible = true
	StartMenue.visible = false


func tweenDown():
	var tween := create_tween()
	tween.tween_property(self, "rect_position", Vector2(440,200), 0.5)
	get_tree().paused = true

func tweenUp():
	var tween := create_tween()
	tween.tween_property(self, "rect_position", Vector2(440,-500), 0.5)
	get_tree().paused = false


func _on_RestartGame_button_down():
	Autoload.currentTool = null
	Autoload.isRotating = false
	Autoload.toolIsCircle = false
	Autoload.toolIsPoligon = false
	Autoload.toolIsDreieck = false
	Autoload.toolIsViereck = false
	Autoload.difficulty = 1
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_ResumeGame_button_down():
	tweenUp()
