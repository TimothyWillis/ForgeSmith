extends KinematicBody2D

onready var interactor = $Interactor
var speed = 200

var velocity = Vector2()
var direction = Vector2.RIGHT
var interaction_offset = 60

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		direction = Vector2.DOWN
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		direction = Vector2.UP
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		direction = Vector2.RIGHT
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		direction = Vector2.LEFT
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	interactor.position = direction * interaction_offset

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
