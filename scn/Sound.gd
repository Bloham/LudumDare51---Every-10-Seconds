extends Node



onready var toolAudio = $ToolAudio
onready var checkLightAudio = $CheckLightAudio
onready var errorAudio = $ErrorAudio
onready var lastErrorAudio = $LastErrorAudio
onready var startMachineAudio = $StartMachineAudio
onready var buttonAudio = $ButtonAudio
onready var musicAudio = $MusikAudio

var isToolAudioPlaying = false

func _process(delta):
	if Autoload.isRotating == true && isToolAudioPlaying == false:
		toolAudio.play()
		isToolAudioPlaying = true
	
	if Autoload.isRotating == false && isToolAudioPlaying == true:
		toolAudio.stop()
		isToolAudioPlaying = false

func _on_Node2D_playChecklightAudio():
	checkLightAudio.play()

func _on_Node2D_errorAudio():
	errorAudio.play()

func _on_Node2D_lastErrorAudio():
	lastErrorAudio.play()

func _on_Node2D_startMachineAudio():
	startMachineAudio.play()
	musicAudio.play()

func _on_button_down():
	buttonAudio.play()

func _on_MusikAudio_finished():
	musicAudio.play()
