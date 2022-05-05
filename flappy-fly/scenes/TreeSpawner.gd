extends Node2D


func _ready():
	pass


func _on_Timer_timeout():
	var treeTop = load("res://scenes/TreeTop.tscn").instance()
	var treeBottom = load("res://scenes/TreeBottom.tscn").instance()
	
	add_child(treeTop)
	add_child(treeBottom)
