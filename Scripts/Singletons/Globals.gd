extends Node

func Play():
	get_tree().change_scene("res://Scenes/Node2D.tscn")
	ScoreManager.score = 0
