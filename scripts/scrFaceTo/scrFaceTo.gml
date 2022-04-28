
function scrFaceTo(_x, _y){
	var dx = _x - x;
	var dy = _y - y;
	
	if (dx > 0) {
		face = "R";	
	} else if (dx < 0) {
		face = "L";	
	} else if (dy > 0) {
		face = "D";	
	} else if (dy < 0) {
		face = "U";	
	}
	
}