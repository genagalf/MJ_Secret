/// @description Objeto Bloque Empujable

if (hspeed > 0) { //Si el bloque se esta moviendo drcha
	if (place_meeting(x+32, y, oBlock)) { //Xra detenerse al encontrar un oBlock
		distance -= spd;
		if (distance <= 0 ) {
			hspeed = 0;
			distance = 32;
		}
	}
}
if (hspeed < 0) { //Si el bloque se esta moviendo izqda
	if (place_meeting(x-32, y, oBlock)) { //Xra detenerse al encontrar un oBlock
		distance -= spd;
		if (distance <= 0 ) {
			hspeed = 0;
			distance = 32;
		}
	}
}
if (vspeed > 0) { //Si el bloque se esta moviendo abajo
	if (place_meeting(x, y+32, oBlock)) { //Xra detenerse al encontrar un oBlock
		distance -= spd;
		if (distance <= 0 ) {
			vspeed = 0;
			distance = 32;
		}
	}
}
if (vspeed < 0) { //Si el bloque se esta moviendo arriba
	if (place_meeting(x, y-32, oBlock)) { //Xra detenerse al encontrar un oBlock
		distance -= spd;
		if (distance <= 0 ) {
			vspeed = 0;
			distance = 32;
		}
	}
}

