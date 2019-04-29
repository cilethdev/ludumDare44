/// @description Insert description here
// You can write your code in this editor
if(drawStats){
		var drawx = 10;
		var rightx = 250;
		var buffer = 30;
		var drawy = 10;
		drawFancyText("Enemies Killed: " ,c_white,1,drawx,drawy);
		drawFancyText(string(enemiesKilled),c_white,1,rightx,drawy);
		drawy += buffer;
		drawFancyText("Coins Collected: " ,c_white,1,drawx,drawy);
		drawFancyText(string(coinsCollected), c_white,1,rightx,drawy);
		drawy += buffer;                                                     
		                                                                     
		drawFancyText("Damage Recieved: " ,c_white,1,drawx,drawy);
		drawFancyText(string(damageRecieved), c_white,1,rightx,drawy);
		drawy += buffer;                                                     
		drawFancyText("Damage Dealt: " ,c_white,1,drawx,drawy);
		drawFancyText( string(damageDealt), c_white,1,rightx,drawy);
		drawy += buffer;                                                     
		drawFancyText("Run Time: " ,c_white,1,drawx,drawy);
		drawFancyText( string(runtime/room_speed) + "s", c_white,1,rightx,drawy);
		drawy += buffer;                                                     
		drawFancyText("Items Collected: " ,c_white,1,drawx,drawy);
		
		drawFancyText( string(itemsCollected), c_white,1,rightx,drawy);
		drawy += buffer;                                                     
		drawFancyText("Self Inflicted Damage: " ,c_white,1,drawx,drawy);
		drawFancyText( string(damageFromSpells), c_white,1,rightx,drawy);
		drawy += buffer;                                                   
		drawFancyText("Dashes Used: ",c_white,1,drawx,drawy);
		drawFancyText( string(dashesUsed), c_white,1,rightx,drawy);
		drawy += buffer;                                                    
		drawFancyText("Projectiles Shot: " ,c_white,1,drawx,drawy);
		drawFancyText( string(projectilesShot), c_white,1,rightx,drawy);
		drawy += buffer;
}