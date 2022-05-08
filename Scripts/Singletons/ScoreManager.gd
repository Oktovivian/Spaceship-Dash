extends Node

var score:int
var highScore:int = 0

signal score_update

func _ready():
	load_game()

func _on_score_update():
	score += 1
	if score >= highScore:
		highScore = score
		save_game()
	emit_signal("score_update")

func save_game():
	print("save")
	var saveGame = File.new()
	saveGame.open("user://Terabas.save", File.WRITE)
	var save_dict = {"Highscore" : highScore}
	saveGame.store_line(to_json(save_dict))
	saveGame.close()

func load_game():
	var saveGame = File.new()
	if not saveGame.file_exists("user://Terabas.save"):
		return
	
	saveGame.open("user://Terabas.save", File.READ)
	var save_data = parse_json(saveGame.get_line())
	print(save_data)
	highScore = save_data["Highscore"]
	
	saveGame.close()
