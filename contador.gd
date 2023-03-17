extends Area2D

export var vides := 5
var disponible := false


func _ready():
	$Label.text = "LIVES: " + str(vides)
	connect("body_exited", self, "_on_body_exited")

	
func _on_body_exited(body):
	vides -= 1
	$Label.text = "LIVES: " + str(vides)



