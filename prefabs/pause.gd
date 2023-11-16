extends Control


@onready var main = $"../"


func _on_continue_pressed():
	main.pause()
	pass # Replace with function body.


func _on_quit_d__pressed():
	get_tree().quit()
	pass # Replace with function body.
