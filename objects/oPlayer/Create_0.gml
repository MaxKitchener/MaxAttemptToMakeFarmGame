state = PlayerStateFree;
lastState = state;

colState[e_Collision.move] = false;
colState[e_Collision.crop] = false;

collisionMap = layer_tilemap_get_id(layer_get_id("Move"));
cropMap		 = layer_tilemap_get_id(layer_get_id("Crop"));


image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedRoll = 3.0;
speedBonk = 1.5;
distanceRoll = 72;
distanceBonk = 40;
distanceBonkHeight = 12;
z = 0;


spriteRoll = sPlayerRoll;
spriteRun = sPlayerRun;
spriteIdle = sPlayer;
localFrame = 0;

global.cont = 0;
useController = false;

var gp_num = gamepad_get_device_count();
show_debug_message(string(gp_num) + " gamepads found\n");
for (var i = 0; i < gp_num; i++;)
{
	//assign first gamepad found to control player
	if (gamepad_is_connected(i))
	{
		show_debug_message(string(i) + ": " + gamepad_get_description(i)+ "\n");
		global.cont = i;
		useController = true;
		break;
	}
	else
	{
		show_debug_message(string(i) + ": No gamepad detected\n");
	}
}

