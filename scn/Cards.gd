extends HBoxContainer

onready var circleButton = $Circle
onready var poligonButton = $Poligon
onready var viereckButton = $Viereck
onready var dreieckButton = $Dreieck

signal circle
signal poligon
signal viereck
signal dreieck


func deactiveButton(button1, button2, button3):
	button1.margin_top = 0
	button1.pressed = false
	button2.margin_top = 0
	button2.pressed = false
	button3.margin_top = 0
	button3.pressed = false

func _on_Circle_pressed():
	if circleButton.pressed == false:
		circleButton.pressed = true
	else:
		deactiveButton(poligonButton, viereckButton, dreieckButton)
		circleButton.margin_top = -30
		emit_signal("circle")

func _on_Poligon_pressed():
	if poligonButton.pressed == false:
		poligonButton.pressed = true
	else:
		deactiveButton(circleButton, viereckButton, dreieckButton)
		poligonButton.margin_top = -30
		emit_signal("poligon")

func _on_Viereck_pressed():
	if viereckButton.pressed == false:
		viereckButton.pressed = true
	else:
		deactiveButton(circleButton, poligonButton, dreieckButton)
		viereckButton.margin_top = -30
		emit_signal("viereck")

func _on_Dreieck_pressed():
	if dreieckButton.pressed == false:
		dreieckButton.pressed = true
	else:
		deactiveButton(circleButton, poligonButton, viereckButton)
		dreieckButton.margin_top = -30
		emit_signal("dreieck")
