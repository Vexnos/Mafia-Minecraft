# Scoreboards
scoreboard players reset * vote
scoreboard players set #players players 0
scoreboard players set #mafias mafias 0
scoreboard players set #towns towns 0
scoreboard players reset #countdown countdown

# Clear Schedules
schedule clear mafia:game/countdown/countdown
schedule clear mafia:game/countdown/youare
schedule clear mafia:game/day/vote/vote
schedule clear mafia:game/day/vote/election
schedule clear mafia:game/reveal_roles

# Advancements
advancement revoke @a only mafia:vote

# Remove Tags
tag @a remove out
tag @a remove mafia
tag @a remove doctor
tag @a remove sheriff
tag @a remove town
tag @a remove player1
tag @a remove player2
tag @a remove player3
tag @a remove player4
tag @a remove player5
tag @a remove player6
tag @a remove player7
tag @a remove player8
tag @a remove player9

# Gamemode
# gamemode adventure @a

# Clear Inventories
clear @a