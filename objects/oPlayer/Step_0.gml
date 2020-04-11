//Get Player Input

keyLeft		= gamepad_button_check(global.cont, gp_padl);
keyRight	= gamepad_button_check(global.cont, gp_padr); 
keyUp		= gamepad_button_check(global.cont, gp_padu); 
keyDown		= gamepad_button_check(global.cont, gp_padd); 
keyActivate = gamepad_button_check_pressed(global.cont, gp_face1);
keyAttack	= gamepad_button_check_pressed(global.cont, gp_face2);
keyItem		= gamepad_button_check_pressed(global.cont, gp_face3);




inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

if (!global.gamePaused) script_execute(state);

colState[e_Collision.crop] = PlayerCropCollision();

depth = -bbox_bottom;