# Traps
	# Glow Trap
		# /give @p glowstone[custom_name='["",{"text":"Glow Trap","color":"yellow","bold":true,"italic":false}]',lore=['["", {"text":"When stepped on, makes the Seeker glow.","color":"white","italic":false}]']]
		execute if entity @e[tag=!glowTrap,type=item,nbt={OnGround: 1b, Item: {components: {"minecraft:lore": ['{"extra":[{"color":"white","italic":false,"text":"When stepped on, makes the Seeker glow."}],"text":""}'], "minecraft:custom_name": '{"extra":[{"bold":true,"color":"yellow","italic":false,"text":"Glow Trap"}],"text":""}'}, id: "minecraft:glowstone"}}] as @e[tag=!glowTrap,type=item,nbt={OnGround: 1b, Item: {components: {"minecraft:lore": ['{"extra":[{"color":"white","italic":false,"text":"When stepped on, makes the Seeker glow."}],"text":""}'], "minecraft:custom_name": '{"extra":[{"bold":true,"color":"yellow","italic":false,"text":"Glow Trap"}],"text":""}'}, id: "minecraft:glowstone"}}] at @s run function murderrun:traps/glow_trap/set_glow_trap
		execute if entity @e[tag=glowTrap] as @e[tag=glowTrap] at @s run function murderrun:traps/glow_trap/glow_trap


# Scoreboard Resets (end of file)
	execute if entity @a[scores={sneakTime=1..}] run scoreboard players reset @a[scores={sneakTime=1..}] sneakTime