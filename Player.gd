extends KinematicBody2D

var canMove:bool = false

func _ready():
	position = gloVar.playerSpawnLoc
	yield(get_tree().create_timer(0.4),"timeout")
	canMove = true
func _process(delta):
	if(canMove == true):
		movement()

func movement():
	var verticalAxis = Input.get_action_strength("movement_down") - Input.get_action_strength("movement_up")
	var horiontalAxis = Input.get_action_strength("movement_right") - Input.get_action_strength("movement_left")
	var velocity = Vector2(horiontalAxis,verticalAxis)
	velocity.normalized()
	move_and_slide(velocity * 100)

