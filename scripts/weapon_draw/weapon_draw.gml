if laserImage<5{
    laserImage+=1;}
else{
    laserImage=0;}


direction = image_angle;//point_direction(x,y,x+gamepad_axis_value(0,gp_axisrh),y+gamepad_axis_value(0,gp_axisrv));

var max_length = 1000;
var solid_object = obj_wall;

for(var i = 0; i < max_length; i++){

    var lx = x + lengthdir_x(i, direction);
    var ly = y + lengthdir_y(i, direction);

    if(collision_point(lx, ly, solid_object, false, true)){
        break;
    }

}
depth=5;
draw_set_colour(c_red);
draw_line_width(x,y,lx,ly,3);
depth=-1;
draw_self();
draw_sprite(spr_laser_collision,laserImage,lx,ly);
