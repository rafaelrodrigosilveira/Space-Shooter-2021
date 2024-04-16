extends Node2D

var vel = 200 # velocidade do laser


func _ready():
	pass

func _process(delta):
	# MOVIMENTA O LASER
	translate(Vector2(0,-1)* vel * delta)
	pass

# DESTROI QUANDO O LASER SAIR DA TELA
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass

# DESTROI LASER
func _on_Area2D_area_entered(area):
	queue_free()
	pass 
