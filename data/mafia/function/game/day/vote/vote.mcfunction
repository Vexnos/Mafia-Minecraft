# execute as @a at @s run playsound matchbox:votingtime master @s

# TP players to Voting Booths

# Reset the vote scoreboard from the previous vote
scoreboard players reset * vote
execute as @a[tag=!out] run function gui.maker:username
schedule function mafia:game/day/vote/election 5s