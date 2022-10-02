extends Area2D

signal mouseEnteredWorkingArea

func _ready() -> void:
	self.connect("mouse_entered", self, "_on_Area2D_mouse_entered")

func _on_Area2D_mouse_entered() -> void:
	print("I'm automatically called when a mouse entered my Area2D.")
	emit_signal("mouseEnteredWorkingArea")
