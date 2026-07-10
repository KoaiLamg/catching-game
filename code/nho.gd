extends Area2D

@export var toc_do_roi :int = 100

func _process(delta: float) -> void:
	position.y+=toc_do_roi*delta

func _on_body_entered(_body):
	QuanLyDiem.add_score()
	queue_free()
	
