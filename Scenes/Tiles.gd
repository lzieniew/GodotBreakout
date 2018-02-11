extends Node

const TILE_PREFAB = preload('res://Prefabs/Tile.tscn')

func _ready():
	for x in range(0, 1024, 32):
		for y in range(0,512, 32):
			var tile = TILE_PREFAB.instance()
			add_child(tile)
			tile.position = Vector2(x, y)