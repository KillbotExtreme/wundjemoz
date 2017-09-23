move_fric_hor(10,0.8,0.4,0);
move_fric_vert(10,0.8,0.4,0);
if sprite_index=obj_player{c=0}else{c=2}
if hasdasc=1{
	if gamepad_button_check_pressed(c,gp_shoulderrb){
		hasdasc=0;
		a=instance_create(x,y,obj_dasc)
		d=point_direction(0,0,gamepad_axis_value(c,gp_axisrh),gamepad_axis_value(c,gp_axisrv))
		with a{motion_set(other.d,10)}}}