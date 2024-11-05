// Variáveis de controle do player
var _left, _right, _jump, _attack;
var _chao = place_meeting(x, y + 1, obj_chao);

// Inicializa os inputs
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);
_attack = keyboard_check_pressed(inputs.attack);
velh = (_right - _left) * vel;





// Verifica se o ataque foi iniciado
if (_attack && !is_attacking) {
	attack_count +=1;
    is_attacking = true;
    sprite_index = spr_player_attack1;
	
    image_index = 0; // Reinicia a animação de ataque
}

// Controla a animação de ataque
if (is_attacking) {
    // Checa se a animação terminou
    if (image_index >= image_number - 1) {
        is_attacking = false; // Reseta o ataque
        sprite_index = spr_player_idle; // Volta para a sprite de parada
    }
}
else {
    // Se estiver no chão
    if (_chao) {
        if (_jump) {
            velv = -vel_jump;	
        }

        // Se estiver se movendo
        if (velh != 0) {
            sprite_index = spr_player_run;
            image_xscale = sign(velh);
        }
        else {
            sprite_index = spr_player_idle;
        }
    }
    else {
        // Mudando a sprite para pulo ou queda
        if (velv < 0) {
            sprite_index = spr_player_jump;
        }
        else {
            sprite_index = spr_player_fall;
        }

        // Aplico a gravidade
        velv += grav;
        if (velh != 0) {
            image_xscale = sign(velh);	
        }
    }
}
