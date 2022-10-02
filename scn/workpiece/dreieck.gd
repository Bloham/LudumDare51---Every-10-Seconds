extends Node2D

onready var done = $DreieckDone
onready var notDone = $DreieckNotDone

var canBeDestroyed = false

func _process(delta):
	if canBeDestroyed == true && Autoload.isRotating == true:
		fixIt()

func _on_Area2D_area_entered(area: Area2D) -> void:
	if(area.is_in_group("Tool")) && Autoload.toolIsDreieck == true:
		canBeDestroyed = true

func _on_Area2D_area_exited(area):
	if(area.is_in_group("Tool")):
		canBeDestroyed = false

func fixIt():
	done.visible = true
	notDone.visible = false