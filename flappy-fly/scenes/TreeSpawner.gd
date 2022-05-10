extends Node2D

var Trees = preload("res://scenes/Trees.tscn")
onready var timer = $Timer


func _ready():
	randomize()


func _on_Timer_timeout():
	spawn_tree()

func spawn_tree():
	var trees = Trees.instance()
	add_child(trees)
	trees.position.y = randi()% 100 + -50

