extends Node2D

const SPEED = 125
var score = 0

func _physics_process(delta):
	position.x += -SPEED * delta
	if global_position.x <= -50:
		global_position.x = 400


func _on_TreeTop_body_entered(body):
	if body is Player:
		get_tree().reload_current_scene()


func _on_TreeBottom_body_entered(body):
	if body is Player:
		get_tree().reload_current_scene()


func _on_ScoreArea_body_entered(body):
	if body is Player:
		score += 1
		print("score")


