extends AnimatedSprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	_on_MediaTruck_anthenaRotated(0)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_MediaTruck_anthenaRotated(degree):
	frame = int(degree / 5 + 5) % 73
