// In this document: Custom clothing for patreons and others as of august 2021 on Fortune 13. Items must be labeled with the name of the person they
// are intended for and have the correct icon path included.


// WHISKEY //

/obj/item/clothing/suit/armor/f13/ncr/vetranger/desert/whiskey
	name = "weathered ranger combat armor"
	desc = "An original suit of pre-war combat armor used by elite military units, passed down through generations to where it is today. Though it's not lined with kevlar, this suit's still lightweight and easy to move around in."
	icon = 'icons/fallout/clothing/custom/custom.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/custom/custom.dmi'
	icon_state = "desert_ranger"
	item_state = "desert_ranger"
	armor = list("melee" = 20, "bullet" = 30, "laser" = 10, "energy" = 20, "bomb" = 30, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
	mutantrace_variation = STYLE_DIGITIGRADE

/obj/item/clothing/suit/armor/f13/ncr/vetranger/desert/whiskey/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/armor_plate)

/* New system version replace when switch
/obj/item/clothing/suit/armored/light/whiskey_desert
	name = "weathered ranger combat armor"
	desc = "A original suit of pre-war combat armor used by elite military units, passed down through generations to where it is today. Though it's not lined with kevlar, this suit's still lightweight and easy to move around in."
	icon_state = "desert_ranger"
	item_state = "desert_ranger"
	armor = list("melee" = 20, "bullet" = 30, "laser" = 10, "energy" = 20, "bomb" = 30, "bio" = 30, "rad" = 20, "fire" = 60, "acid" = 0)
*/

// YEEHAWGYVNAH/"Trinity Kemble" //
/obj/item/clothing/suit/armor/f13/ncr/trailranger/kemble
	name = "riot vest"
	desc = "An armored chestplate ripped out of old riot gear."
	icon_state = "kemble"
	item_state = "kemble"

/obj/item/clothing/head/helmet/f13/ncr/trailranger/kemble
	name = "ranger's slouch hat"
	desc = "A comfortable slouch hat, reinforced with ballistic fibres. Although it has the remnants of a pair of night vision goggles still strapped to it, they're non-functional..."
	icon_state = "kemble"
	item_state = "kemble"
	actions_types = list(/datum/action/item_action/toggle)

/obj/item/clothing/head/helmet/f13/ncr/trailranger/kemble/attack_self(mob/user)
	weldingvisortoggle(user)
	icon_state = "kembleup"
	item_state = "kembleup"

/obj/item/storage/belt/holster/kemble
	name = "ranger overcoat"
	desc = "An insulated coat taken from a set of riot gear. This one is apparently reversible (alt-click to toggle colours)."
	icon_state = "kemblecoat_green"
	item_state = "kemblecoat_green"
	alternate_worn_layer = HAIR_LAYER-1

/obj/item/storage/belt/holster/kemble/AltClick(mob/user)
	..()
	if(icon_state == "kemblecoat_green")
		icon_state = "kemblecoat_tan"
		item_state = "kemblecoat_tan"
		to_chat(user, "You reverse the coat to show the tan side.")
	else
		icon_state = "kemblecoat_green"
		item_state = "kemblecoat_green"
		to_chat(user, "You reverse the coat to show the green side.")

/obj/item/clothing/gloves/f13/military/carl
	desc = "Gloves with an insulating layer for working around chemicals and in hazardous environments. These appear to be from an old army depot."
	//Incredible utility, as it lacks almost all protection.
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100, "wound" = 0)
	resistance_flags = FIRE_PROOF | ACID_PROOF
	rad_flags = RAD_PROTECT_CONTENTS | RAD_NO_CONTAMINATE
	heat_protection = HANDS
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT

/obj/item/clothing/shoes/f13/military/leather/carl
	desc = "Boots with an insulating layer for working around chemicals and in hazardous environments. These appear to be from an old army depot."
	//Incredible utility, as it lacks almost all protection.
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100, "wound" = 0)
	resistance_flags = FIRE_PROOF | ACID_PROOF
	rad_flags = RAD_PROTECT_CONTENTS | RAD_NO_CONTAMINATE
	heat_protection = FEET
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT

/obj/item/clothing/under/f13/ranger/modif_ranger/carl
	desc = "A uniform with an insulating layer for working around chemicals and in hazardous environments. These appear to be from an old army depot."
	//No protection at all. Above should cover everything, and being naked shouldn't provide any protection as the character this is intended for.
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "wound" = 0)

/obj/item/card/id/rusted/brokenholodog/carl
	name = "old holotag"
	desc = "An old advanced holographic dogtag. Kept as a reminder to something."
