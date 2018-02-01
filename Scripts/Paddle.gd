extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
func _ready():
	pass
	
	
func _physics_process(delta):
	var y = position.y
	var x = get_viewport().get_mouse_position().x
	position = Vector2(x, y)
	





#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
