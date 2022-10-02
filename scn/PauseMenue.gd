extends ColorRect

onready var animator = $AnimationPlayer

func unpause():
	animator.play("Unpause")
#	get_tree().paused = false
	
func pause():
	animator.play("Pause")
#	get_tree().paused = true


func _on_Resume_button_down():
	unpause()


func _on_Restart_button_down():
	get_tree().reload_current_scene()
