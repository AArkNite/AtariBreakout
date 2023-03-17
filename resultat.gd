extends Area2D

export var text := ""


func _ready():
	$Label.text = text
func _process(delta):
	$Label.text = text
