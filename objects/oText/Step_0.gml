lerpProgress += (1 - lerpProgress) /50;
textProgress += global.textSpeed;

x1 = lerp(x1,x1Target,lerpProgress);
x2 = lerp(x2,x2Target,lerpProgress);

//Cycle through responses
keyUp		= gamepad_button_check_pressed(global.cont, gp_padu); 
keyDown		= gamepad_button_check_pressed(global.cont, gp_padd); 
keyActivate = gamepad_button_check_pressed(global.cont, gp_face1);

responseSelected += (keyDown - keyUp);
var _max = array_length_1d(responses)-1;
var _min = 0;
if (responseSelected > _max) responseSelected = _min;
if (responseSelected < _min) responseSelected = _max;



//End Message
if (keyActivate)
{
	var _messageLength = string_length(message)
	if (textProgress >= _messageLength)
	{
		if (responses[0] != -1)
		{
			with (originInstance) DialogueResponses(other.responseScripts[other.responseSelected]);
		}
		
		instance_destroy();
		if (instance_exists(oTextQueued))
		{
			with (oTextQueued) ticket--;	
		}
		else
		{
			with (oPlayer) state = lastState;	
		}
	}
	else
	{
		if (textProgress > 2)
		{
			textProgress = _messageLength;
		}
	}
}