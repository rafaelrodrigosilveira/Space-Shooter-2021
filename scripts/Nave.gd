extends Node2D

const PRE_LASER = preload("res://cenas/Laser.tscn") # caminho do laser
export var vel = 100.0 # velocidade da nave
var quantiros = 1 # quantidade de tiros

func _ready():
	pass

func _process(delta):
	# MOVIMENTA A NAVE A  60 FPS
	var dirX = 0
	var dirY = 0
	if Input.is_action_pressed("ui_left"):
		dirX += -1
		pass
	if Input.is_action_pressed("ui_right"):
		dirX += 1
		pass
	if Input.is_action_pressed("ui_up"):
		dirY += -1
		pass
	if Input.is_action_pressed("ui_down"):
		dirY += 1
		pass
	# FIM - MOVIMENTA A NAVE A  60 FPS
	
	# CARREGA O LASER
	if Input.is_action_just_pressed("ui_accept"):
		if get_tree().get_nodes_in_group("laseres").size() < quantiros: # limita a quantidade de tiros
			var laser = PRE_LASER.instance()# instancia o laser
			get_parent().add_child(laser)# pega o caminho do nó do laser
			laser.global_position = $"Blaster-Position2D".global_position # centraliza o laser na nave usando o Position2D
			pass
		pass # FIM - CARREGA O LASER
	
	translate(Vector2(dirX,dirY)* vel * delta) # movimenta a nave
	
	# LIMITA A MOVIMENTAÇAO DA NAVE
	global_position.x = clamp(global_position.x, 21,299)
	global_position.y = clamp(global_position.y, 24,553)
	pass
