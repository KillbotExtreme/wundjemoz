/*
argument0 = jump height
argument1 = jump button
*/
jumpHeight=argument0;
keyPress=argument1;
cont=0;
if gamepad_button_check_pressed(cont,keyPress){
    if place_meeting(x,y+1,obj_wall){
        gravSpeed=-jumpHeight;}}
if gravSpeed<0{
    if place_meeting(x,y+gravSpeed,obj_wall){
        if !place_meeting(x,y-1,obj_wall){
            gravSpeed=0;
            i=0;
            while(!place_meeting(x,y-1,obj_wall)){
                y-=1;
                i+=1;
                if i>=20{
                    break;}}}}}
if gamepad_button_check_released(cont,keyPress){
    if gravSpeed<2{
        gravSpeed/=3}}
