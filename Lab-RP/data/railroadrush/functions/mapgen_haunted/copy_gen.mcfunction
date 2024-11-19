
tellraw @s "[§6Dev§f] §bBegan generating a Rail Road Rush map §ccopy to all team zones"
tellraw @s ["§f[§6Dev§f] ","§b种子为: ",{"storage":"rrr:gen","nbt":"seed","color":"white"}]
# BETA


# generate a sequence
#execute store result storage rrr:gen seed int 1 run scoreboard players get seed rrr_game

#execute store result score seed rrr_game run data get storage rrr:gen seed

function railroadrush:mapgen_haunted/copy/1
schedule function railroadrush:mapgen_haunted/copy/2 3s
schedule function railroadrush:mapgen_haunted/copy/3 6s
schedule function railroadrush:mapgen_haunted/copy/4 9s
schedule function railroadrush:mapgen_haunted/copy/5 12s
schedule function railroadrush:mapgen_haunted/copy/6 15s
schedule function railroadrush:mapgen_haunted/copy/7 18s


