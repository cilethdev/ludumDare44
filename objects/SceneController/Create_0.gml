/// @description 
ini_open("settings.ini");
hasSeenIntro = ini_read_real("scene","hasSeenIntro",false);
ini_close();

sceneT = 0;
scenePos = 0;
partPos = 0;
fade = 0;
partEnd = false;

sceneIntro[0,0] = "PRESENTING";
sceneIntro[0,1] = 60;
sceneIntro[0,2] = 120;
sceneIntro[0,3] = 60;
sceneIntro[0,4] = 60;

sceneIntro[1,0] = "A\nGAME\nBY";
sceneIntro[1,1] = 60;
sceneIntro[1,2] = 120;
sceneIntro[1,3] = 60;
sceneIntro[1,4] = 60;

sceneIntro[2,0] = "PEOPLE";
sceneIntro[2,1] = 60;
sceneIntro[2,2] = 120;
sceneIntro[2,3] = 60;
sceneIntro[2,4] = 60;



partPos = 1;
text = sceneIntro[0,0];
sceneT = sceneIntro[0,1];