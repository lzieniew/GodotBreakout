extends KinematicBody2D

export var speed = 2
const GAME_SCENE = preload('res://Scenes/Breakout.tscn')

func _process(delta):
	if Input.is_action_pressed('ui_up'):

		self.move_and_collide(Vector2(0, -1 * speed))
	if Input.is_action_pressed('ui_down'):
		self.move_and_collide(Vector2(0, speed))
	if Input.is_action_pressed('ui_right'):
		self.move_and_collide(Vector2(speed,0))
	if Input.is_action_pressed('ui_left'):
		self.move_and_collide(Vector2(-1 * speed,0))

		
	