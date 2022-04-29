/// @description Player Code

//Get player input

keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyPush = keyboard_check(vk_space);

if (!global.gamePaused) {
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
	} if (keyPush) { //Si pulsa Espacio empujar objeto (Sin else)
		scrPushObject();
	}
}

//Animation

scrUpdateSprite(); //obtener un asset de GM usando un nombre, en este caso un sprite

}

