
spd = 32 / 64 * 2; //32px, 64 framerate (ojito le ponemos 64 xra q sea un numero redondo), 2 Tiles per second
distance = 0; //Me dirá los pixeles que me voy a mover antes de detenerme

name = "NPC"; //para el script del sprite
action = "Stand"; //Walk o Stand
face = "D"; //Hacia donde mira

alarm[0] = room_speed * 3; //A los 3 segundos llama a la alarma 0 para que se ejecute
