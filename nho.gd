extends Area2D




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y+=100*delta





func _on_body_entered(body: Node2D) -> void:
	print("Entered")
	queue_free()# Replace with function body.
