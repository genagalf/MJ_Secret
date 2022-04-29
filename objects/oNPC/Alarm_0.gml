if (!global.gamePaused) {
	var xTo = irandom_range(-1, 1);
	var yTo = (xTo == 0) ? irandom_range(-1, 1) : 0; //Si xTo = 0 entonces hago el random o si no yTo = 0 , esto es para q no se mueva en diagonal
	
	if (xTo != 0 || yTo != 0) { //No seria necesario, pero si no nos movemos para que llamarla
		scrMoveTo(xTo, yTo);
	}
}
	
	alarm[0] = room_speed * 1;

