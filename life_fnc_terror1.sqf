life_fnc_terror1.sqf
_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;

hint "Congratulations! You are now a suicide bomber. Go to Public area ";

player addVest "V_HarnessOGL_brn";

life_actions = life_actions + [player addAction["Active explosive vest",life_fnc_suicideBomb,"",0,false,false,"",        'vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];

_gen removeAction _id; 
