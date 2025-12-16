# Count the amount of players
execute as @a run scoreboard players add #players players 1

# Assign roles
# One Mafia below 7 players
execute if score #players players matches 1..7 run tag @a[sort=random,limit=1] add mafia
# Two Mafias above 8 players
execute if score #players players matches 8.. run tag @a[sort=random,limit=2] add mafia

tag @a[sort=random,tag=!mafia,limit=1] add sheriff
tag @a[sort=random,tag=!mafia,tag=!sheriff,limit=1] add doctor
tag @a[tag=!mafia,tag=!sheriff,tag=!doctor] add town

# Count the amount of mafias and townsfolk
execute as @a[tag=mafia] run scoreboard players add #mafias mafias 1
scoreboard players operation #towns towns = #players players
scoreboard players operation #towns towns -= #mafias mafias

# Give each player a unique id
tag @a[sort=random,limit=1,tag=!out] add player1
tag @a[sort=random,limit=1,tag=!out,tag=!player1] add player2
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2] add player3
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2,tag=!player3] add player4
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2,tag=!player3,tag=!player4] add player5
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2,tag=!player3,tag=!player4,tag=!player5] add player6
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2,tag=!player3,tag=!player4,tag=!player5,tag=!player6] add player7
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2,tag=!player3,tag=!player4,tag=!player5,tag=!player6,tag=!player7] add player8
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2,tag=!player3,tag=!player4,tag=!player5,tag=!player6,tag=!player7,tag=!player8] add player9

# Reveal roles
scoreboard players set #countdown countdown 3
effect give @a blindness infinite 0 true
function mafia:game/countdown/countdown