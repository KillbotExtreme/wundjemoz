//Setup variables and implement arguments.
/*
argument0 = max movement speed
argument1 = acceleration speed
argument2 = deceleration speed
argument3 = cont
*/
cont=argument3;
contMove=gamepad_axis_value(cont,gp_axislv);
fric=argument2;
if (movingSpeedVert>0){
    dirv=1;}
if (movingSpeedVert<0){
    dirv=-1;}
moveGainSpeed=argument1*contMove;
moveMaxSpeed=argument0;
//Do shit
if (contMove<0.1&&contMove>-0.1){
    contmove=0;
if movingSpeedVert>fric{
    movingSpeedVert-=fric}
    else if movingSpeedVert<-fric{
        movingSpeedVert+=fric;}
    else if movingSpeedVert>=-fric&&movingSpeedVert<=fric{
        movingSpeedVert=0;
        moveGainSpeed=0;}}
if movingSpeedVert+moveGainSpeed<moveMaxSpeed*abs(contMove)&&movingSpeedVert+moveGainSpeed>-moveMaxSpeed*abs(contMove){
    movingSpeedVert+=moveGainSpeed;}
else if contMove>=0.1||contMove<=-0.1{
    if abs(movingSpeedVert)>moveMaxSpeed*abs(contMove){
        if dirv=1{
            movingSpeedVert-=fric}
        else{
            movingSpeedVert+=fric}}}

if place_meeting(x,y+(movingSpeedVert),obj_wall){
    move_snap(1,1);
    movingSpeedVert=0;
    while(!place_meeting(x,y+(dirv),obj_wall)){
        y+=dirv;
        }}
else{
    y+=(movingSpeedVert);}
