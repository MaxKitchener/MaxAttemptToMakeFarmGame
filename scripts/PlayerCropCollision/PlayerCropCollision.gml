// simple check to see if the player is on a tile that can be planted on

var _collision = false;

// cbeck for instance of crop collision map at player location
if (tilemap_get_at_pixel(cropMap, x, y))
{
	_collision = true;
}

// return that sucker
return _collision;