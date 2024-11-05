/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//se estou usando a sprite de dano e a anuimaçao acabou, eu morro

if(sprite_index == spr_inimigo_skeleton_hit){
	
	morto = true;
}
if(sprite_index == spr_inimigo_skeleton_death){
	image_speed = 0;
	//14 - último frame
	image_index = 14;
}