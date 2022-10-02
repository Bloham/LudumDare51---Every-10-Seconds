extends Node2D



onready var toolCircle = $CanvasLayer/ToolArm/Tool/ToolCircle
onready var toolDreieck = $CanvasLayer/ToolArm/Tool/ToolDreieck
onready var toolPoligon = $CanvasLayer/ToolArm/Tool/ToolPoligon
onready var toolViereck = $CanvasLayer/ToolArm/Tool/ToolViereck

onready var checkLight = $CanvasLayer/RightPanel/RightPanelLights/CheckLamp
onready var checkLightTimer = $CanvasLayer/RightPanel/RightPanelLights/CheckLampTimer
onready var errorLamp1 = $CanvasLayer/RightPanel/RightPanelLights/Error1
onready var errorLamp2 = $CanvasLayer/RightPanel/RightPanelLights/Error2
onready var errorLamp3 = $CanvasLayer/RightPanel/RightPanelLights/Error3

onready var UIScreen = $CanvasLayer/UIScreen

onready var scoreLable = $CanvasLayer/Machine/ScoreContainer/MarginContainer/ScoreLable

var errors = 0
var score = 0
var difficulty = 1


#var currentTool = null
var rotationSpeed = 25
#var isRotating = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Autoload.isRotating == true:
		Autoload.currentTool.rotation += delta * rotationSpeed


func _input(event):
	if Autoload.currentTool == null:
		return
	if event is InputEventMouseButton:
		if event.is_pressed():
			Autoload.isRotating = true
		else:
			Autoload.isRotating = false
	
	if event.is_action_pressed("ui_cancel"):
		UIScreen.openPauseMenue()
		print("Cancle has been pressed")


func _on_circle():
	Autoload.currentTool = toolCircle
	Autoload.toolIsCircle = true
	Autoload.toolIsDreieck = false
	Autoload.toolIsPoligon = false
	Autoload.toolIsViereck = false

func _on_dreieck():
	Autoload.currentTool = toolDreieck
	Autoload.toolIsCircle = false
	Autoload.toolIsDreieck = true
	Autoload.toolIsPoligon = false
	Autoload.toolIsViereck = false

func _on_poligon():
	Autoload.currentTool = toolPoligon
	Autoload.toolIsCircle = false
	Autoload.toolIsDreieck = false
	Autoload.toolIsPoligon = true
	Autoload.toolIsViereck = false

func _on_viereck():
	Autoload.currentTool = toolViereck
	Autoload.toolIsCircle = false
	Autoload.toolIsDreieck = false
	Autoload.toolIsPoligon = false
	Autoload.toolIsViereck = true


func _on_CheckPanel_checked():
	checkLight.visible = true
	checkLightTimer.start()
	score += 10 * difficulty * difficulty
	scoreLable.text = str(score)


func _on_CheckPanel_error():
	errors += 1
	print("ERROR COUNT: ", errors)
	if errors == 1:
		errorLamp1.visible = true
	if errors == 2:
		errorLamp2.visible = true
	if errors == 3:
		errorLamp3.visible = true
		UIScreen.openGameOverMenue()

func _on_CheckLampTimer_timeout():
	checkLight.visible = false


