
scoreboard players set RoundActive tourney_stats 1

scoreboard players set ingame pkw_game 1
schedule clear master:timer/starting/sec
# Determines if this run is Timed
execute if score timed pkw_game matches 1 run schedule function parkourwarrior:end 600s
function parkourwarrior:scoreboard/start

# Enables checkpoints
function parkourwarrior:checkpoint/ctrl

# Removes Barriers
fill -4009 117 -4025 -3997 133 -4025 air

# Notice Related
title @a title ""
title @a subtitle ""
execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 2
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1