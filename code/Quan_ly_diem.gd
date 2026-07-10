extends Node

signal score_changed(new_score)

var score := 0

func add_score():
	score += 1
	score_changed.emit(score)
