/// @description 
y -=  64;
shopItems = [items.book,items.sword,items.book];
itemIds = ds_list_create();
for(var i = 0; i < 3; i ++) {
	var si = instance_create_depth(x-64+(i*64),y+64,-(y+64),obj_shopItem);
		si.item = shopItems[i];
		si.owner = id;
		ds_list_add(itemIds,si.id);
}