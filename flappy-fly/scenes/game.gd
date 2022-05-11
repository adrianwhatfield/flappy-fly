extends Node2D

var score = 0
onready var label = $ScoreHUD

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func Score():
	score = score + 1
	label.set_text(score)
	print(score)


