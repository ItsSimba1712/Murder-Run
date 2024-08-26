# Command: 
	# function murderrun:commands/setup

# Create Teams
	team add hiders {"text":"Hiders","color":"aqua","bold":true}
	team add seekers {"text":"Seekers","color":"dark_red","bold":true}

# Hider Settings
	team modify hiders color aqua
	team modify hiders collisionRule pushOwnTeam
	team modify hiders deathMessageVisibility hideForOtherTeams
	team modify hiders friendlyFire false
	team modify hiders nametagVisibility hideForOtherTeams
	team modify hiders prefix [{"text":"[","color":"dark_gray","bold":true},{"text":"Hider","color":"aqua","bold":true},{"text":"] ","color":"dark_gray","bold":true}]
	team modify hiders seeFriendlyInvisibles true

# Seeker Settings
	team modify seekers color dark_red
	team modify seekers collisionRule pushOwnTeam
	team modify seekers friendlyFire false
	team modify seekers nametagVisibility hideForOtherTeams
	team modify seekers prefix [{"text":"[","color":"dark_gray","bold":true},{"text":"Seeker","color":"dark_red","bold":true},{"text":"] ","color":"dark_gray","bold":true}]


# Scoreboard Objectives
	# Hiders List
		scoreboard objectives add hidersList dummy
		scoreboard objectives setdisplay sidebar hidersList
		scoreboard objectives modify hidersList displayname {"text":"Run...","color":"dark_red","bold":true}
		scoreboard players set §e§lAlive hidersList 0
		scoreboard players set §e§l---------- hidersList -1

	# Sneak Time
		scoreboard objectives add sneakTime minecraft.custom:minecraft.sneak_time

# After Load
	tellraw @a {"text":"Setup Function Loaded","color":"yellow","bold":true}