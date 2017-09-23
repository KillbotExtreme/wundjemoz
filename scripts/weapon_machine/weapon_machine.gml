shootSpeed=argument0;
CD=argument1;//private cooldown var
shootSpread=argument2;
recoil=argument3;
cont=0;

if gamepad_button_check(cont,gp_shoulderrb){

if cooldown<=0{
    cooldown=CD;//global cooldown var
    bullet=instance_create(x+lengthdir_x(sprite_width,image_angle),y+lengthdir_y(sprite_width,image_angle),obj_bullet)
    with bullet{
        dir=other.image_angle;
        if floor(random(2))==0{
            dir+=random(other.shootSpread)}
        else{
            dir-=random(other.shootSpread)}
        motion_set(dir,other.shootSpeed);
        image_angle=dir;}}
else{
    cooldown-=1;}


}
