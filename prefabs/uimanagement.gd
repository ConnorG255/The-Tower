extends Control


@onready var main = $"../"

# Pause Menu Rest in Scene
func _on_continue_pressed():
	main.pause()
	pass # Replace with function body.


func _on_quit_d__pressed():
	get_tree().quit()
	pass # Replace with function body.

# End screen

func _on_quit_button_down():
	get_tree().quit()
	pass # Replace with function body.



func _on_button_button_down():
	get_tree().reload_current_scene()
	Engine.time_scale = 1
	pass # Replace with function body.
