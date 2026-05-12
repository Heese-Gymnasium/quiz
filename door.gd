extends Node2D

@export var target_scene: String

var player_inside := false

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		player_inside = true

func _on_area_2d_body_exited(body):
	if body.name == "Player":
		player_inside = false

func _process(delta):
	if player_inside and Input.is_action_just_pressed("ui_accept"):
		_transition()

func _transition():
	LevelTransition.change_scene_to(target_scene)
