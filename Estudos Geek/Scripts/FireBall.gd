extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	look_at(Vector2(get_global_mouse_position()))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_and_collide(Vector2(1,0).rotated(rotation) * speed)
