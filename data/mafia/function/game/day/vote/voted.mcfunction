gamemode spectator @s
tag @s add out
execute as @s[tag=mafia] run scoreboard players remove #mafias mafias 1
execute as @s[tag=town] run scoreboard players remove #towns towns 1
execute as @a run scoreboard players remove #players players 1
title @a title [{"selector":"@s","color":"gold"},{"text":" was voted!","color":"dark_green"}]
execute if score @s vote matches 1 run title @a subtitle [{"text":"With ","color":"dark_green"},{"score":{"name":"@s","objective":"vote"},"color":"gold"},{"text":" vote","color":"dark_green"}]
execute if score @s vote matches 2.. run title @a subtitle [{"text":"With ","color":"dark_green"},{"score":{"name":"@s","objective":"vote"},"color":"gold"},{"text":" votes","color":"dark_green"}]
execute as @a at @s run playsound matchbox:voted master @s