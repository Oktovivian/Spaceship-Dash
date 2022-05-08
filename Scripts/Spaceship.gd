extends RigidBody2D

var GravityForce = 20
var JumpForce = 580

func _ready():
	set_physics_process(true)
	set_process_input(true) 
	
func _physics_process(_delta):
	linear_velocity.y += GravityForce

func _input(event):
	if(Input.is_action_just_pressed("fk_Jump")):
		loncat()

func loncat():
	linear_velocity = Vector2(linear_velocity.x, - JumpForce)

func _on_VisibilityNotifier2D_screen_exited():
	get_tree().change_scene("res://Scenes/Game Over.tscn")
