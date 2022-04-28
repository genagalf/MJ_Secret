/// @description Player Code

keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyPush = keyboard_check(vk_space);

//Movement

scrUpdateMovement();

if (speed == 0) { //Si estamos quietos entonces...
	if (keyRight) { //drcha
		scrMoveTo(1, 0);
	} else if (keyLeft) { //izqda
		scrMoveTo(-1, 0);
	} else if (keyDown) { //abajo
		scrMoveTo(0, 1);
	} else if (keyUp) { //arriba
		scrMoveTo(0, -1);
	}
}

//Animation

scrUpdateSprite(); //obtener un asset de GM usando un nombre, en este caso un sprite

//Empujar Objeto

if (speed == 0) { //Si estamos quietos
	if (keyPush) { //Si pulsa Espacio
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
