extends CharacterBody2D

var rng = RandomNumberGenerator.new()
var attacknum = 7

var move = Vector2()

#higher num less speed
@export var speed = 2000


func followplayer():
	var player = get_parent().get_node("player")
	
	position += (player.position-position)/speed
	#maybe add look at ???
	
	pass

# |
# |     Need to improve position equation cause rn its not working well(slows down as gets closer to target)
# . 
func attacktower():
	var tower = get_parent().get_node("El tore")
	position += (tower.position-position)/(speed)
	pass

func _ready():
	attacknum = rng.randf_range(0, 10)


func _process(delta):

	if(attacknum>7):
		followplayer()
	else:
		attacktower()
	move_and_collide(move)
