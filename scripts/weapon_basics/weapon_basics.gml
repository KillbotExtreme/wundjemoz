cont=0;
if gamepad_axis_value(cont,gp_axisrh)>=0.13||gamepad_axis_value(cont,gp_axisrh)<=-0.13{
    contMoveHor=gamepad_axis_value(cont,gp_axisrh)}
else if gamepad_axis_value(cont,gp_axisrv)>=0.13||gamepad_axis_value(cont,gp_axisrv)<=-0.13{
    contMoveHor=0;}
if gamepad_axis_value(cont,gp_axisrv)>=0.13||gamepad_axis_value(cont,gp_axisrv)<=-0.13{
    contMoveVert=gamepad_axis_value(cont,gp_axisrv);}
else if gamepad_axis_value(cont,gp_axisrh)>=0.13||gamepad_axis_value(cont,gp_axisrh)<=-0.13{
    contMoveVert=0;}
dir=point_direction(0,0,contMoveHor,contMoveVert);
image_angle=dir;
x=obj_player.x;
y=obj_player.y;
