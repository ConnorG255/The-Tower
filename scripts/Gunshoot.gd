extends Area2D
@onready var character = $".."


@export var bspeed = 750
@export var firerate = 0.2
var ablefire = true
var bullet = preload("res://prefabs/Bullet.tscn")

func fire():
	var b_instance = bullet.instantiate()
	b_instance.position = get_global_position() + Vector2(0,0)
	b_instance.rotation_degrees = character.rotation_degrees + 90
	b_instance.linear_velocity = Vector2(bspeed,0).rotated(character.rotation)
	get_tree().get_root().call_deferred("add_child", b_instance)
	ablefire=false
	await(get_tree().create_timer(firerate).timeout)
	ablefire=true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("LMB") and ablefire == true and Engine.time_scale != 0:
		fire()
		
	pass
