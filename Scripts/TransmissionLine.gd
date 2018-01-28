extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
signal strength_changed

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	calculate_strength()
		
	pass


func _on_MediaTruck_anthenaRotated(degree):
	rotation_degrees = degree

	
func calculate_strength():
	var new_strength = 0
	var areas
	if get_node("Ray1").overlaps_area(get_parent().get_node("SatellitePath/Follow/Satellite")):
		if has_clear_path(get_node("Ray1")):
			new_strength +=40
	if get_node("Ray2").overlaps_area(get_parent().get_node("SatellitePath/Follow/Satellite")):
		if has_clear_path(get_node("Ray2")):
			new_strength +=30
	if get_node("Ray3").overlaps_area(get_parent().get_node("SatellitePath/Follow/Satellite")):
		if has_clear_path(get_node("Ray3")):
			new_strength +=30
 	
	emit_signal('strength_changed', new_strength)
	pass

func has_clear_path(node):
	var ret = 1
	var areas = node.get_overlapping_areas()
	
	for i in areas:
		if i.is_in_group(get_node("../").BLOCKING_GROUP):
			ret = 0
			
	return ret
			
	