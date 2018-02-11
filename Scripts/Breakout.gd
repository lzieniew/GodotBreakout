extends Node2D

var score = 0 setget set_score, get_score

func set_score(value):
	score = value
	get_node('Score').text = 'Score: ' + str(score)
	
func get_score():
	return score