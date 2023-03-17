extends Area2D

export var punts := 0


func suma(totals, actuals, jugant):
	if jugant:
		var nou = (totals - actuals) * 100
		punts += nou
		$punts.text = "SCORE: " + str(punts)
	else:
		$punts.text = "SCORE: " + str(punts)
		
	

func _ready():
	$punts.text = "SCORE: " + str(punts)
	 # Replace with function body.


func _process(delta):
	pass
