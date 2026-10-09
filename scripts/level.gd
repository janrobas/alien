extends Node2D

@onready var player: CharacterBody2D = $Player
@onready var score_label: Label = $Control/ScoreLabel

func _on_level_area_body_exited(body: Node2D) -> void:
	if body == player:
		get_tree().reload_current_scene()
		GameState.score = 0


func _on_score_time_timeout() -> void:
	GameState.score = GameState.score + 1
	refresh_score_label()

func refresh_score_label() -> void:
	score_label.text = "Score: " + str(GameState.score)
	


func _on_ready() -> void:
	refresh_score_label()
