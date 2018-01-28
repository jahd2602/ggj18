extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export(NodePath) var credits_containers
export(NodePath) var credits_animation_player

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_ButtonPlay_pressed():
	get_tree().change_scene("res://Scenes/World.tscn")


func _on_ButtonCredits_pressed():
	get_node(credits_containers).show()
	get_node(credits_animation_player).play("Credits Go Up")


func _on_ButtonExit_pressed():
	get_tree().quit()


func _on_AnimationPlayer_animation_finished( anim_name ):
	get_node(credits_containers).hide()
