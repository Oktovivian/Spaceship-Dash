extends Control

func _ready():
	$Score.text = "SCORE : " + str(ScoreManager.score)
	$Highscore.text = "HIGH SCORE : " + str(ScoreManager.highScore)

func _on_Play_Again_pressed():
	Globals.Play()

func _on_Main_Menu_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn")
