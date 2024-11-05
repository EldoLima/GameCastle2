
//checando se ele está nochao

var _chao = place_meeting(x, y +1, obj_chao);


if(_chao)
{
//
tempo_decidir_andar -=1;
//se o tempo acabou, eu decido se vou andar
if(tempo_decidir_andar <=0){
	andando = choose(true, false);
		
	//escolhendo a direção. se ele decidiu andar
	if(andando){
		velh = choose(vel, -vel);
	}
	else{
		//velh =0;	
	}
	vel = choose(1, -1);
		
		
	//resentando o tempo
	tempo_decidir_andar = room_speed *2; 
}
		
	

	//control animation
	if(velh != 0){
		sprite_index = spr_inimigo_skeleton_walk;	
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = spr_inimigo_skeleton;
			
	}
	
	//se eu bater na parede, mudo a direção
	if(place_meeting(x + velh, y, obj_chao)){
		velh *=-1;
	}
	
	// Verifica se o personagem pode cair
if (!pode_cair) {
    // Checa se não há chão na direção para onde o personagem está se movendo
    if (!place_meeting(x + (velh*10), y + 1, obj_chao)) {
        // Inverte a direção para evitar a queda
        velh = -velh;
        image_xscale = sign(velh); // Ajusta a escala da imagem para refletir a direção
    }
}

	
	
}
else
{
//se não estou no chao, a gravidade me atinge
velv += grav;	
velh =0;
if(velh !=0){
	image_xscale = sign(velh);	
}
}

