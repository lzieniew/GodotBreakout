extends Node

var tile0 = preload('res://Prefabs/Tiles/tile0.tscn')
var tile1 = preload('res://Prefabs/Tiles/tile1.tscn')
var tile2 = preload('res://Prefabs/Tiles/tile2.tscn')



func _ready():
	var tiles = [tile0, tile1, tile2]
	var projectResolution=Vector2(get_viewport().size.x,get_viewport().size.y)
	for x in range(0, projectResolution.x + 1, 32):
		for y in range(0, projectResolution.x + 1, 32):
			randomize()
			var tile = tiles[randi()%len(tiles)].instance()
			tile.position = Vector2(x,y)
			randomize()
			var rotation = (randi()%4) * 90
			tile.rotation_degrees = rotation
			add_child(tile)
	