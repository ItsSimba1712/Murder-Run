# Delete Item
	kill @s

# Give Effect to Seeker
	effect give @e[team=seekers] minecraft:glowing 7 0 true

# Message Other Hiders
	tellraw @a[team=hiders] {"text":"Glow Trap Activated!","color":"yellow","bold":true}

# Play 'Ding' Sound
	execute as @a[team=hiders] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1