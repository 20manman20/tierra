var file;

file = get_open_filename_ext("image file|*.png", "", "DSDSD", "CÁLLATE A LA VERGA");
if file != ""
{
	var spr = sprite_add(file, 0, false, false, 0, 0);
	var surf;
	surf = surface_create(16*47, 16);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	var _tile_l	= 16
	
	
	var spr_part_coor	= 0
	
	spr_part_coor	= [	[96,272],
						[128,224],
						[144,240],
						[128,64],
						[160,224],
						[256,208],
						[160,64],
						[144,32],
						[144,16],
						[128,32],
						[240,192],
						[160,48],
						[160,32],
						[144,64],
						[128,48],
						[144,224],
						
						[16,80],
						[256,64],
						[128,128],
						[64,32],
						[80,80],
						[128,160],
						[256,32],
						[32,32],			
						[192,272],
						[48,160],
						[64,128],
						[224,32],
						[160,160],
						[32,64],
						[48,224],
						[224,272],
						
						[64,144],
						[224,256],
						[48,208],
						[224,64],
						[144,160],
						[64,64],
						[192,240],
						[32,144],
						[240,128],
						[208,272],
						[224,240],
						[48,128],
						[192,256],
						[208,240],
						[48,144]
						]
	
	for (var i = 0; i < 47; ++i) {
		draw_sprite_part(spr, 0, spr_part_coor[i,0], spr_part_coor[i,1], _tile_l, _tile_l,i*16,0)
	}
	
	
	spr_custom = sprite_create_from_surface(surf, 0, 0, 16*47, 16, false, false, 0, 0);
	surface_reset_target();
	surface_free(surf);
	
	var file;
	file = get_save_filename_ext("image file|*.png", "s_tile_strip47", "", "GUARDALO MIERDA GUARDALO")
	if file != ""
	{
	    sprite_save(spr_custom, 0, file)
	}
}


