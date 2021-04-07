extends StaticBody2D

var toupee = AudioStreamPlayer.new()

func _process(delta):
	if Input.is_action_pressed("ui_home"):
		self.add_child(toupee)
		toupee.stream = load("res://assets/audio/.pleasebesecret.ogg")
		toupee.play()
	pass
