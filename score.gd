extends Label


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.name == "endscore":
		self.text = "Score: " + str(Global.score)
	else:
		self.text = str(Global.score)
	pass
