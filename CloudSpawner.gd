extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar
var cloud_loaded = preload("res://Cloud.tscn")
var interval = 2
var initial_interval = 10

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
	if interval > 0:
		interval -= delta
	else:
		interval = initial_interval
		initial_interval -= .5
		var cloud = cloud_loaded.instance()
		cloud.position = Vector2(rand_range(-360, 360), -60)
		get_owner().add_child(cloud)
	pass
