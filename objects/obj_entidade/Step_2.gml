/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//checando a colisão horizontal
 var _col = instance_place(x + velh, y, obj_chao);
//se eu colidir, eu grupo em colidir
if(_col)
{
	//checando se estou indo p direita
	if(velh>0)
	{
		//grudando na parte esquerda da parede
		x = _col.bbox_left + (x-bbox_right);
	}
	
	// verificando se estou indo para esquerda
	if(velh < 0)
	{
		x = _col.bbox_right + (x-bbox_left);
	}
	//uma vez que eu colidi, nao importa o lado, eu paro
	
	velh =0;
}

x += velh;

//checando a colisão horizontal
_col = instance_place(x,y + velv, obj_chao);
if(_col)
{
	if(velv > 0)
	{
		//indo para baixco	
		y = _col.bbox_top + (y-bbox_bottom);
	}
	
	if(vel < 0)
	{
		//indo para cima
		 y = _col.bbox_bottom + (y - bbox_top);
	}
	velv = 0;
}
y+= velv;