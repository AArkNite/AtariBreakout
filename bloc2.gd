extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var color := Color(0,1,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	$ColorRect.color = color

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
