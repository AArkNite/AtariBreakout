extends KinematicBody2D
var moviment := Vector2.ZERO
var velocitat := 300

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	moviment.x = Input.get_axis("ves_esquerra", "ves_dreta") * velocitat
	if moviment.y > 0 or moviment.y < 0:
		moviment.y = 0
	moviment = move_and_slide(moviment)
	
