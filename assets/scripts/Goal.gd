# Goal.gd
extends Area2D

export(String, FILE, "*.tscn") var next_lvl

func _physics_process(_delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			# TODO: Make it so a sound plays when you touch the goal!
			get_tree().change_scene(next_lvl)
	pass
