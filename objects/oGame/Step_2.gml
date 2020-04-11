/// @desc Pause the Game
keyStart	= gamepad_button_check_pressed(global.cont, gp_start)
keySelect	= gamepad_button_check_pressed(global.cont, gp_select)
keyDebug	= gamepad_button_check_pressed(global.cont, gp_stickr);


if(keySelect == true)
{
	game_restart();
}
else if (keyStart == true)
{
	global.gamePaused = !global.gamePaused;
	
	if (global.gamePaused)
	{
		with (all)
		{
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
		
	}
	else
	{
		with (all)
		{
			image_speed = gamePausedImageSpeed;	
		}
	}
}

// Toggle debug on and off
if(keyDebug == true)
{
	if(global.debug == false)
	{
		global.debug = true;
	}
	else
	{
		global.debug = false;
	}
}



