
// get grid position
plantx = TILE_SIZE * floor(oPlayer.x/TILE_SIZE);
planty = TILE_SIZE * floor(oPlayer.y/TILE_SIZE);

// Check there isn't already a plant 
if(position_meeting(plantx, planty, oPlant) == false)
{
	//create plant object
	plant_id = instance_create_layer(plantx, planty, "Crops", oPlant);
	
	//set sprite and randomly pick a type and sub image
	plant_id.spr = sCrops;
	plant_id.type = round(random(2));
	plant_id.img  = round(random(2));
}
