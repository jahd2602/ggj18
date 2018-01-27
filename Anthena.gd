extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var texture135 = preload("res://antena135.png")
var texture225 = preload("res://antena225.png")


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_MediaTruck_anthenaRotated(degree):
	if degree < 90: # 0 - 90
		set_texture(texture135)
		set_flip_h(true)
		pass
	elif degree < 180: # 90 - 180 
		set_texture(texture135)
		set_flip_h(false)
		pass
	elif degree < 270: # 180 - 270
		set_texture(texture225)
		set_flip_h(false)
		pass
	else: # 270 - 360
		set_texture(texture225)
		set_flip_h(true)
		pass
