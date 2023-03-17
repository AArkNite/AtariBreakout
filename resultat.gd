extends Area2D

export var text := ""

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = text


func _process(delta):
	$Label.text = text
