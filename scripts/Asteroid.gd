extends Node2D




func _ready():
	pass

func _process(delta):
	pass

# DESTROI ASTEROID
func _on_Area2D_area_entered(area):
	queue_free()
	pass 
