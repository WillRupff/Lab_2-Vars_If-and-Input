extends Node2D

# Variable for the speed of the movement
@export var speed = 150

# The _ready function is called when the node is loaded into the scene
func _ready():
	print("GodotIcon is ready and loaded into the scene.")

# The _process function executes once every frame
func _process(delta):
	# Initialize a Vector2 variable to hold the movement direction
	var movement = Vector2.ZERO
	
	# Checking for user input to determine movement direction
	if Input.is_action_pressed("ui_right"):
		movement.x += 1
	elif Input.is_action_pressed("ui_left"):
		movement.x -= 1
	if Input.is_action_pressed("ui_up"):
		movement.y -= 1
	elif Input.is_action_pressed("ui_down"):
		movement.y += 1
	
	# Moving the node based on the calculated movement direction
	position += movement.normalized() * speed * delta
