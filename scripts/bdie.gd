extends CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _on_CollisionShape2D_body_entered(body):
		queue_free() 
		



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
