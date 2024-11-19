
# Updates Rankings
execute if score lobby tourney_stats matches 1 run function utils:personal/update

# Pushes player rankings
execute as @a[scores={personalscore=1..}] run function utils:personal/get

# Cleanup
scoreboard players set @a personalscore 0
scoreboard players enable @a personalscore

schedule function utils:personal/request 10t