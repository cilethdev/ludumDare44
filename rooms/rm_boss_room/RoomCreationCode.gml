var tLayer = layer_get_id("tiles_floor");
var map = layer_tilemap_get_id(tLayer);
for(var i = 0; i < (room_width div 32); i++) {
	for(var j = 0; j < (room_height div 32)+1; j++) {
		var index = irandom(100) < 4 ? 8 : irandom_range(1,7);
		tilemap_set_at_pixel(map,index,i*32,j*32)
	}
}
