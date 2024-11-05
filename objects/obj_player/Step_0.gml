
//controlando o player
var _left, _right, _jump;

var _chao = place_meeting(x, y +1, obj_chao);

_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.rigth);
_jump = keyboard_check_pressed(inputs.jump);

velh = (_right - _left) * vel;



//pulando
if(_chao)
{
	if(_jump){
	velv = -vel_jump;	
	}
	
	// se eu estou no chão e me movendo
	if(velh !=0)
	{
		//mudoa sprite
		sprite_index = spr_player_run;
		
		//e olho pra onde estou indo
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = spr_player_idle;	
	}
}
else{
	//mudando a sptrie
	if(velv < 0){
		sprite_index = spr_player_jump;
	}
	else
	{
		sprite_index = spr_player_fall;
	}
	
	
	//aplico a gravidade
	velv += grav;	
	if(velh!=0)
	{
		image_xscale = sign(velh);	
	}
}

