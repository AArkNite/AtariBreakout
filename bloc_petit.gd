extends StaticBody2D


export var color := Color(0,1,0)


func hit():
	queue_free()
		
func _ready():
	$ColorRect.color = color

