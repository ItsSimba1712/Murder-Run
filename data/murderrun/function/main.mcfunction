# Traps
	# Glow Trap
		# /give @p glowstone[custom_name='["",{"text":"Glow Trap","color":"yellow","bold":true,"italic":false}]',lore=['["", {"text":"When stepped on, makes the Seeker glow.","color":"white","italic":false}]']]
		execute if entity @e[tag=!glowTrap,type=item,nbt={OnGround: 1b, Item: {components: {"minecraft:lore": ['{"extra":[{"color":"white","italic":false,"text":"When stepped on, makes the Seeker glow."}],"text":""}'], "minecraft:custom_name": '{"extra":[{"bold":true,"color":"yellow","italic":false,"text":"Glow Trap"}],"text":""}'}, id: "minecraft:glowstone"}}] as @e[tag=!glowTrap,type=item,nbt={OnGround: 1b, Item: {components: {"minecraft:lore": ['{"extra":[{"color":"white","italic":false,"text":"When stepped on, makes the Seeker glow."}],"text":""}'], "minecraft:custom_name": '{"extra":[{"bold":true,"color":"yellow","italic":false,"text":"Glow Trap"}],"text":""}'}, id: "minecraft:glowstone"}}] run function murderrun:traps/glow_trap/set_glow_trap
		execute if entity @e[tag=glowTrap] as @e[tag=glowTrap] at @s run function murderrun:traps/glow_trap/glow_trap

	# Levitation Trap
		# /give @p elytra[custom_name='["",{"text":"Levitation Trap","color":"white","bold":true,"italic":false}]',lore=['["", {"text":"When stepped on, causes the Seeker to float.","color":"white","italic":false}]']]
		execute if entity @e[tag=!levitationTrap,type=item, nbt={OnGround: 1b, Item: {components: {"minecraft:lore": ['{"extra":[{"color":"white","italic":false,"text":"When stepped on, causes the Seeker to float."}],"text":""}'], "minecraft:custom_name": '{"extra":[{"bold":true,"color":"white","italic":false,"text":"Levitation Trap"}],"text":""}'}, id: "minecraft:elytra"}}] as @e[tag=!levitationTrap, type=item,nbt={OnGround: 1b, Item: {components: {"minecraft:lore": ['{"extra":[{"color":"white","italic":false,"text":"When stepped on, causes the Seeker to float."}],"text":""}'], "minecraft:custom_name": '{"extra":[{"bold":true,"color":"white","italic":false,"text":"Levitation Trap"}],"text":""}'}, id: "minecraft:elytra"}}] run function murderrun:traps/levitation_trap/set_levitation_trap
		execute if entity @e[tag=levitationTrap] as @e[tag=levitationTrap] at @s run function murderrun:traps/levitation_trap/levitation_trap

	# Blind Trap
		# /give @p minecraft:fermented_spider_eye[custom_name='["",{"text":"Blind Trap","color":"gray","bold":true,"italic":false}]',lore=['["", {"text":"When stepped on, gives the Seeker blindness.","color":"white","italic":false}]']]
		execute if entity @e[tag=!blindTrap,type=item, nbt={OnGround: 1b, Item: {components: {"minecraft:lore": ['{"extra":[{"color":"white","italic":false,"text":"When stepped on, gives the Seeker blindness."}],"text":""}'], "minecraft:custom_name": '{"extra":[{"bold":true,"color":"gray","italic":false,"text":"Blind Trap"}],"text":""}'}, id: "minecraft:fermented_spider_eye"}}] as @e[tag=!blindTrap, type=item,nbt={OnGround: 1b, Item: {components: {"minecraft:lore": ['{"extra":[{"color":"white","italic":false,"text":"When stepped on, gives the Seeker blindness."}],"text":""}'], "minecraft:custom_name": '{"extra":[{"bold":true,"color":"gray","italic":false,"text":"Blind Trap"}],"text":""}'}, id: "minecraft:fermented_spider_eye"}}] run function murderrun:traps/blind_trap/set_blind_trap
		execute if entity @e[tag=blindTrap] as @e[tag=blindTrap] at @s run function murderrun:traps/blind_trap/blind_trap

# Scoreboard Resets (end of file)
	execute if entity @a[scores={sneakTime=1..}] run scoreboard players reset @a[scores={sneakTime=1..}] sneakTime
