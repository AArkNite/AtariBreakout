extends KinematicBody2D
var moviment := Vector2.ZERO
var velocitat := 300


func _process(delta):
	moviment.x = Input.get_axis("ves_esquerra", "ves_dreta") * velocitat
	if position.y > 584 or position.y < 584:
		position.y = 584
	moviment = move_and_slide(moviment)
	
