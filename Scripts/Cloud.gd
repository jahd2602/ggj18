extends Area2D

var velocity = 100

func _ready():
	add_to_group(get_node("../").BLOCKING_GROUP)
	pass

func _process(delta):
	position += Vector2(1, 1) * velocity * delta
	if position.x > 1380 and position.y > 820:
		queue_free()
	pass
