extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat := 100
var velocitat_rotacio := 1
var direccio := Vector2.ZERO
var distancia := 1
var moviment := Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("gira_dreta"):
		rotation_degrees += velocitat_rotacio
	
	if Input.is_action_pressed("gira_esquerra"):
		rotation_degrees -= velocitat_rotacio
	
	if Input.is_action_pressed("ves_endavant"):
		position.x += distancia * cos(rotation_degrees)
		position.y += distancia * sin(rotation_degrees)
	
	if Input.is_action_pressed("ves_enrrere"):
		position.x += distancia * cos(180 + rotation_degrees)
		position.y += distancia * sin(180 + rotation_degrees)
	print(rotation_degrees)
#	moviment = move_and_slide(moviment)
	
#	if is_just_pressed("ves_endavant"):
#
#	if is_just_pressed("ves_enrrere"):
	
	pass
