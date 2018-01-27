extends Node2D


signal anthenaRotated

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var horizontalAngle = 0


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	if Input.is_action_pressed('rotate_clockwise'):
		horizontalAngle += 0.1
		if horizontalAngle > 360:
			horizontalAngle = 0
		emit_signal('anthenaRotated', horizontalAngle)
			
	if Input.is_action_pressed('rotate_counterclockwise'):
		horizontalAngle -= 0.1
		if horizontalAngle < 0:
			horizontalAngle = 359
		emit_signal('anthenaRotated', horizontalAngle)
