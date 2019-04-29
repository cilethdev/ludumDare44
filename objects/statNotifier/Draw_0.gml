/// @description Insert description here 
// You can write your code in this editor 
var t = ""; 
switch(stat){ 
	case itemProps.hp: 
		t = "health"; 
		break; 
	case itemProps.armor: 
		t = "armor"; 
		break; 
	case itemProps.ms: 
		t = "speed"; 
		break; 
	case itemProps.ad: 
		t = "damage"; 
		break;  
	case itemProps.ap: 
		t = "ability power"; 
		break;  
	case itemProps.cdr: 
		t = "cool down reduction"; 
		break; 
	case itemProps.ct: 
		t = "charge time"; 
		break;  
	case itemProps.atmBonus: 
		t = "atm bonus"; 
		break; 
	case itemProps.homing: 
		t = "homing"; 
		break;  
	case itemProps.bleed: 
		t = "bleed"; 
		break;  
	case itemProps.projectiles: 
		t = "projectiles"; 
		break; 
	case itemProps.magnet: 
		t = "magnet"; 
		break;  
	case itemProps.healthSteal: 
		t = "health steal"; 
		break;  
	case itemProps.explodeSize: 
		t = "explosion size"; 
		break;  
	case itemProps.explodDmg: 
		t = "explosion damage"; 
		break;  
	case itemProps.accuracy: 
		t = "accuracy"; 
		break;  
	case itemProps.wave: 
		t = "wave"; 
		break;  
	default: 
		t = ""; 
		break; 
} 
 
if(amount == 0){ 
	return;	 
} 
 
var color = c_white; 
if(amount > 0){ 
	t = "+" + t; 
	color = (c_aqua); 
} 
if(amount > 1){ 
	t = "+" + t; 
	color = (c_green); 
} 
 
if(amount < 0){ 
	t = "-" + t; 
	color = (c_red); 
} 
if(amount < -1){ 
	t = "-" + t;	 
	color = (c_red); 
} 
 
timeAlive++; 
if(timeAlive > room_speed * 3){ 
	instance_destroy();	 
} 
// draw_text_color(x - string_length(t),y,t,color,color,color,color,(room_speed*3-timeAlive)/(room_speed*3)); 
// draw_set_font(fnt); 
draw_set_halign(fa_center); 
draw_set_valign(fa_middle); 
draw_set_colour(c_black); 
var scale = 1; 
draw_text_transformed(x+(1*scale),y,t,scale,scale,0); 
draw_text_transformed(x-(1*scale),y,t,scale,scale,0); 
draw_text_transformed(x,y+(1*scale),t,scale,scale,0); 
draw_text_transformed(x,y-(1*scale),t,scale,scale,0); 
 
draw_set_color(color); 
draw_text_transformed(x,y,t,scale,scale,0); 
draw_set_color(c_white);