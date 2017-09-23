/*
argument0 = max gravity speed
argument1 = gravity acceleration speed
*/
maxSpeed=argument0;
gravAmount=argument1;
if (!place_meeting(x,y+abs(gravSpeed)+gravAmount,obj_wall)){
    if gravSpeed+gravAmount<maxSpeed{
        gravSpeed+=gravAmount;}
    else{
        gravSpeed=maxSpeed;}}
else{
    if gravSpeed>0{
        gravSpeed=0;
        if !place_meeting(x,y+1,obj_wall){
            while(!place_meeting(x,y+1,obj_wall)){
                y+=1;}}}}    
y+=gravSpeed;
