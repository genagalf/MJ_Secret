/// @description Player Code

//Movement

if (speed != 0) { //Si nos estamos moviendo
	distance -= spd;
	
	if (distance <= 0 ) { //para detener al jugador cuando haya movido 32px
		speed = 0;
		action = "Stand"; //para cambiar el sprite a quieto
	}
}

if (speed == 0) { //Si estamos quietos entonces...
	if (keyboard_check(ord("D"))) { //drcha
		if (!place_meeting(x+32, y, oBlock) && !place_meeting(x+32, y, oHole)) { //place_free(x+32, y)
			hspeed = spd;
			distance = 32;
			action = "Walk"; //xra que cambien el sprite a movimiento (ver end step)
		}
		face = "R";
	} else if (keyboard_check(ord("A"))) { //izqda
		if (!place_meeting(x-32, y, oBlock) && !place_meeting(x-32, y, oHole)) { //place_free(x-32, y)
			hspeed = -spd;
			distance = 32;
			action = "Walk";
		}
		face = "L";
	} else if (keyboard_check(ord("S"))) { //abajo
		if  (!place_meeting(x, y+32, oBlock) && !place_meeting(x, y+32, oHole)) { //place_free(x, y+32)
			vspeed = spd;
			distance = 32;
			action = "Walk";
		}
		face = "D";
	} else if (keyboard_check(ord("W"))) { //arriba
		if (!place_meeting(x, y-32, oBlock) && !place_meeting(x, y-32, oHole)) { //place_free(x, y-32)
			vspeed = -spd;
			distance = 32;
			action = "Walk";
		}
		face = "U";
	}
}

//Animation

sprite_index = asset_get_index("sPlayer" + action + face); //obtener un asset de GM usando un nombre, en este caso un sprite

//Empujar Objeto

if (speed == 0) { //Si estamos quietos
	if (keyboard_check(vk_space)) { //Si pulsa Espacio
		if (place_meeting(x+32, y, oPushBlock) && face == "R") { //Si tenemos un objeto empujable y lo miramos drcha
			var push_block = instance_place(x+32, y, oPushBlock); //Guardamos la instancia del objeto
			with (push_block) { //Sobre el objeto
				if (!place_meeting(x+32, y, oBlock)) {
					hspeed = spd;
				}
			}
		} else if (place_meeting(x-32, y, oPushBlock) && face == "L") { //Si tenemos un objeto empujable y lo miramos izqda
			var push_block = instance_place(x-32, y, oPushBlock); //Guardamos la instancia del objeto
			with (push_block) { //Sobre el objeto
				if (!place_meeting(x-32, y, oBlock)) {
					hspeed = -spd;
				}
			}
		} else if (place_meeting(x, y+32, oPushBlock) && face == "D") { //Si tenemos un objeto empujable y lo miramos abajo
			var push_block = instance_place(x, y+32, oPushBlock); //Guardamos la instancia del objeto
			with (push_block) { //Sobre el objeto
				if  (!place_meeting(x, y+32, oBlock)) {
					vspeed = spd;
				}
			}
		} else if (place_meeting(x, y-32, oPushBlock) && face == "U") { //Si tenemos un objeto empujable y lo miramos arriba
			var push_block = instance_place(x, y-32, oPushBlock); //Guardamos la instancia del objeto
			with (push_block) { //Sobre el objeto
				if (!place_meeting(x, y-32, oBlock)) {
					vspeed = -spd;
				}
			}
		}
	}
}
