extends CharacterBody2D


const SPEED = 500


func _physics_process(_delta: float) -> void:
	var direction := Input.get_axis("move_left_catching_game", "move_right_catching_game")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
