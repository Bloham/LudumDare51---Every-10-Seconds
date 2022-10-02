extends Area2D

signal mouseExitedWorkingArea

func _ready() -> void:
	self.connect("mouse_entered", self, "_on_Area2D_mouse_entered")

func _on_Area2D_mouse_entered() -> void:
	print("I'm automatically called when a mouse EXITED my Area2D.")
	emit_signal("mouseExitedWorkingArea")


