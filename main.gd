extends Node2D
var totals := 89
var jugant := true


func _ready():
	$contador.position = Vector2(420,590)
	$Jugador.position = Vector2(448,584)
	
func _process(delta):
	$puntuacio.suma(totals, len(get_tree().get_nodes_in_group("bloc")), jugant)
	totals = len(get_tree().get_nodes_in_group("bloc"))
	
	if totals == 0:
		$resultat.text = "WELL DONE!"
		for j in get_tree().get_nodes_in_group("pilota"):
			j.queue_free()
		
	if $contador.vides == 0:
		jugant = false
		for i in get_tree().get_nodes_in_group("bloc"):
			i.queue_free()
		for j in get_tree().get_nodes_in_group("pilota"):
			j.queue_free()
		$resultat.text = "GAME OVER"
		
		

	
