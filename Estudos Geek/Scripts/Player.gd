extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var direction = Vector2()
var speed = 4
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_W):
		direction.y = -speed
	elif Input.is_key_pressed(KEY_S) :
		direction.y = speed
	else:
		direction.y = 0
		
	if Input.is_key_pressed(KEY_A):
		direction.x = -speed
	elif Input.is_key_pressed(KEY_D):
		direction.x = speed
	else:
		direction.x = 0
		
	if direction.x == 0 and direction.y == 0:
		get_child(0).animation = "Idle"
	else:
		get_child(0).animation = "Walk"
	
	if self.position.x < get_global_mouse_position().x:
		#Direita
		get_child(0).flip_h = false
	elif self.position.x > get_global_mouse_position().x:
		get_child(0).flip_h = true
	
	
	move_and_collide(direction)
