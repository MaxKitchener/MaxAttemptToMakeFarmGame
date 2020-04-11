x_pos = 8;
y_pos = 8;


draw_set_font(fDebug);
draw_text(x_pos, y_pos, "Debug mode on");
	
if(sPlayer.colState[e_Collision.move] == true)
{
	draw_text(x_pos, y_pos*2, "Move collision : true");
}
else
{
	draw_text(x_pos, y_pos*2, "Move collision : false");
}

if(sPlayer.colState[e_Collision.crop] == true)
{
	draw_text(x_pos, y_pos*3, "Crop collision : true");
}
else
{
	draw_text(x_pos, y_pos*3, "Crop collision : false");
}