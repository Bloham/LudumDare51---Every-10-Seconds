extends Node2D

onready var toolPoligon = $Tool/ToolPoligon
onready var toolCircle = $Tool/ToolCircle
onready var toolViereck = $Tool/ToolViereck
onready var toolDreieck = $Tool/ToolDreieck

onready var Tool = $Tool

var shouldToolMove = false

signal circle
signal dreieck
signal poligon
signal viereck

func _ready():
	toolCircle.visible = false
	toolDreieck.visible = false
	toolPoligon.visible = false
	toolViereck.visible = false

func _process(delta):
	if shouldToolMove == true:
		moveTool()

func moveTool():
	var position = get_global_mouse_position()
	var offset = get_local_mouse_position()
	
	Tool.position = position

func _on_mouseExitedWorkingArea():
	shouldToolMove = false

func _on_mouseEnteredWorkingArea():
	shouldToolMove = true




func _on_circle():
	toolCircle.visible = true
	toolDreieck.visible = false
	toolPoligon.visible = false
	toolViereck.visible = false
	emit_signal("circle")

func _on_dreieck():
	toolCircle.visible = false
	toolDreieck.visible = true
	toolPoligon.visible = false
	toolViereck.visible = false
	emit_signal("dreieck")

func _on_poligon():
	toolCircle.visible = false
	toolDreieck.visible = false
	toolPoligon.visible = true
	toolViereck.visible = false
	emit_signal("poligon")

func _on_viereck():
	toolCircle.visible = false
	toolDreieck.visible = false
	toolPoligon.visible = false
	toolViereck.visible = true
	emit_signal("viereck")

