extends KinematicBody2D


const UP = Vector2(0,-1)
const JUMP = -100
const GRAVITY = 200
const MAXFALLSPEED = 1000

var motion = Vector2()


func _ready():
	pass


func _physics_process(delta):
	
	motion.y += GRAVITY * delta
	
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	
	if Input.is_action_pressed("ui_up"):
		motion.y = JUMP
		$AnimatedSprite.play()
	
	motion = move_and_slide(motion, Vector2.UP)


func _on_FallSpace_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	get_tree().reload_current_scene()
