extends RigidBody2D


func _on_body_entered(body):
	if body.is_in_group("walls"):
		queue_free() 
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
