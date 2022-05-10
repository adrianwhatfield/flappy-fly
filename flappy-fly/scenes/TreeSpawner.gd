extends Node2D


func _ready():
	pass


func _on_Timer_timeout():
	var trees = load("res://scenes/Trees.tscn").instance()
	
	
	add_child(trees)
