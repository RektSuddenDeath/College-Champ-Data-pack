 
 # To cache anything related to reviving.
scoreboard objectives remove SotReviving
scoreboard objectives add SotReviving dummy

execute if score RedDeaths SotGame matches 1.. if entity @p[team=red,scores={SotSandUseRevive=1..}] run function sot:revive/red
execute if score BlueDeaths SotGame matches 1.. if entity @p[team=blue,scores={SotSandUseRevive=1..}] run function sot:revive/blue
execute if score GreenDeaths SotGame matches 1.. if entity @p[team=green,scores={SotSandUseRevive=1..}] run function sot:revive/green
execute if score YellowDeaths SotGame matches 1.. if entity @p[team=yellow,scores={SotSandUseRevive=1..}] run function sot:revive/yellow
execute if score CyanDeaths SotGame matches 1.. if entity @p[team=cyan,scores={SotSandUseRevive=1..}] run function sot:revive/cyan
execute if score PinkDeaths SotGame matches 1.. if entity @p[team=pink,scores={SotSandUseRevive=1..}] run function sot:revive/pink
execute if score OrangeDeaths SotGame matches 1.. if entity @p[team=orange,scores={SotSandUseRevive=1..}] run function sot:revive/orange
execute if score PurpleDeaths SotGame matches 1.. if entity @p[team=purple,scores={SotSandUseRevive=1..}] run function sot:revive/purple

scoreboard players set @a SotSandUseRevive 0
execute if score gameflag SotGame matches 1 run schedule function sot:revive/valid 2t