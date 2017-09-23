
nooble=instance_create(x,y,obj_dosc);
with nooble{
	if floor(random(2))==0{move_towards_point(obj_player.x,obj_player.y,10)}else{move_towards_point(obj_player2.x,obj_player2.y,10)}}