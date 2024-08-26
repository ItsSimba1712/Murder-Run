# Delete Item
	kill @s

# Give Effect to Seeker
	effect give @e[team=seekers] minecraft:glowing 7 0 true

# Message Other Hiders
	tellraw @a[team=hiders] {"text":"Glow Trap Activated!","color":"yellow","bold":true}

# Play 'Ding' Sound
	playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1 1