extends Node2D

@onready var player: CharacterBody2D = $Player

func _on_level_area_body_exited(body: Node2D) -> void:
	if body == player:
		get_tree().reload_current_scene()
