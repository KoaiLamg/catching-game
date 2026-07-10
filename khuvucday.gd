extends Area2D



func _on_area_entered(area: Area2D) -> void:
	print("ENT")
	area.queue_free() # Replace with function body.
