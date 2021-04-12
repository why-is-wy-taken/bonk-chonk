extends KinematicBody2D

const UP = Vector2(0, -1)
const SPEED = 200
const JUMP_HEIGHT = -450
var motion = Vector2()

func _physics_process(_delta):
	
	if motion == Vector2(0, 0):
		if Input.is_action_just_pressed("ui_right"):
			motion.x = SPEED
		elif Input.is_action_just_pressed("ui_left"):
			motion.x = -SPEED
		elif Input.is_action_just_pressed("ui_up"):
			motion.y = -SPEED
		elif Input.is_action_just_pressed("ui_down"):
			motion.y = SPEED

	if is_on_floor():
		var _motion = Vector2(0, 0)
	
	print(motion)
	motion = move_and_slide(motion, UP)
	pass

	# Debug button to easily quit (end)
	if Input.is_action_pressed("ui_end"):
		get_tree().quit()
