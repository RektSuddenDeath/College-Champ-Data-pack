
execute if entity @p[team=red,scores={SotSandUse=1..}] run function sot:time/redadd
execute if entity @p[team=blue,scores={SotSandUse=1..}] run function sot:time/blueadd
execute if entity @p[team=green,scores={SotSandUse=1..}] run function sot:time/greenadd
execute if entity @p[team=yellow,scores={SotSandUse=1..}] run function sot:time/yellowadd
execute if entity @p[team=cyan,scores={SotSandUse=1..}] run function sot:time/cyanadd
execute if entity @p[team=pink,scores={SotSandUse=1..}] run function sot:time/pinkadd
execute if entity @p[team=orange,scores={SotSandUse=1..}] run function sot:time/orangeadd
execute if entity @p[team=purple,scores={SotSandUse=1..}] run function sot:time/purpleadd

scoreboard players set @a SotSandUse 0

execute if score gameflag SotGame matches 1 run schedule function sot:time/valid 1t