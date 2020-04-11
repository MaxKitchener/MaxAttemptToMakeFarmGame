
//rows = room_height/TILE_SIZE;
//collumns = room_width/TILESIZE;


for(gridx=0; gridx<room_width; gridx+=TILE_SIZE;)
{
	if(gridx != 0 && gridx != room_width)
	{
		//draw_set_alpha(0.5);
		draw_line_width_color(gridx, 0, gridx, room_height, 1, c_black, c_black);
	}
}

for(gridy=0; gridy<room_height; gridy+=TILE_SIZE-1;)
{
	if(gridy != 0 && gridy != room_width)
	{
		//draw_set_alpha(0.5);
		draw_line_width_color(0, gridy, room_width, gridy,1, c_black, c_black);
	}
}
