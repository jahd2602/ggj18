extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var velocity = 100

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	add_to_group(get_node("../").BLOCKING_GROUP)
	pass

func _process(delta):
	position += Vector2(1, 1) * velocity * delta
	if position.x > 1380 and position.y > 820:
		print("cloud deleted")
		queue_free()
	pass
