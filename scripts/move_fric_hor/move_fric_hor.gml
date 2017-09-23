//Setup variables and implement arguments.
/*
argument0 = max movement speed
argument1 = acceleration speed
argument2 = deceleration speed
argument3 = cont
*/
cont=argument3;
contMove=gamepad_axis_value(cont,gp_axislh);
fric=argument2;
if (movingSpeedHor>0){
    dirh=1;}
if (movingSpeedHor<0){
    dirh=-1;}
moveGainSpeed=argument1*contMove;
moveMaxSpeed=argument0;
//Do shit
if (contMove<0.1&&contMove>-0.1){
    contmove=0;
if movingSpeedHor>fric{
    movingSpeedHor-=fric}
    else if movingSpeedHor<-fric{
        movingSpeedHor+=fric;}
    else if movingSpeedHor>=-fric&&movingSpeedHor<=fric{
        movingSpeedHor=0;
        moveGainSpeed=0;}}
if movingSpeedHor+moveGainSpeed<moveMaxSpeed*abs(contMove)&&movingSpeedHor+moveGainSpeed>-moveMaxSpeed*abs(contMove){
    movingSpeedHor+=moveGainSpeed;}
else if contMove>=0.1||contMove<=-0.1{
    if abs(movingSpeedHor)>moveMaxSpeed*abs(contMove){
        if dirh=1{
            movingSpeedHor-=fric}
        else{
            movingSpeedHor+=fric}}}

if place_meeting(x+(movingSpeedHor),y,obj_wall)||place_meeting(x+(movingSpeedHor),y,obj_not){
    move_snap(1,1);
    movingSpeedHor=0;
    i=0;
    while(!place_meeting(x+(dirh),y,obj_wall)&&!place_meeting(x+(dirh),y,obj_not)){
        x+=dirh;
        i+=1;
        if i>=20{
            break;}
        }}
else{
    x+=(movingSpeedHor);}
