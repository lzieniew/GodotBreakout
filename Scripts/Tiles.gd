extends Node

const TILES_PREFAB = preload('res://Prefabs/Background.tscn')

func _ready():
	var background = TILES_PREFAB.instance()
	get_tree().get_root().add_child(background)