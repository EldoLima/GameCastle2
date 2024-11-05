/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();


//personalizando as variaveis
//ele vai decidir se ele pode andar para direita ou para esquerda

vel =choose(1, -1);

andando = choose(true, false);

//escolhendo a direção. se ele decidiu andar
	if(andando){
		velh = choose(vel, -vel);
	}
	else{
		velh =0;	
	}
tempo_decidir_andar = room_speed;