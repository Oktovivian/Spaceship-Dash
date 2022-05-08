extends Node2D

var obstacle = preload("res://Scenes/Obstacle.tscn")

var obstacle_1 = 125
var obstacle_2 = 475

func _ready():
	randomize()
	spawn_obstacle()
	
func _on_Timer_timeout():
	spawn_obstacle()

func spawn_obstacle():
	var obs_pos = rand_range(obstacle_1, obstacle_2)
	var new = obstacle.instance()
	new.position = Vector2(1200, obs_pos)
	add_child(new)
