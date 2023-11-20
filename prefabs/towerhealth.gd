extends Label


func _process(delta):
	self.text = "Tower Health: " + str(Global.tower_health)
	
	pass

