function scrMoveTo(xTo, yTo){
	if (!place_meeting(x+32*xTo, y+32*yTo, oBlock) && !place_meeting(x+32*xTo, y+32*yTo, oHole)) { //place_free(x+32, y)
		hspeed = spd * xTo;
		vspeed = spd * yTo;
		distance = 32;
		action = "Walk"; //xra que cambien el sprite a movimiento (ver end step)
	}
	scrFaceTo(x+32*xTo, y+32*yTo);
}