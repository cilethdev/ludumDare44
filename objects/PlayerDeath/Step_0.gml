/// @description 
a = Approach(a,1,1/60);


if (!ended) {
	if (a == 1) {
		ended = true;
		instance_create_depth(x,y,0,GameOver);
	}
}