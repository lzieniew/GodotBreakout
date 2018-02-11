extends RigidBody2D

export var speedup = 40
export var maxspeed = 200
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _physics_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.is_in_group('Bricks'):
			body.queue_free()
			get_node('/root/Breakout').score += 5
			
		if body.name == "Paddle":
			var speed = linear_velocity.length()
			var direction = position -  body.get_node('Point').get_global_position()
			var vel = direction.normalized() * min(speed + speedup, maxspeed)
			set_linear_velocity(vel)
			
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
