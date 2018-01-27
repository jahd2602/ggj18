extends Node

var signal_strength = 0
const BLOCKING_GROUP = "blocking"

func _ready():
	pass

func _process(delta):
	pass


func _on_TransmissionLine_strength_changed(new_strength):
	signal_strength = new_strength
	#print(signal_strength)
