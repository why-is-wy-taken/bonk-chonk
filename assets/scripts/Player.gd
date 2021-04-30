# Player.gd
extends KinematicBody2D

const UP = Vector2(0, -1)
var speed = 400
var motion = Vector2()

# Debug shit
var title = "Bonk Chonk WIP Pre-Alpha"
func _on_SpeedUp_pressed():
	speed += 50
func _on_SpeedDown_pressed():
	speed -= 50
func _on_SpeedLabel_draw():
	pass
	

func _physics_process(delta):
	
	if motion == Vector2(0, 0):
		if Input.is_action_just_pressed("ui_right"):
			motion.x = speed
		elif Input.is_action_just_pressed("ui_left"):
			motion.x = -speed
		elif Input.is_action_just_pressed("ui_up"):
			motion.y = -speed
		elif Input.is_action_just_pressed("ui_down"):
			motion.y = speed

	if is_on_floor():
		var _motion = Vector2(0, 0)
	
	if OS.is_debug_build():
		print(motion)
	
	motion = move_and_slide(motion, UP)

	# Other debug shit
	if Input.is_action_pressed("select"):
		get_tree().quit()
	OS.set_window_title(title + " | speed: " + str(speed) + " | FPS: " + str(Engine.get_frames_per_second()))
