extends Area2D

func _physics_process(delta: float):
	var enemies = get_overlapping_bodies()
	if enemies.size() > 0:
		var target_enemy : CharacterBody2D = enemies.front()
		look_at(target_enemy.global_position)

func shoot():
	load("res://bullet.tscn")
	
