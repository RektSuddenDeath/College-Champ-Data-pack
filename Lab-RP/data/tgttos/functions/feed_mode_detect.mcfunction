
execute as @a[team=!spec,gamemode=!spectator,tag=tgttos_holding_seeds,nbt=!{SelectedItem:{id:"minecraft:wheat_seeds"}}] at @s if score @s dropseed matches 0 if entity @e[type=chicken,nbt=!{InLove:0},distance=0..7] run scoreboard players set @s tgttos_finish 1
tag @a remove tgttos_holding_seeds
scoreboard players set @a dropseed 0


execute as @a[team=!spec,gamemode=!spectator,nbt={SelectedItem:{id:"minecraft:wheat_seeds"}}] run tag @s add tgttos_holding_seeds
execute as @a[team=!spec,gamemode=!spectator,nbt={Inventory:[{Slot:-106b,id:"minecraft:wheat_seeds"}]}] run tag @s add tgttos_holding_seeds