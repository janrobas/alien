extends CharacterBody2D

@onready var player: CharacterBody2D = $"../Player"

func _physics_process(delta: float) -> void:
	var player_x := player.position.x
	var player_y := player.position.y

	if player_y < position.y:
		position.y = position.y - 100*delta
	elif player_y > position.y:
		position.y = position.y + 100*delta
		
	if player_x < position.x:
		position.x = position.x - 100*delta
	elif player_x > position.x:
		position.x = position.x + 100*delta
