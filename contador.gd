extends Area2D

var vides := 10
# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "LIVES: " + str(vides)
	pass # Replace with function body.
	connect("body_entered", self, "_on_body_entered")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(vides)
	if body_entered():
		print("a")
	pass
	
func _on_body_entered(body):
	vides -= 1
	$Label.text = "LIVES: " + str(vides)



