for (var i = 0; i < room_width/16; ++i) {
	for (var j = 0; j < room_height/16; ++j) {
		var _random	= irandom_range(0,3)
		if _random == 0 instance_create_depth(i*16,j*16,depth,o_block)
	}
}
