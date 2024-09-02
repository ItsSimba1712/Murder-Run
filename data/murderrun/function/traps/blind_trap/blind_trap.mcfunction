# Particle
	particle minecraft:falling_dust{block_state:{Name:gray_concrete}} ~ ~ ~ 0.3 0.3 0.3 0 1 force @a[distance=..20]

# If Seeker Steps on Trap
	execute if entity @e[team=seekers,distance=..0.7] run function murderrun:traps/blind_trap/activate_blind_trap

# If Hider Sneaks on Trap
	execute if entity @e[team=hiders,distance=..0.5,scores={sneakTime=1..}] run data merge entity @s {PickupDelay:0}