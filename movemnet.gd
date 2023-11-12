extends CharacterBody2D

var bspeed = 1500
var speed = 10

var bullet = preload("res://prefabs/Bullet.tscn")

func fire():
	var b_instance = bullet.instantiate()
	b_instance.position = get_global_position() + Vector2(0,0)
	b_instance.rotation_degrees = rotation_degrees + 90
	b_instance.linear_velocity = Vector2(bspeed,0).rotated(rotation)
	get_tree().get_root().call_deferred("add_child", b_instance)

func _ready():
	pass
	
	
func _process(delta):
	look_at(get_global_mouse_position())
	
	if Input.is_action_just_pressed("LMB"):
		fire()
		

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
	
	

