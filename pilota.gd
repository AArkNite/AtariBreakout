extends RigidBody2D
var moviment := Vector2.ZERO

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	gravity_scale = 100
	linear_velocity.x = 10
	pass # Replace with function body.
func _process(delta):
	gravity_scale = 0
	
