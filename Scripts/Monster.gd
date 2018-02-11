extends Area2D

const GAME_SCENE = preload('res://Scenes/Breakout.tscn')

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.is_in_group('player'):
			var scene = GAME_SCENE.instance()
			add_child(scene)
			scene.position = Vector2(100, 100)