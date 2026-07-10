extends Node

var score := 0

func add_score():
	score += 1
	print("Score:", score)

func reset_score():
	score = 0
