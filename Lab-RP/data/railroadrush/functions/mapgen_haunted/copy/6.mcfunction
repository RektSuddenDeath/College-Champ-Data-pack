
tellraw @a "[§6Dev§f] §bGenerating §fZone #7"

kill @e[type=marker,tag=railroadrush_mapgenanch]
#summon marker 74897 101 74872 {Tags:["railroadrush_mapgenanch"]}
summon marker 80000 101 80276 {Tags:["railroadrush_mapgenanch"]}

scoreboard objectives add railroadrush_gen dummy
scoreboard players set @e[type=marker,tag=railroadrush_mapgenanch] railroadrush_gen 0

function railroadrush:mapgen_haunted/reset_sequence with storage rrr:gen
function railroadrush:mapgen_haunted/loop