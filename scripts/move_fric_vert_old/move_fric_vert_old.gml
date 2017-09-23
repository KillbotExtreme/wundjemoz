//Setup variables and implement arguments.
/*
argument0 = max movement speed
argument1 = acceleration speed
argument2 = deceleration speed
*/
cont=0;
contMove=gamepad_axis_value(cont,gp_axislv);
fric=argument2;
if (movingSpeedVert>0){
    dirv=1;}
if (movingSpeedVert<0){
    dirv=-1;}
moveGainSpeed=argument1*contMove;
moveMaxSpeed=argument0;
//Do shit
if movingSpeedVert+moveGainSpeed<moveMaxSpeed&&movingSpeedVert+moveGainSpeed>-moveMaxSpeed{
    movingSpeedVert+=moveGainSpeed;}
if (contMove<0.2&&contMove>-0.2){
    contmove=0;
if movingSpeedVert>fric{
    movingSpeedVert-=fric}
    else if movingSpeedVert<-fric{
        movingSpeedVert+=fric;}
    else if movingSpeedVert>=-fric&&movingSpeedVert<=fric{
        movingSpeedVert=0;
        moveGainSpeed=0}}
if place_meeting(x,y+(movingSpeedVert),obj_wall){
    move_snap(1,1);
    movingSpeedVert=0;
    while(!place_meeting(x,y+(dirv),obj_wall)){
        y+=dirv;
        }}
else{
    y+=(movingSpeedVert);}
