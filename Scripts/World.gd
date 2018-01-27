extends Node

var signal_strength = 0
const BLOCKING_GROUP = "blocking"

func _ready():
	randomize()
	pass

func _process(delta):
	pass

func _on_TransmissionLine_strength_changed(new_strength):
	if signal_strength != new_strength:
		signal_strength = new_strength
		get_node("HUD/Label").set_text("SIGNAL QUALITY " + str(signal_strength) + "%")
		
	
