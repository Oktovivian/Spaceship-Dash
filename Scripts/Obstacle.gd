extends Area2D

onready var Player = get_parent().get_node("Spaceship")

signal score_update

var is_passed = false

func _ready():
	self.connect("score_update", ScoreManager, "_on_score_update")

func _physics_process(delta):
	position.x -= 3
	
	if global_position < Player.global_position and !is_passed:
		emit_signal("score_update")
		self.disconnect("score_update", ScoreManager, "_on_score_update")
		is_passed = true

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_Obstacle_body_entered(body):
	get_tree().change_scene("res://Scenes/Game Over.tscn")
