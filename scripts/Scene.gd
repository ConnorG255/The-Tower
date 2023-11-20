extends Node2D
@onready var pausemen = $Pause
var paused = false

var rng = RandomNumberGenerator.new()

@onready var endscreen = $EndScreen


var enemyS = preload("res://prefabs/enemy.tscn")
var spawn_timer = 0
var spawn_interval = 1.3  # Initial spawn interval in seconds


func _process(delta):
	if Global.tower_health == 0:
		endscreen.show()
		Engine.time_scale = 0
		
		
	if Input.is_action_just_pressed("pause"):
		pause()
		
	spawn_timer += delta
	if spawn_timer >= spawn_interval:
		spawn_enemy()
		spawn_timer = 0
		if(spawn_interval > 0.2):
			decrease_spawn_interval()
		

func spawn_enemy():
	var enmy = enemyS.instantiate()
	enmy.position = Vector2(rng.randf_range(-220, 220), 200)
	call_deferred("add_child", enmy)

func decrease_spawn_interval():
	spawn_interval -= 0.0125 
	#spawn_interval = max(0.5, spawn_interval)


func pause():
	if paused:
		pausemen.hide()
		Engine.time_scale = 1
	else: 
		pausemen.show()
		Engine.time_scale = 0
		
	paused = !paused
	pass
