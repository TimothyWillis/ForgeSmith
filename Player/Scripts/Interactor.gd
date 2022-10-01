extends Node2D


var distance = 100
onready var interactionRaycast = $InteractionRaycast

func _process(delta):
	interactionRaycast.cast_to = get_parent().direction
	
	get_input()
	

func get_input():
	if Input.is_action_just_pressed("ui_accept"):
		var collider = interactionRaycast.get_collider()
		if collider is Interactable:
			collider.interact()
			print("interacted with ", collider.get_name())
	pass
