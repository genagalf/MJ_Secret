/// @description Pause the Game
// https://www.youtube.com/watch?v=YvOi8_fu0Xo&ab_channel=Let%27sLearnThisTogether
if (keyboard_check_pressed(ord("P"))) {
	global.gamePaused = !global.gamePaused;
	
	if (global.gamePaused) {
		with(all)
		{
			gamePausedImageSpeed = image_speed;
			gamePausedCharSpeed = speed;
			speed = 0;
			image_speed = 0;
		}
	}
	else {
		with(all)
		{
			image_speed = gamePausedImageSpeed;
			speed = gamePausedCharSpeed;
		}
	}
}
