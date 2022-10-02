extends Node2D



onready var toolCircle = $CanvasLayer/ToolArm/Tool/ToolCircle
onready var toolDreieck = $CanvasLayer/ToolArm/Tool/ToolDreieck
onready var toolPoligon = $CanvasLayer/ToolArm/Tool/ToolPoligon
onready var toolViereck = $CanvasLayer/ToolArm/Tool/ToolViereck

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
