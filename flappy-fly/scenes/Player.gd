extends KinematicBody2D


const UP = Vector2(0,-1)
const JUMP = 100
const GRAVITY = 2
const MAXFALLSPEED = 200

var motion = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	motion.y += GRAVITY + delta
	
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	
	motion = move_and_slide(motion, Vector2.UP)


func _on_FallSpace_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	get_tree().reload_current_scene()
