/// @description Pause the Game
if (keyboard_check_pressed(ord("P"))) {
	global.gamePaused = !global.gamePaused;
	
	if (global.gamePaused) {
		with(all)
		{
			gamePausedImageSpeed = image_speed;
			gamePausedCharSpeed = speed;
			speed = 0;
			image_speed = 0;
			alarm_list = ds_list_create();
			for(var i=0;i<10;i+=1){//replace 10 with number of alarms in object
			      ds_list_add(alarm[i]);
			      alarm[i]=-1;//stop alarm from happening
			}
		}
	}
	else {
		with(all)
		{
			image_speed = gamePausedImageSpeed;
			speed = gamePausedCharSpeed;
			var len = ds_list_size(alarm_list);
			for(var i=0;i<len;i+=1){
			       alarm[i]=ds_list_find_value(alarm_list,i);
			}
			ds_list_destroy(alarm_list);
		}
	}
}
