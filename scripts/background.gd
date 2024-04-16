extends Sprite

var des = 0
#onready var nave = get_node("../Nave")
export(NodePath) var nave
var time = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	if nave:
		nave = get_node(nave) # necessario para: export(NodePath) var nave
	else:
		set_process(false) # dasabilita: func _process(delta)
	pass 

func _process(delta):
	time += delta
	#material.set_shader_param("des", (nave.global_position.x - 80) * 0.005)
	material.set_shader_param("time", time)
	nave.global_position
	pass
