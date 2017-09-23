//argument0 = move speed
cont=0;
contMove=gamepad_axis_value(cont,gp_axislv);
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
if place_meeting(x,y+(contMove*moveSpeed),obj_wall){
    while(!place_meeting(x,y+(dir),obj_wall)){
        move_snap(1,1)
        y+=dir;}}
else{
    y+=contMove*moveSpeed;}
