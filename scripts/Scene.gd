extends Node2D
@onready var pausemen = $Pause
var paused = false

func pause():
	if paused:
		pausemen.hide()
		Engine.time_scale = 1
	else: 
		pausemen.show()
		Engine.time_scale = 0
		
	paused = !paused
	pass
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pause()
		pass
	pass
