extends KinematicBody2D

const ball_scene = preload("res://Prefabs/Ball.tscn")

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
func _ready():
	set_process_input(true)
	
	
func _physics_process(delta):
	var y = position.y
	var x = get_viewport().get_mouse_position().x
	position = Vector2(x, y)
	
func _input(event):
	if typeof(event) == typeof(InputEventMouseButton) && event.is_pressed():
		var ball = ball_scene.instance()
		ball.position = position - Vector2(0, 16)
		get_tree().get_root().add_child(ball)




#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
