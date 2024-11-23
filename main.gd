extends Node2D

@export var health = 10

func split():
	print("BANANA")
	var current_player = $Player
	self.remove_child(current_player)
	var scene = preload("res://player.tscn")
	var player1 = scene.instantiate()
	var player2 = scene.instantiate()
	self.add_child(player1)
	self.add_child(player2)


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_split"):
		split()

func _ready() -> void:
	var intro_level_scene = preload("res://levels/intro.tscn")
	var intro = intro_level_scene.instantiate()
	add_child(intro)