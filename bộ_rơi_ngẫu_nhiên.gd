extends Node2D

@onready var spawn_timer = $SpawnTimer
@onready var spawn_area = $SpawnArea

var item_scene = preload("res://Nho.tscn")

func _ready():

	spawn_timer.timeout.connect(spawn_item)
	spawn_item()
	spawn_timer.start()
"""
func spawn_item():
	var item = item_scene.instantiate()

	var shape = spawn_area.get_node("RandomKid").shape as RectangleShape2D
	var size = shape.size

	var random_x = randf_range(-size.x / 2, size.x / 2)
	var random_y = randf_range(-size.y / 2, size.y / 2)

	item.global_position = spawn_area.global_position + Vector2(random_x, random_y)
	add_child(item)
	#print(spawn_area.position)
	#print($SpawnArea/RandomKid.position)
	#print(spawn_area.scale)
	print("----------------")
	print("SpawnArea:", spawn_area.global_position)
	print("Item:", item.global_position)
	print("Random X:", random_x)
	print("Random Y:", random_y)
"""
func spawn_item():
	var item = item_scene.instantiate()
	print(item.position)
	print(item.global_position)
	print(item.get_parent())
	var shape = $SpawnArea/RandomKid.shape as RectangleShape2D
	var half = shape.size * 0.5

	var local_pos = Vector2(
		randf_range(-half.x, half.x),
		randf_range(-half.y, half.y))
	item.global_position = $SpawnArea.to_global(local_pos)
	add_child(item)
	print(item.position)
	print(item.global_position)
	print(item.get_parent())
