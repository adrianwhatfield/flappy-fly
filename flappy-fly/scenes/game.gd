extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var treeTop = load("res://scenes/TreeTop.tscn").instance()
	var treeBottom = load("res://scenes/TreeBottom.tscn").instance()
	
	add_child(treeTop)
	add_child(treeBottom)

