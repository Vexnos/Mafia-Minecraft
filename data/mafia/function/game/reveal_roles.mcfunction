# Reveal Mafia
title @a[tag=mafia] title {"text":"The Mafia","color":"red"}
tellraw @a[tag=mafia] [{"text":"You are the","color":"gray"},{"text":" Mafia","color":"red"},{"text":". You must mark one player per round to kill them, they die at the end of the round. If you mark a player who was protected by the","color":"gray"},{"text":" Splash","color":"blue"},{"text":", they will not die and will know if they were marked.","color":"gray"}]

# Reveal Doctor
title @a[tag=doctor] title {"text":"The Doctor","color":"blue"}
tellraw @a[tag=doctor] [{"text":"You are the","color":"gray"},{"text":" Splash","color":"blue"},{"text":". You can choose one player to protect from the Spark per round, if they get marked by the"},{"text":" Spark ","color":"red"},{"text":"and you protect them, only they [the player who was marked] will know if they were marked by the Spark, you will not. A player will not know if you protect them. You cannot protect yourself.","color":"gray"}]

# Reveal Sheriff
title @a[tag=sheriff] title {"text":"The Sheriff","color":"gold"}
tellraw @a[tag=sheriff] [{"text":"You are the","color":"gray"},{"text":" Splash","color":"blue"},{"text":". You can choose one player to protect from the Spark per round, if they get marked by the"},{"text":" Spark ","color":"red"},{"text":"and you protect them, only they [the player who was marked] will know if they were marked by the Spark, you will not. A player will not know if you protect them. You cannot protect yourself.","color":"gray"}]

# Reveal Townsfolk
title @a[tag=town] title {"text":"A Townsfolk","color":"green"}
tellraw @a[tag=town] [{"text":"You are a","color":"gray"},{"text":" Match","color":"yellow"},{"text":". You must uncover the","color":"gray"},{"text":" Spark ","color":"red"},{"text":"by using your reasoning, wit and social deduction while surviving to vote out the Spark.","color":"gray"}]

# Clear Temporary Blindness
effect clear @a blindness

execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s

# Start the Round
# function matchbox:round/start