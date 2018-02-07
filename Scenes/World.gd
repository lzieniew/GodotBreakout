extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var score = 0 setget set_score

func set_score(value):
	score = value
	get_node("Score").set_text('Score: ' + str(score))
