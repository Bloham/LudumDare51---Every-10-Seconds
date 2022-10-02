extends Node2D

var workpiece1 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece1.tscn")
var workpiece2 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece2.tscn")
var workpiece3 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece3.tscn")

var spawnposition = Vector2(-520,540)

func _on_Timer_timeout():

	randomize()
	var workpieces = [workpiece1, workpiece2, workpiece3]
	var mix = workpieces[randi()% workpieces.size()]
	var workpiece = mix.instance()
	add_child(workpiece)
	print("Spawn Workpiece: ", workpiece)
	workpiece.position = spawnposition
