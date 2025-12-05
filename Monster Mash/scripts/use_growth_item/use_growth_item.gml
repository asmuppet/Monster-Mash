function use_growth_item(growth_item){
	if growth_item.quantity > 0 {
		growth_item.quantity--
		
		if growth_item.stat == "strength" {
			PlayerMonster.str += growth_item.instant_increase
			PlayerMonster.str_mult += growth_item.growth_increase
			return true
		}
		else if growth_item.stat == "speed" {
			PlayerMonster.spd += growth_item.instant_increase
			PlayerMonster.spd_mult += growth_item.growth_increase
			return true
		}
		else if growth_item.stat == "stamina" {
			PlayerMonster.sta += growth_item.instant_increase
			PlayerMonster.sta_mult += growth_item.growth_increase
			return true
		}
	}
				
	//otherwise, display error
	else {
		return false
	}
}