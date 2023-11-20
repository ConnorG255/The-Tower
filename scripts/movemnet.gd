extends CharacterBody2D
@export var speed = 200

# FOR PLAYER DONT KNOW WHY I CALLED IT MOVBEMENT
@onready var endscreen = $"../EndScreen"
	
# Movement mainly
func _process(delta):
	look_at(get_global_mouse_position())
	
func get_input():
	var input_direction = Input.get_vector("A", "D", "W", "S")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()



#Death

func _on_area_2d_body_entered(body):
	if body.is_in_group("enemy"):
		endscreen.show()
		Engine.time_scale = 0
	pass


"""

var speed = 3



func _ready():
	pass
	
	

		

func _physics_process(delta):
	var motion = Vector2()
	
	if Input.is_action_pressed("W"):
		motion.y -=1
	if Input.is_action_pressed("S"):
		motion.y +=1
	if Input.is_action_pressed("A"):
		motion.x -=1
	if Input.is_action_pressed("D"):
		motion.x +=1
	translate(motion*speed)
	#move_and_slide()
	
	"""

