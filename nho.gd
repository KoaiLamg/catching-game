extends Area2D



func _process(delta: float) -> void:
	position.y+=100*delta

func _on_body_entered(_body: Node2D) -> void:
	print("Entered")
	queue_free()# Replace with function body.
