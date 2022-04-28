
function scrUpdateMovement(){
	if (speed != 0) { //Si nos estamos moviendo
		distance -= spd;
		
		if (distance <= 0 ) { //para detener al jugador cuando haya movido 32px
			speed = 0;
			action = "Stand"; //para cambiar el sprite a quieto
			
			x = floor((x + 1) / 32) * 32; // Apaño xq se queda un pixel por encima el NPC antes de deterse
			y = floor((y + 1) / 32) * 32; // Apaño xq se queda un pixel por encima el NPC antes de deterse
		}
	}
}