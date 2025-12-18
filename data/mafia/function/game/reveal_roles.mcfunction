# Reveal Mafia
title @a[tag=mafia] title {"text":"The Mafia","color":"red"}
tellraw @a[tag=mafia] [{"text":"You are the","color":"gray"},{"text":" Mafia","color":"red"},{"text":". You and your Mafia cohorts must select ONE player per night to kill them. If you select a player who is protected by the","color":"gray"},{"text":" Doctor","color":"blue"},{"text":", they will not die and only they will know if someone tried to kill them.","color":"gray"}]

# Reveal Doctor
title @a[tag=doctor] title {"text":"The Doctor","color":"blue"}
tellraw @a[tag=doctor] [{"text":"You are the","color":"gray"},{"text":" Doctor","color":"blue"},{"text":". You can choose one player to protect from the Mafia per night, if they are targeted by the"},{"text":" Mafia ","color":"red"},{"text":"and you protect them, only they [the player who was targeted] will know if they were targeted by the Mafia. A player will not know if you protect them. You cannot protect the same player twice in a row, you can protect yourself.","color":"gray"}]

# Reveal Sheriff
title @a[tag=sheriff] title {"text":"The Sheriff","color":"gold"}
tellraw @a[tag=sheriff] [{"text":"You are the","color":"gray"},{"text":" Sheriff","color":"gold"},{"text":". You can choose to investigate one player per night, telling you if they're clean or not.",color:"gray"}]

# Reveal Townsfolk
title @a[tag=town] title {"text":"A Townsfolk","color":"dark_aqua"}
tellraw @a[tag=town] [{"text":"You are a regular","color":"gray"},{"text":" Townsfolk","color":"dark_aqua"},{"text":". You must uncover the","color":"gray"},{"text":" Mafia ","color":"red"},{"text":"by using your reasoning, wit and social deduction skills while surviving to vote out them out in the day.","color":"gray"}]

# Clear Temporary Blindness
effect clear @a blindness

execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s

# Start the Round
function mafia:game/spawn