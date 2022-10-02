extends Node2D

onready var done = $ViereckDone
onready var notDone = $ViereckNotDone
onready var areaGroup = $Area2D

var canBeDestroyed = false

func _process(delta):
	if canBeDestroyed == true && Autoload.isRotating == true:
		fixIt()

func _on_Area2D_area_entered(area: Area2D) -> void:
	if(area.is_in_group("Tool")) && Autoload.toolIsViereck == true:
		print("IT WORKS")
		canBeDestroyed = true

func _on_Area2D_area_exited(area):
	if(area.is_in_group("Tool")):
		canBeDestroyed = false

func fixIt():
	areaGroup.add_to_group("Fixed")
	#areaGroup.remove_from_group("NotFixed")
	done.visible = true
	notDone.visible = false
