extends KinematicBody2D
var vy := 400
var velocitat := Vector2(rand_range(-200, 200), vy) 
var em_moc := true


func _ready():
	pass # Replace with function body.

func _physics_process(delta):	
	if em_moc:
		var colisio := move_and_collide(velocitat * delta)
		if colisio:
			velocitat = velocitat.bounce(colisio.normal)
			if colisio.collider.is_in_group("bloc"):
				colisio.collider.hit()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_contador_body_entered(body):
	position = Vector2(500, 500)
	velocitat =Vector2(rand_range(-200, 200), vy)  
	em_moc = false
	$Timer.start()
	
func _on_Timer_timeout():
	em_moc = true
	
func _on_contador_body_exited(body):
	pass
