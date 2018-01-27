extends Path2D

onready var follow = get_node("Follow")
var velocity = 30

func _ready():
	pass

func _process(delta):
	follow.set_offset(follow.get_offset() + velocity * delta)
	#if follow.get_unit_offset() >= 1:
	pass
