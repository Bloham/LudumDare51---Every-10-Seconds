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
var workpiece11 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece11.tscn")
var workpiece12 = preload("res://scn/workpiece/WorkpiecesToSpawn/workpiece12.tscn")

var spawnposition = Vector2(-520,540)

#difficulties
var easy = [workpiece1, workpiece2, workpiece3]
var medium = [workpiece4, workpiece5, workpiece6]
var hard = [workpiece7, workpiece8, workpiece9]
var inferno = [workpiece10, workpiece11, workpiece12]

var spawner



func _on_Timer_timeout():
	if Autoload.difficulty >= 13:
		spawner = inferno
		spawnPiece()
	elif Autoload.difficulty >= 12:
		spawner = hard + inferno
		spawnPiece()
	elif Autoload.difficulty >= 11:
		spawner = hard + inferno
		spawnPiece()
	elif Autoload.difficulty >= 10:
		spawner = hard
		spawnPiece()
	elif Autoload.difficulty >= 9:
		spawner = hard
		spawnPiece()
	elif Autoload.difficulty >= 8:
		spawner = medium + hard
		spawnPiece()
	elif Autoload.difficulty >= 7:
		spawner = medium + hard
		spawnPiece()
	elif Autoload.difficulty >= 6:
		spawner = medium
		spawnPiece()
	elif Autoload.difficulty >= 5:
		spawner = medium
		spawnPiece()
	elif Autoload.difficulty >= 4:
		spawner = easy + medium
		spawnPiece()
	elif Autoload.difficulty >= 3:
		spawner = easy + medium
		spawnPiece()
	elif Autoload.difficulty >= 2:
		spawner = easy
		spawnPiece()
	elif Autoload.difficulty >= 0:
		spawner = easy
		spawnPiece()














func spawnPiece():
	randomize()
	var mix = spawner[randi()% spawner.size()]
	var spawner = mix.instance()
	add_child(spawner)
	print("Spawn Workpiece: ", spawner)
	spawner.position = spawnposition
