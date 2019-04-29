/// @description Insert description here
// You can write your code in this editor
for(var i=0;i<itemProps.length-6;i++){
	var n = instance_create_depth(x,y,depth,statNotifier);	
	n.stat = i;
	n.amount = global.items[item,i];
}