/// @description 
if (destroyT) { exit; }
alarm[0] = 15;

var enemiesKilled =  true;
for(var i = 0; i < ds_list_size(enemyList); i++) {
	if (instance_exists(enemyList[| i])) {
		enemiesKilled = false;
	}
}
if (enemiesKilled) {
	destroyT = 60;
}