extends Control

onready var Score = $Score
onready var HighScore = $HighScore

func _ready():
	Score.text = "0"
	HighScore.text = "HIGH SCORE : " + str(ScoreManager.highScore)
	ScoreManager.connect("score_update", self, "_on_score_update")

func _on_score_update():
	Score.text = str(ScoreManager.score)
	HighScore.text = "HIGH SCORE : " + str(ScoreManager.highScore) 
