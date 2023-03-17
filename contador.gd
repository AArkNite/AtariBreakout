extends Area2D

export var vides := 5
var disponible := false

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "LIVES: " + str(vides) # Replace with function body.
	connect("body_exited", self, "_on_body_exited")
# Called every frame. 'delta' is the elapsed time since the previous frame.
	
func _on_body_exited(body):
	vides -= 1
	$Label.text = "LIVES: " + str(vides)



