/obj/item/weapon/grenade/light
	name = "photon capsule"
	desc = "A capsule that functions like a grenade. Designed to illuminate an area without the use of a flame or electronics, regardless of the atmosphere."
	icon_state = "photoncapsule"
	item_state = "flashbang"
	det_time = 20

/obj/item/weapon/grenade/light/detonate()
	..()
	var/lifetime = rand(3 MINUTES, 4 MINUTES)
	var/light_colour = pick("#49f37c", "#fc0f29", "#599dff", "#fa7c0b", "#fef923", "#ff80ee", "#54f4fa")

	playsound(src, 'sound/effects/snap.ogg', 80, 1)
	audible_message("<span class='warning'>\The [src] detonates with a sharp crack!</span>")
	set_light(12, 1.5, light_colour)
	QDEL_IN(src, lifetime)