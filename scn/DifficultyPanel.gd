extends TextureRect


onready var D1 = $LeftPanelLights/Difficulty1
onready var D2 = $LeftPanelLights/Difficulty2
onready var D3 = $LeftPanelLights/Difficulty3
onready var D4 = $LeftPanelLights/Difficulty4
onready var D5 = $LeftPanelLights/Difficulty5
onready var D6 = $LeftPanelLights/Difficulty6
onready var D7 = $LeftPanelLights/Difficulty7
onready var D8 = $LeftPanelLights/Difficulty8
onready var D9 = $LeftPanelLights/Difficulty9
onready var D10 = $LeftPanelLights/Difficulty10

onready var blinkTimer = $BlinkLichter

var blinkTimerAn = false

func _process(delta):
	if Autoload.difficulty >= 13 && blinkTimerAn == false:
		blinkTimerAn = true
		blinkTimer.start()
	elif Autoload.difficulty >= 10:
		D10.visible = true
	elif Autoload.difficulty >= 9:
		D9.visible = true
	elif Autoload.difficulty >= 8:
		D8.visible = true
	elif Autoload.difficulty >= 7:
		D7.visible = true
	elif Autoload.difficulty >= 6:
		D6.visible = true
	elif Autoload.difficulty >= 5:
		D5.visible = true
	elif Autoload.difficulty >= 5:
		D5.visible = true
	elif Autoload.difficulty >= 4:
		D4.visible = true
	elif Autoload.difficulty >= 3:
		D3.visible = true
	elif Autoload.difficulty >= 2:
		D2.visible = true
	elif Autoload.difficulty >= 0:
		D1.visible = true


func _on_BlinkLichter_timeout():
	if D1.visible == false:
		D1.visible = true
	else:
		D1.visible = false
	
	if D2.visible == false:
		D2.visible = true
	else:
		D2.visible = false
	
	if D3.visible == false:
		D3.visible = true
	else:
		D3.visible = false
	
	if D4.visible == false:
		D4.visible = true
	else:
		D4.visible = false
	
	if D5.visible == false:
		D5.visible = true
	else:
		D5.visible = false
	
	if D6.visible == false:
		D6.visible = true
	else:
		D6.visible = false
	
	if D7.visible == false:
		D7.visible = true
	else:
		D7.visible = false
	
	if D8.visible == false:
		D8.visible = true
	else:
		D8.visible = false
	
	if D9.visible == false:
		D9.visible = true
	else:
		D9.visible = false
	
	if D10.visible == false:
		D10.visible = true
	else:
		D10.visible = false
