# Scoreboards
scoreboard players reset * vote
scoreboard players set #players players 0
scoreboard players set #mafias mafias 0
scoreboard players set #towns towns 0
scoreboard players reset #countdown countdown

# Advancements
advancement revoke @a only mafia:vote

# Remove Tags
tag @a remove out
tag @a remove mafia
tag @a remove doctor
tag @a remove sheriff
tag @a remove town

# Gamemode
gamemode adventure @a

# Clear Inventories
clear @a