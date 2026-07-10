extends CanvasLayer

@onready var score_label = $ScoreLabel

func _ready():
	score_label.text = "Score: 0"
	QuanLyDiem.score_changed.connect(_on_score_changed)

func _on_score_changed(new_score):
	score_label.text = "Score: " + str(new_score)
