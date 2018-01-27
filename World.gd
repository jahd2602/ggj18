extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var signal_strength = 0
const BLOCKING_GROUP = "blocking"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	#print(signal_strength)
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass


func _on_TransmissionLine_strength_changed(new_strength):
	signal_strength = new_strength
	print(signal_strength)
	pass # replace with function body
