
tellraw @s "[§6Dev§f] §bBegan generating a Rail Road Rush map"

# BETA
kill @e[type=marker,tag=railroadrush_mapgenanch]
#summon marker 74897 101 74872 {Tags:["railroadrush_mapgenanch"]}
summon marker 80000 101 80000 {Tags:["railroadrush_mapgenanch"]}

scoreboard objectives add railroadrush_gen dummy
scoreboard players set @e[type=marker,tag=railroadrush_mapgenanch] railroadrush_gen 0

# generate a sequence
execute store result storage rrr:gen seed int 1 run random value -20000000..20000000
tellraw @a ["§f[§6Dev§f] ","§b种子为: ",{"storage":"rrr:gen","nbt":"seed","color":"white"}]
execute store result score seed rrr_game run data get storage rrr:gen seed

function railroadrush:mapgen_haunted/loop