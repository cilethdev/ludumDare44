var numProps = itemProps.length - 6;
for(var i = 0;i < numProps; i++){
	base[i] = 0;
}

base[itemProps.hp] = 1000000000; // TODO: change back
base[itemProps.ms] = 3;
base[itemProps.ad] = 30; // TODO: change back
base[itemProps.explodDmg] = 3;



// init any var that are not 0 here.


UpdateModifiers();

