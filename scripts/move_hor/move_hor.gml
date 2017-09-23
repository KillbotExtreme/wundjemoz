//argument0 = move speed
cont=0;
contMove=gamepad_axis_value(cont,gp_axislh);
dir=0;
if (contMove>0.2||contMove<-0.2){
    }
else{
    contMove=0;}
moveSpeed=argument0;
if contMove>0{
    dir=1;}
else{
    dir=-1;}
//Do shit
if place_meeting(x+(contMove*moveSpeed),y,obj_wall){
    move_snap(1,1);
    while(!place_meeting(x+(dir),y,obj_wall)){
        x+=dir;}}
else{
    x+=contMove*moveSpeed;}
