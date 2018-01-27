extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar
var cloud_loaded = preload("res://Scenes/Cloud.tscn")
var interval = 2
var initial_interval = 10
var initial_exponent = .1

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if interval > 0:
		interval -= delta
	elif initial_interval > 2:
		interval = initial_interval
		if initial_interval > .5:
			initial_interval -= exp(initial_exponent) - 1
			initial_exponent += .1
		instance_cloud()
	else:
		interval = 2
		instance_cloud()
	pass
	
func instance_cloud():
	print("Entrou")
	var cloud = cloud_loaded.instance()
	cloud.position = Vector2(rand_range(-360, 360), -60)
	get_owner().add_child(cloud)
	pass
