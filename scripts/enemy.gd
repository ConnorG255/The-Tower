extends CharacterBody2D

var rng = RandomNumberGenerator.new()
var attacknum = 7

var move = Vector2()

#higher num less speed
@export var speed = 0.0002


func followplayer():
	var player = get_parent().get_node("player")
	
	global_position = global_position.lerp(player.position, speed)
	#maybe add look at ???
	
	pass

# |
# |     Need to improve position equation cause rn its not working well(slows down as gets closer to target)
# . 
func attacktower():
	var tower = get_parent().get_node("El tore")
	global_position = global_position.lerp(tower.position, speed)
	#position += (tower.position-position)/(speed)
	pass

func _ready():
	attacknum = rng.randf_range(0, 10)


func _process(delta):
	if(Engine.time_scale != 0):
		if(attacknum>7):
			followplayer()
		else:
			attacktower()
	
	move_and_collide(move)


func _on_area_2d_body_entered(body):
	if body.is_in_group("bullet"):
		Global.score += 100
		queue_free()
	if body.is_in_group("tower"):
		Global.tower_health -= 20
		queue_free()
	pass 
