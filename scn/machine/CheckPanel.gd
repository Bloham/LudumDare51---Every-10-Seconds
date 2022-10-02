extends Node2D

signal checked
signal error

func _on_Area2D_area_entered(area: Area2D) -> void:
#	if(area.is_in_group("NotFixed")):
#		emit_signal("error")
#		print("ERROR!")
	
	if(area.is_in_group("Fixed")) && area.is_in_group("NotFixed"):
		emit_signal("checked")
		print("Check!")
	else:
		if(area.is_in_group("MouseSpace")):
			return
		emit_signal("error")
		print("ERROR!")
