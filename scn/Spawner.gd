extends Node2D

var workpiece1 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece1.tscn")
var workpiece2 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece2.tscn")
var workpiece3 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece3.tscn")
var workpiece4 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece4.tscn")
var workpiece5 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece5.tscn")
var workpiece6 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece6.tscn")
var workpiece7 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece7.tscn")
var workpiece8 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece8.tscn")
var workpiece9 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece9.tscn")
var workpiece10 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece10.tscn")

var spawnposition = Vector2(-520,540)

var easy = [workpiece1, workpiece2, workpiece3]
var medium = [workpiece4, workpiece5, workpiece6]
var hard = [workpiece7, workpiece8, workpiece9]
var inferno = workpiece10



func _on_Timer_timeout():
	randomize()
	var mix = easy[randi()% easy.size()]
	var easy = mix.instance()
	add_child(easy)
	print("Spawn Workpiece: ", easy)
	easy.position = spawnposition
