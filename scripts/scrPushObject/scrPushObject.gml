
function scrPushObject(){
	if (place_meeting(x+32, y, oPushBlock) && face == "R") { //Si tenemos un objeto empujable y lo miramos drcha
		var push_block = instance_place(x+32, y, oPushBlock); //Guardamos la instancia del objeto
		with (push_block) { //Sobre el objeto
			if (!place_meeting(x+32, y, oBlock) && speed == 0) { //Si no tiene un block y no se esta ya moviendo
				hspeed = spd;
			}
		}
	} else if (place_meeting(x-32, y, oPushBlock) && face == "L") { //Si tenemos un objeto empujable y lo miramos izqda
		var push_block = instance_place(x-32, y, oPushBlock); //Guardamos la instancia del objeto
		with (push_block) { //Sobre el objeto
			if (!place_meeting(x-32, y, oBlock)  && speed == 0) {
				hspeed = -spd;
			}
		}
	} else if (place_meeting(x, y+32, oPushBlock) && face == "D") { //Si tenemos un objeto empujable y lo miramos abajo
		var push_block = instance_place(x, y+32, oPushBlock); //Guardamos la instancia del objeto
		with (push_block) { //Sobre el objeto
			if  (!place_meeting(x, y+32, oBlock) && speed == 0) {
				vspeed = spd;
			}
		}
	} else if (place_meeting(x, y-32, oPushBlock) && face == "U") { //Si tenemos un objeto empujable y lo miramos arriba
		var push_block = instance_place(x, y-32, oPushBlock); //Guardamos la instancia del objeto
		with (push_block) { //Sobre el objeto
			if (!place_meeting(x, y-32, oBlock) && speed == 0) {
				vspeed = -spd;
			}
		}
	}
}