extends KinematicBody2D
var velocitat := Vector2(100,100)
var moviment := Vector2.ZERO
var em_moc := true


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if em_moc:
		var colisio := move_and_collide(velocitat * delta)
		if colisio:
			velocitat = velocitat.bounce(colisio.normal)
			
func _on_contador_body_entered(body):
	position = Vector2(500, 500)
	em_moc = false
	$Timer.start()
	
func _on_Timer_timeout():
	em_moc = true


func _on_contador_body_exited(body):
	pass # Replace with function body.
